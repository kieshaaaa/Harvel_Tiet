import os
import pandas as pd

# Paths to your three folders
original_c_folder = "/home/sec-lab/Reverse-Engineering/RevEngg_Project_Data/Augmented_data/augmented_code_320"
preprocessed_c_folder = "/home/sec-lab/Reverse-Engineering/RevEngg_Project_Data/Augmented_data/clang_formated_c_codes_for_v"
verilog_folder = "/home/sec-lab/Reverse-Engineering/RevEngg_Project_Data/Augmented_data/preprocessed_v_codes"

# Output Excel file
output_excel = "combined_code.csv"

# List all files from folders
original_files = {os.path.splitext(f)[0]: f for f in os.listdir(original_c_folder) if f.endswith(".c")}
preprocessed_files = {os.path.splitext(f)[0]: f for f in os.listdir(preprocessed_c_folder) if f.endswith(".c")}
verilog_files = {os.path.splitext(f)[0]: f for f in os.listdir(verilog_folder) if f.endswith(".v")}

# Take only matching filenames across all 3 folders
common_names = sorted(set(original_files.keys()) & set(preprocessed_files.keys()) & set(verilog_files.keys()))

# Restrict to first 60 files
common_names = common_names[:60]

rows = []
for name in common_names:
    try:
        # Read files safely
        with open(os.path.join(original_c_folder, original_files[name]), "r", encoding="utf-8", errors="ignore") as f:
            original_code = f.read()

        with open(os.path.join(preprocessed_c_folder, preprocessed_files[name]), "r", encoding="utf-8", errors="ignore") as f:
            preprocessed_code = f.read()

        with open(os.path.join(verilog_folder, verilog_files[name]), "r", encoding="utf-8", errors="ignore") as f:
            verilog_code = f.read()

        # Append row
        rows.append({
            "Name_of_file": name,
            "Original_c_code": original_code,
            "Preprocessed_c_code": preprocessed_code,
            "Verilog_code": verilog_code
        })

    except Exception as e:
        print(f"Skipping {name}: {e}")

# Save to Excel
df = pd.DataFrame(rows, columns=["Name_of_file", "Original_c_code", "Preprocessed_c_code", "Verilog_code"])
df.to_csv(output_excel, index=False)

print(f"✅ Excel file saved as {output_excel} with {len(df)} rows")
