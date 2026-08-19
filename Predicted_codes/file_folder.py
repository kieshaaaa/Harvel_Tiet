import os
import shutil

def organize_c_files(input_folder, output_folder):
    # Create output folder if it doesn't exist
    os.makedirs(output_folder, exist_ok=True)

    # Loop through all files in input folder
    for filename in os.listdir(input_folder):
        if filename.endswith(".c"):
            # Get base name (without extension)
            base_name = os.path.splitext(filename)[0]

            # Create subfolder in output folder
            subfolder_path = os.path.join(output_folder, base_name)
            os.makedirs(subfolder_path, exist_ok=True)

            # Copy file into the subfolder
            src_path = os.path.join(input_folder, filename)
            dst_path = os.path.join(subfolder_path, filename)
            shutil.copy(src_path, dst_path)

            print(f"Copied {filename} → {subfolder_path}")

# Example usage
if __name__ == "__main__":
    input_folder = "/home/sec-lab/Reverse-Engineering/Predicted_codes/C_original_codes"   
    output_folder = "/home/sec-lab/AssignmentCopyChecker/Assignment/repo/C_original_code"
    organize_c_files(input_folder, output_folder)
