import os
import subprocess
import argparse

def compile_testbenches(root_folder):
    try:
        # Traverse through the root folder and its subdirectories
        for root, dirs, files in os.walk(root_folder):
            for file_name in files:
                # Check if the file is a testbench_main.c
                if file_name == 'testbench_main.c':
                    file_path = os.path.join(root, file_name)

                    # Define output executable path within the subdirectory
                    output_executable = os.path.join(root, 'output_executable')

                    # Define GCC log path within the subdirectory
                    gcc_log_path = os.path.join(root, 'gcc.log')
                    print("gcc log path",gcc_log_path)
    
                    try:
                        # Run the GCC command
                        gcc_command = f'gcc -w "{file_path}" -o "{output_executable}" > "{gcc_log_path}" 2>&1'
                        subprocess.run(gcc_command, shell=True, check=True)
                        print(f'Compiled: {file_path} -> {output_executable}')

                    except subprocess.CalledProcessError as e:
                        print(f'Compilation failed for {file_path}. Error: {e.output.decode()}')



    except Exception as e:
        print(f'An error occurred: {str(e)}')

if __name__ == "__main__":
    # Set up command-line argument parser
    parser = argparse.ArgumentParser(description='Compile testbench_main.c files in subdirectories.')
    parser.add_argument('root_folder', help='Path to the root folder.')

    # Parse command-line arguments
    args = parser.parse_args()

    # Call the function with command-line arguments
    compile_testbenches(args.root_folder)
