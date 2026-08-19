import pandas as pd
from datasets import Dataset, load_dataset
import torch
import torch.nn as nn
import torch.nn.functional as F
from transformers import T5ForConditionalGeneration, T5Tokenizer, T5Config, TrainingArguments, Trainer,AutoModel, AutoTokenizer,AutoModelForSeq2SeqLM

# Define paths to the .src and .tgt files
src_file = '/content/drive/MyDrive/train.src'
tgt_file = '/content/drive/MyDrive/train.tgt'

# Read the files into pandas DataFrames
with open(src_file, 'r', encoding='utf-8') as f:
    src_lines = f.readlines()

with open(tgt_file, 'r', encoding='utf-8') as f:
    tgt_lines = f.readlines()

# Ensure both files have the same number of lines
assert len(src_lines) == len(tgt_lines), "Source and target files must have the same number of lines."

# Create a DataFrameTo build an encoder that takes an input sentence of length 2000 and outputs a fixed length of 512, which can then be passed to the encoder of a pretrained CodeT5 model, you can follow these steps:
data_train = {'input_text': src_lines, 'target_text': tgt_lines}
df_train = pd.DataFrame(data_train)

# Convert the DataFrame to a Hugging Face Dataset
dataset_train = Dataset.from_pandas(df_train)

import torch
import torch.nn as nn
import torch.nn.functional as F

