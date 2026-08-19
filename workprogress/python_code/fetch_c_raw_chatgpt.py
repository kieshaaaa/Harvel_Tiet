import os
import re
import sys

def extract_c_code(input_folder, output_folder):
    # Ensure the output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Regex pattern to match blocks of C code
    c_code_pattern = re.compile(r"```c(.*?)```", re.DOTALL)

    # Iterate over all files in the input folder
    for filename in os.listdir(input_folder):
        if filename.endswith('.txt'):
            input_file_path = os.path.join(input_folder, filename)

            # Read the content of the current file
            with open(input_file_path, 'r') as file:
                content = file.read()

                # Find all C code blocks in the file
                c_code_blocks = c_code_pattern.findall(content)

                # Generate output files for each C code block
                for index, block in enumerate(c_code_blocks, start=1):
                    output_filename = f"{filename.rsplit('.', 1)[0]}_sub{index}.c"
                    output_file_path = os.path.join(output_folder, output_filename)

                    with open(output_file_path, 'w') as output_file:
                        output_file.write(block.strip())
                        print(f"Extracted to {output_file_path}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_folder_path> <output_folder_path>")
        sys.exit(1)
    
    input_folder_path = sys.argv[1]
    output_folder_path = sys.argv[2]

    extract_c_code(input_folder_path, output_folder_path)
