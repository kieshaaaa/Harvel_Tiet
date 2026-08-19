import os
import sys
import subprocess

if len(sys.argv) != 3:
    print(f"Usage: python {sys.argv[0]} <input_root_folder> <output_folder>")
    sys.exit(1)

input_root_folder = sys.argv[1]
output_folder = sys.argv[2]

# Check if input folder exists
if not os.path.isdir(input_root_folder):
    print(f"Error: {input_root_folder} does not exist or is not a directory.")
    sys.exit(1)

# Create output folder if not exists
os.makedirs(output_folder, exist_ok=True)

# Iterate through each subfolder in the input root folder
for subfolder in sorted(os.listdir(input_root_folder)):
    subfolder_path = os.path.join(input_root_folder, subfolder)

    # Check if it's a directory
    if os.path.isdir(subfolder_path):
        print(f"Processing: {subfolder_path}")
        cmd = [
            "python", "preprocess_C_.py",
            "-input_folder", subfolder_path,
            "-output_folder", output_folder,
            "-db"
        ]
        subprocess.run(cmd)
    else:
        print(f"Skipping (not a directory): {subfolder_path}")

print("✅ Processing completed.")