class ConvolutionalReducer(nn.Module):
    def __init__(self, vocab_size, embedding_dim, output_length):
        super(ConvolutionalReducer, self).__init__()
        self.embedding = nn.Embedding(vocab_size, embedding_dim)

        # Define convolutional and pooling layers
        self.conv1 = nn.Conv1d(embedding_dim, 128, kernel_size=5, stride=1, padding=2)
        self.pool1 = nn.MaxPool1d(kernel_size=2, stride=2)

        self.conv2 = nn.Conv1d(128, 256, kernel_size=5, stride=1, padding=2)
        self.pool2 = nn.MaxPool1d(kernel_size=2, stride=2)

        self.conv3 = nn.Conv1d(256, 512, kernel_size=5, stride=1, padding=2)
        self.pool3 = nn.MaxPool1d(kernel_size=2, stride=2)

        self.conv4 = nn.Conv1d(512, 1024, kernel_size=5, stride=1, padding=2)
        self.pool4 = nn.MaxPool1d(kernel_size=2, stride=2)

        self.conv5 = nn.Conv1d(1024, 2048, kernel_size=5, stride=1, padding=2)
        self.pool5 = nn.MaxPool1d(kernel_size=2, stride=2)

        self.conv6 = nn.Conv1d(2048, 4096, kernel_size=5, stride=1, padding=2)
        self.pool6 = nn.MaxPool1d(kernel_size=2, stride=2)

        # Define the output linear layer to reduce to the desired output length
        # Adjusting the input size of the fully connected layer accordingly
        self.fc = nn.Linear(4096 * (input_length // (2 ** 6)), output_length)

    def forward(self, input_ids):
        # Embedding
        embedded = self.embedding(input_ids)  # [batch_size, seq_len, embedding_dim]

        # Reshape for convolution
        embedded = embedded.permute(0, 2, 1)  # [batch_size, embedding_dim, seq_len]

        # Apply convolutional and pooling layers
        x = self.pool1(F.relu(self.conv1(embedded)))
        x = self.pool2(F.relu(self.conv2(x)))
        x = self.pool3(F.relu(self.conv3(x)))
        x = self.pool4(F.relu(self.conv4(x)))
        x = self.pool5(F.relu(self.conv5(x)))
        x = self.pool6(F.relu(self.conv6(x)))

        # Flatten the tensor for the fully connected layer
        x = x.view(x.size(0), -1)  # [batch_size, 4096 * (seq_len // 64)]

        # Fully connected layer to get the final reduced output
        x = self.fc(x)  # [batch_size, output_length]

        return x


# Load original configuration and tokenizer
model_name = "Salesforce/codet5p-220m"
config = T5Config.from_pretrained(model_name)
pretrained_model = T5ForConditionalGeneration.from_pretrained(model_name, trust_remote_code=True)
tokenizer = AutoTokenizer.from_pretrained(model_name, trust_remote_code=True)

def linear_transform(value, min_value, max_value, new_min, new_max):
    # Compute the fraction of the original range
    fraction = (value - min_value) / (max_value - min_value)
    
    # Apply the fraction to the new range
    new_value = fraction * (new_max - new_min) + new_min
    
    return new_value

def transform_tensor(tensor, new_min, new_max):
    # Compute the min and max of the tensor
    min_value = torch.min(tensor)
    max_value = torch.max(tensor)
    
    row_size = tensor.shape[0]
    coloum_size = tensor.shape[1]
    
    # Create a tensor of zeros
    transformed_tensor = torch.zeros((row_size, coloum_size))
    
    # Apply linear transformation to each element in the tensor
    for i in range(row_size):
        for j in range(coloum_size):
            transformed_tensor[i, j] = linear_transform(tensor[i, j], min_value, max_value, new_min, new_max)
    
        
    # Convert the tensor to Long data type
    transformed_tensor = transformed_tensor.to(torch.long).to(device)

    return transformed_tensor

# Define a custom model that combines CNN and CodeT5
class CombinedModel(nn.Module):
    def __init__(self, cnn_model, code_t5_model):
        super(CombinedModel, self).__init__()
        self.cnn_model = cnn_model
        self.code_t5_model = code_t5_model



    def forward(self, cnn_input, attention_mask, labels):
        # Forward pass through CNN model
        cnn_output = self.cnn_model(cnn_input)
        # Apply transformation
        transformed_tensor = transform_tensor(cnn_output, 1, 32099)

        # Forward pass through CodeT5 model
        outputs = self.code_t5_model(input_ids=transformed_tensor, attention_mask=attention_mask, decoder_input_ids=labels, labels=labels)
        

        return outputs



# Hyperparameters
vocab_size = 32100  
embedding_dim = 768
input_length = 1024
output_length = 512

# Instantiate the model
cnn_model = ConvolutionalReducer(vocab_size, embedding_dim, output_length)
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
cnn_model.to(device)

# Print the model
print(cnn_model)
print('----------'*30)
print('----------'*30)
# Instantiate CombinedModel
combined_model = CombinedModel(cnn_model, pretrained_model)
combined_model.to(device)

# Print the combined model
print(combined_model)


# Tokenize the dataset
def preprocess_function(examples):
    inputs = [ex.strip() for ex in examples['input_text']]
    targets = [ex.strip() for ex in examples['target_text']]
    model_inputs = tokenizer(inputs, max_length=input_length, truncation=True, padding="max_length", return_tensors="pt")
    print(model_inputs['input_ids'].shape)
    print(model_inputs['attention_mask'].shape)

    # Truncate attention_mask to 512
    truncated_attention_mask = model_inputs['attention_mask'][:, :512]
    # Tokenize targets
    with tokenizer.as_target_tokenizer():
        labels = tokenizer(targets, max_length=512, truncation=True, padding="max_length",return_tensors="pt")
    # Update model_inputs with the truncated attention_mask and labels
    model_inputs["attention_mask"] = truncated_attention_mask
    model_inputs["labels"] = labels["input_ids"]
    model_inputs["decoder_input_ids"] = labels["input_ids"]

    print(model_inputs['input_ids'].shape)
    print(model_inputs['attention_mask'].shape)

    return model_inputs

tokenized_dataset_train = dataset_train.map(
            preprocess_function,
            batched=True,
            remove_columns=dataset_train.column_names,
            num_proc=1,
            load_from_cache_file=False,
       )


# Define optimizer
optimizer = torch.optim.Adam(combined_model.parameters(), lr=1e-5)



# Rename 'input_ids' to 'cnn_input' in your tokenized dataset
def rename_column(example):
    example['cnn_input'] = example.pop('input_ids')
    return example

# Apply the renaming function to the dataset
tokenized_dataset_train = tokenized_dataset_train.map(rename_column)

print(tokenized_dataset_train)

# Custom save model function to avoid memory sharing issues
def save_custom_model(model, save_directory, accelerator):
    os.makedirs(save_directory, exist_ok=True)
    model_to_save = model.module if hasattr(model, "module") else model
    
    # Get the complete state dict for the model
    state_dict = accelerator.get_state_dict(model_to_save)

    # Save the state dict
    torch.save(state_dict, os.path.join(save_directory, "pytorch_model.bin"))

# Define a custom trainer that overrides the save_model method
class CustomTrainer(Trainer):
    def __init__(self, accelerator, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.accelerator = accelerator

    def save_model(self, output_dir=None, _internal_call=False):
        if output_dir is None:
            output_dir = self.args.output_dir

        os.makedirs(output_dir, exist_ok=True)
        if self.model is not None:
            save_custom_model(self.model, output_dir, self.accelerator)
        else:
            logger.warning("Trainer.model is None, nothing to save.")

# Specify the directory to save checkpoints
save_dir = '/content/drive/My Drive/saved_models'

# Define the run_training function
def run_training(
    model,
    train_data,
    save_dir,
    epochs=10,
    batch_size_per_replica=2,  # Reduced batch size
    grad_acc_steps=8,  # Increased gradient accumulation steps
    lr=5e-5,
    lr_warmup_steps=200,
    log_freq=10,
    local_rank=-1,
    deepspeed=None,
    fp16=False
):
    print("Starting main loop")

    accelerator = Accelerator()
    model = accelerator.prepare(model)

    training_args = TrainingArguments(
        report_to='tensorboard',
        output_dir=save_dir,
        overwrite_output_dir=False,

        do_train=True,
        save_strategy='epoch',

        num_train_epochs=epochs,
        per_device_train_batch_size=batch_size_per_replica,
        gradient_accumulation_steps=grad_acc_steps,

        learning_rate=lr,
        weight_decay=0.05,
        warmup_steps=lr_warmup_steps,

        logging_dir=save_dir,
        logging_first_step=True,
        logging_steps=log_freq,
        save_total_limit=1,

        dataloader_drop_last=True,
        dataloader_num_workers=4,

        local_rank=local_rank,
        deepspeed=deepspeed,
        fp16=fp16,
    )

    trainer = CustomTrainer(
        accelerator=accelerator,
        model=model,
        args=training_args,
        train_dataset=train_data,
    )

    trainer.train()
    torch.cuda.empty_cache()  # Clear GPU cache

# Set training parameters
epochs = 10
batch_size_per_replica = 2 
grad_acc_steps = 8  
lr = 5e-5
lr_warmup_steps = 200
log_freq = 10
local_rank = -1
deepspeed = None
fp16 = False

# Run training
run_training(
    model=combined_model,
    train_data=tokenized_dataset_train,
    save_dir=save_dir,
    epochs=epochs,
    batch_size_per_replica=batch_size_per_replica,
    grad_acc_steps=grad_acc_steps,
    lr=lr,
    lr_warmup_steps=lr_warmup_steps,
    log_freq=log_freq,
    local_rank=local_rank,
    deepspeed=deepspeed,
    fp16=fp16
)
