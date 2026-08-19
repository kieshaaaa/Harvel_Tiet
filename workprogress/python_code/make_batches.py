import os
import sys

def create_batches(input_file_path, num_lines_per_batch, output_folder):
    # Create the output folder if it does not exist
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    with open(input_file_path, 'r') as file:
        lines = file.readlines()

    # Calculate the total number of batches needed
    total_batches = (len(lines) + num_lines_per_batch - 1) // num_lines_per_batch

    for batch_num in range(1, total_batches + 1):
        # Calculate start and end indices for lines in the current batch
        start_idx = (batch_num - 1) * num_lines_per_batch
        end_idx = start_idx + num_lines_per_batch
        batch_lines = lines[start_idx:end_idx]

        # Construct the batch file name and path
        batch_file_name = f"batch{batch_num}.txt"
        batch_file_path = os.path.join(output_folder, batch_file_name)

        # Write the current batch of lines to the batch file
        with open(batch_file_path, 'w') as batch_file:
            batch_file.writelines(batch_lines)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py <path_to_input_file> <num_lines_per_batch> <output_folder>")
        sys.exit(1)

    input_file_path = sys.argv[1]
    num_lines_per_batch = int(sys.argv[2])
    output_folder = sys.argv[3]

    create_batches(input_file_path, num_lines_per_batch, output_folder)
