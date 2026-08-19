import os
import subprocess

def fetch_file(main_path_list, output_directory_):
    
    gcc_output = os.path.join(output_directory_, "gcc_output")
    
    for file in main_path_list:
        convert_c_files(file, gcc_output)
    
    return gcc_output

def convert_c_files(input_file_path, output_directory):
    
    # Extract the folder name
    folder_name = os.path.basename(os.path.dirname(input_file_path))

    output_file_directory = os.path.join(output_directory, folder_name)

    # Create the output directory if it doesn't exist
    if not os.path.exists(output_file_directory):
        os.makedirs(output_file_directory)

    
    
    output_file_path = os.path.join(output_directory, os.path.basename(input_file_path))

    # Construct the gcc command
    gcc_command = [
        'gcc',
        '-E',
        '-P',
        input_file_path,
        '-o',
        output_file_path,
    ]

    # Run the gcc command
    try:
        subprocess.run(gcc_command, check=True)
        print(f"Successfully converted {input_file_path}")
    except subprocess.CalledProcessError as e:
        print(f"Error converting {input_file_path}: {e}")
    return output_file_path
#if __name__ == "__main__":
    # Example usage:
#    input_file_path = '/home/virubuntu/BTC_work/check_project/chstone/C_code/aes/main.c'
#    output_directory = '/home/virubuntu/BTC_work/check_project/output'#
#    convert_c_files(input_file_path, output_directory)
