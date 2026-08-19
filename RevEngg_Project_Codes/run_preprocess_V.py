import os
import sys
import subprocess

def main():
    if len(sys.argv) != 3:
        print("Usage: python run_preprocess.py <root_input_folder> <output_folder>")
        sys.exit(1)

    root_input_folder = sys.argv[1]
    output_folder = sys.argv[2]

    # Ensure paths exist
    if not os.path.isdir(root_input_folder):
        print(f"Error: {root_input_folder} does not exist or is not a directory.")
        sys.exit(1)
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Loop through each subfolder in the root input folder
    for subfolder in os.listdir(root_input_folder):
        subfolder_path = os.path.join(root_input_folder, subfolder)
        if os.path.isdir(subfolder_path):
            print(f"Processing folder: {subfolder_path}")
            cmd = [
                "python3",
                "preprocess_V.py",
                "-input_folder", subfolder_path,
                "-output_folder", output_folder
            ]
            try:
                subprocess.run(cmd, check=True)
            except subprocess.CalledProcessError as e:
                print(f"Error processing {subfolder_path}: {e}")

if __name__ == "__main__":
    main()
