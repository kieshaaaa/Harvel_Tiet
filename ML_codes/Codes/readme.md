# **Code Translation and Evaluating their Similarity**

This repository contains multiple **notebooks and models** used for **code translation and evaluating their similarity** tasks, specifically converting **Verilog code** to **C code**. Below is a detailed description of each notebook, its input, output, and purpose.

---

## **1. Fairseq**

- **Notebook:** `Fairseq.ipynb`
- **Input:**
  - `train.src`, `train.tgt` → Training data (Verilog to C code pairs)
  - `test.src`, `test.tgt` → Test data for evaluation
- **Description:**
  - Uses the **Fairseq model**.
  - Fine-tunes the model on the **training data**.
  - Predicts the **C code** for the `test.src` input.
- **Output:**
  - Generated **C code predictions** for the test samples.

---

## **2. CodeT5**

- **Notebook:** `Codet5.ipynb`
- **Input:**
  - `train.src`, `train.tgt` → Training data
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Uses the **CodeT5-small model**.
  - Fine-tunes the model on the **training dataset**.
  - Predicts the **C code** for the `test.src` input.
- **Output:**
  - Generated **C code predictions** for the test samples.

---

## **3. CodeT5 with 30 Samples**

- **Notebook:** `codet5_30samples_code.ipynb`
- **Input:**
  - `train1.src`, `train1.tgt` → Training data
  - `test1.src`, `test1.tgt` → Test data with **30 samples** for better performance evaluation
- **Description:**
  - Uses the **CodeT5-small model** with more test samples to **enhance performance evaluation**.
  - Outputs the first **5 codes** in the same terminal cell output.
  - Exports all predictions into a CSV file.
- **Output:**
  - **Terminal Output:** Displays 5 predictions.
  - **CSV File:** `codet5_30samples_output.csv` with all predictions.

---

## **4. Fairseq (Refined Version)**

- **Notebook:** `fairseq (1).ipynb`
- **Input:**
  - `train.src`, `train.tgt` → Training data
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Same as the previous **Fairseq notebook**, but with improved fine-tuning parameters.
  - Tested to check if there were **errors in the previous Fairseq model**.
  - However, the outputs were **similar** and not better than **CodeT5**.
- **Output:**
  - **C code predictions** similar to the previous Fairseq model.

---

## **5. Mistral (Out of Memory)**

- **Notebook:** `mistral (1).ipynb`
- **Input:**
  - `train.src`, `train.tgt` → Training data
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Uses the **Mistral model** (a large language model).
  - Attempts fine-tuning, but fails due to **out of memory errors** caused by limited GPU memory.
- **Output:**
  - **Error:** Out of memory.

---

## **6. Mistral (Quantized)**

- **Notebook:** `mistral_quantized.ipynb`
- **Input:**
  - `train.src`, `train.tgt` → Training data
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Uses the **quantized version of Mistral** to reduce memory usage.
  - However, even the quantized model requires **high GPU memory**, making fine-tuning infeasible.
- **Output:**
  - **Error:** Out of memory.

---

## **7. Qwen Encoder**

- **Notebook:** `qwencoder-run-again.ipynb`
- **Input:**
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Fine-tuning **Qwen Encoder** results in **memory outbounds**, similar to Mistral, due to it being a large LLM.
  - Therefore, the model is used **without fine-tuning**.
  - Generates **C code predictions** directly using the pre-trained model.
- **Output:**
  - **Folder:** Contains all the **C code predictions**.

---

## **8. Qwen-Coder Semantic Similarity**

- **Notebook:** `qwen-coder-semantic_similarity.ipynb`
- **Input:**
  - `test.src`, `test.tgt` → Test data
- **Description:**
  - Uses the **Qwen Encoder** for code translation.
  - Also calculates the **semantic similarity** between the predicted C code and the target C code.
  - Saves the predictions and similarity scores.
- **Output:**
  - **Folder:** Contains all the **C code predictions**.
  - **CSV File:** Contains the **semantic similarity scores**.
  - Also displays the output in the notebook.

---

## **9. Qwen Encoder with 30 Samples**

- **Notebook:** `qwencoder_30samples_code.ipynb`
- **Input:**
  - `test.src`, `test.tgt` → Test data with **30 samples**
- **Description:**
  - Similar to the previous **Qwen Encoder** notebook but with more samples for **better evaluation**.
  - Generates predictions and calculates **semantic similarity**.
- **Output:**
  - **Folder:** Contains all the **C code predictions**.
  - **CSV File:** Contains the **semantic similarity scores**.
  - Also displays the output in the notebook.

---

## **10. Qwen Code 1 by 1**

* **Script/Notebook:** `qwen_code1by1.py` 
* **Input:**

  * Verilog code samples provided as plain **text**
  * Input CSV: `Output/qwen_summary.csv`
* **Description:**

  * Runs **Qwen-Coder** model on each sample **sequentially** to avoid **memory out-of-bounds** errors caused by large input batches.
  * Accepts Verilog code directly and outputs the corresponding **terminal responses**.
  * Improved prompt engineering applied to enhance results.
* **Output:**

  * CSV: `Output/qwen_summary.csv` → Original outputs
  * CSV: `Output/qwen_summary_improved.csv` → With improved prompts and predictions
  * CSV: `Output/qwen_manually_summary_htt_database.csv` → For AES Trojan codes from ht dataset. [`LINK of ht database`](https://www.scidb.cn/en/detail?dataSetId=151ed5eb826e4cc9950e23999383202f). 


---

## **11. Code Summary and Similarity (Gemini)**

* **Notebook:** `CodeSummaryAndSimilarityGemini.ipynb`
* **Input:**

  * CSV file containing:

    * **Predicted C code**
    * **Target C code**
* **Description:**

  * Uses **Gemini API** to generate summaries for both predicted and target C code.
  * Compares the summaries to compute a **similarity score (0 to 5)** for each pair.
  * Helps evaluate **semantic alignment** between model output and ground truth.
* **Output:**

  * CSV file with:

    * Code summaries
    * Similarity score (1–5 scale) for each sample
* **Note:**

  * Make sure to **replace the Gemini API key** in the notebook with your own key before running.

---



📄 Data Location
The input files mentioned above can be found at:

 [`Reverse-Engineering/RevEngg_Project_Data/Train_1375_Test_5_data`](../../RevEngg_Project_Data/Train_1375_Test_5_data)

Make sure to place the following files in the same directory as the notebooks:

`train.src`, `train.tgt`

`test.src`, `test.tgt`
