import os
import subprocess
from RevEngg import options
from RevEngg.Verilog_Code_Utilities import list_of_tcl_file
from RevEngg.Verilog_Code_Utilities import remove_tcl_intialization

def find_folders_with_v_files(root_directory):
    folders_with_v_files = []

    for root, dirs, files in os.walk(root_directory):
        if any(file.endswith('.v') for file in files):
            folders_with_v_files.append(root)

    return folders_with_v_files

def main(args):
    input_directory = args.input_folder
    output_directory = args.output_folder
    
    tcl_names = list_of_tcl_file.get_tcl_names_without_extension(input_directory)
    
    print("tcl names :",tcl_names)

    base_name = os.path.basename(input_directory)
    
    # Create the new file name by appending ".v" to the base name
    new_file_name = f"{base_name}.v"
    
    # Join the new file name with the output folder path
    output_file_path = os.path.join(output_directory, new_file_name)
    

    #folders_with_v_files_array = find_folders_with_v_files(root_directory)
    
    # Get the directory of the currently running script
    current_directory = os.path.dirname(os.path.abspath(__file__))
 
    # Join the current directory with the relative path
    relative_path = "RevEngg/Verilog_Code_Utilities/integrated_verilog.sh"
    full_path = current_directory + '/' + relative_path

    print(full_path)  

    command = f"bash '{full_path}' '{input_directory}' '{output_directory}'"
    subprocess.run(command, shell=True)

    if tcl_names:
        lines_to_replace_dict = remove_tcl_intialization.find_lines_after_strings(output_file_path, tcl_names)
  
        if lines_to_replace_dict.items() :
            remove_tcl_intialization.replace_lines_with_space(output_file_path, lines_to_replace_dict)

    else:
        print("No .tcl files found or empty list.")



def pre_main():
    parser = options.get_parser_preprocess_v()
    args = parser.parse_args()
    
    # Check if the output_folder argument was not provided or is None
    if args.output_folder is None:
    # Set the default value to the current directory
        args.output_folder = os.getcwd()   

    main(args)

if __name__ == "__main__":
    pre_main()

