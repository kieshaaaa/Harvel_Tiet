import os
import sys
import tempfile
import shutil
import subprocess
from RevEngg import system_process
from RevEngg import options
from RevEngg.C_Code_Utilities import search_main_file
from RevEngg.C_Code_Utilities import gcc_C
from RevEngg.C_Code_Utilities import Clean_C_
from RevEngg.C_Code_Utilities import replace_main_with_hash
from RevEngg.C_Code_Utilities import remove_printf
from RevEngg.C_Code_Utilities import search_main_and_add
from RevEngg.C_Code_Utilities import delete_duplicate_include_
from RevEngg.C_Code_Utilities import comment_extern_prototype
from RevEngg.C_Code_Utilities import scanf_comment_folder
from RevEngg.C_Code_Utilities import remove_comment_folder
from RevEngg.C_Code_Utilities import add_std_lib
from RevEngg.C_Code_Utilities import fetch_std_lib
from RevEngg.C_Code_Utilities_ import preprocess_c
from RevEngg.C_Code_Utilities_ import add_spaces_ft_symbols
from RevEngg.C_Code_Utilities_ import clang_format


def main(args):
    try:
        # Get the directory of the currently running script
        current_directory = os.path.dirname(os.path.abspath(__file__))
        print("current_directory: ",current_directory)
        current_directory_path = os.getcwd()
        print("Current directory_path:", current_directory_path)
        # Create a temporary directory
#        temp_dir = tempfile.mkdtemp()

#        temp_output = clang_format.format_and_copy(args.input_folder, temp_dir)
        
#        add_spaces_ft_symbols.modify_files(temp_output)

        pseudo_input_folder = system_process.copy_folder(args.input_folder, args.output_folder)
        #pseudo_input_folder = system_process.copy_folder(temp_output, args.output_folder)
        print(pseudo_input_folder)
#        shutil.rmtree(temp_dir)

        #remove comment from each .c and .h file in the input folder  
        remove_comment_folder.remove_comments_in_folder(pseudo_input_folder)

        # Get the list of the code the standard library .
        list_stdlib =  fetch_std_lib.collect_stdlib_names(pseudo_input_folder)

        # Run Python Script to search the file name having the main function and add the includes other file name in it  
        main_file_path = search_main_and_add.search_main_and_add_includes(pseudo_input_folder)
        print("main_file_path: ",main_file_path)

        # Run Python Script to delete the duplicate #includes in the main function file.
        delete_duplicate_include_.remove_duplicate_includes(main_file_path[0])

        # Relative path of the remove_includes_from_other.sh
        relative_path_remove_includes = "RevEngg/C_Code_Utilities/remove_includes_from_other.sh"
   
        # Join the current directory and relative path to get the complete path
        script_path_remove_includes = os.path.join(current_directory, relative_path_remove_includes)

        # Run the remove_includes_From_other.sh script using bash
        subprocess.call(["bash", script_path_remove_includes, pseudo_input_folder, main_file_path[0]])

        # Run the Python Script which comment out the python code .
#        remove_printf.replace_printf_with_semicolon_in_files(pseudo_input_folder)

        # Search for the main function and add the #includes of the other files which is in the file . 
        main_path = search_main_file.find_files_with_main_function(pseudo_input_folder)
        if not main_path:
            print("No main file found.")
            system_process.delete_folder(pseudo_input_folder)            
            sys.exit(1)  
        if len(main_path) > 1:
            raise ValueError("Error: The folder contain more than one main function check the code.")
            system_process.delete_folder(pseudo_input_folder)            
            sys.exit(1)
        
        print("before preoprocess_c in the code ")        
        preprocess_c.main_preprocess(main_file_path[0], pseudo_input_folder)
        print("after preprocess_c in the code ")

        scanf_comment_folder.comment_scanf_lines_in_folder(pseudo_input_folder)
        # Run the Python Script which comment out the python code .
        remove_printf.replace_printf_with_semicolon_in_files(pseudo_input_folder)

        # Replacing the main fuction by the unique hash code name fuction .
#        hash_code = replace_main_with_hash.replace_main_with_hash_(main_path[0])
    
        # Define the relative path python code which will replace the main file  with the name entry point.
        relative_path_add_entry = "RevEngg/C_Code_Utilities/add_entry_point_function.sh"
    
        # Join the current directory and relative path to get the complete path
        script_path_add_entry = os.path.join(current_directory, relative_path_add_entry)

        # Run the add_entry_point_function.sh script using bash
#        subprocess.call(["bash", script_path_add_entry, hash_code, main_path[0], pseudo_input_folder])
        # Run the Python Script which comment out the python code .
#        remove_printf.replace_printf_statements_in_folder(pseudo_input_folder)


        #convert the multiple c files in one program in a single file  
        gcc_path = gcc_C.convert_c_files(main_path[0], args.output_folder)

        # Clean the c code which byComments removed, string literals replaced, tabs/spaces normalized, and empty lines remo>
        final_cleaned_file =  Clean_C_.clean_C(gcc_path) 
    
        # Relative path for the shell script remove_extern.sh
        relative_path_find_prototypes = "RevEngg/C_Code_Utilities/find_prototypes.sh"

        # Join the current directory and relative path to get the complete path of the remove_extern.sh
        script_path_find_prototypes = os.path.join(current_directory, relative_path_find_prototypes)
    
        # Run the Shell script which is remove the extern types of the prototypes.
        subprocess.call(["bash", script_path_find_prototypes, final_cleaned_file])
    
        line_nos = os.path.join(current_directory_path, "line_no.tmp")
        prototypes = os.path.join(current_directory_path, "prototypes.tmp")
        combined = os.path.join(current_directory_path, "combined.tmp")
        externs_removed = os.path.join(current_directory_path, "extern_prototypes.tmp")


        # Run the python which will combine the line_no and the prototypes
        comment_extern_prototype.combine_files(line_nos, prototypes)
        comment_extern_prototype.process_file(combined)
        comment_extern_prototype.comment_out_lines_by_line_numbers(externs_removed, final_cleaned_file)

        system_process.delete_file(line_nos)
        system_process.delete_file(prototypes)
        system_process.delete_file(combined)
        system_process.delete_file(externs_removed)
         
        # Clean the c code which byComments removed, string literals replaced, tabs/spaces normalized, and empty lines remo>
        final_cleaned_file =  Clean_C_.clean_C(final_cleaned_file) 
        #print("list of the std lib",list_stdlib)
        add_std_lib.add_standard_libraries(final_cleaned_file, list_stdlib)

        if args.option_db:
            # Delete the pseudo_innput_folder
            system_process.delete_folder(pseudo_input_folder)            
        else:
            print("Both includer and the cleaned is saved in the: ",args.output_folder)
    
    except Exception as e:
        # Handle the error
        print(f"An error occurred: {e}")
        # Perform cleanup actions
        system_process.delete_folder(pseudo_input_folder)            

        # Exit the program with an error code
        sys.exit(1)
def pre_main():
    parser = options.get_parser_preprocess_c()
    args = parser.parse_args()
    
    # Check if the output_folder argument was not provided or is None
    if args.output_folder is None:
    # Set the default value to the current directory
        args.output_folder = os.getcwd()   

    main(args)

if __name__ == "__main__":
    pre_main()

