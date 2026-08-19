 # Usage : python3 preprocess_c.py /path/of/input_file /path/of/output_folder

import argparse
import seperate_var
import fetch_scanf
import scanf_comment
import printf_fm_var
import extract_pointer
import copy_file
import extract_main_code
import insert_modified_main
import extract_gets_puts
import check_array
import gets_comment
import remove_comment
import modify_list


def main(args):
    # actual input file path 
    file_path = args.file_path
    print("file path: ",file_path)
    # the output path in which the preprocessed saved 
    output_folder = args.output_folder
    print("output_folder: ",output_folder)
    dumy_input_file =  copy_file.copy_file_(file_path, output_folder)
    # Extract the main function from the whole code and return the temporary file path in which the main function  is saved
    # and also return the starting line number and ending line number in the actual code where is the main function 
    temp_file, start_main_line, end_main_line = extract_main_code.get_temp_file(file_path, output_folder)
    # Remove comment form the main file   
    remove_comment.process_file(temp_file)
    # seperate the variable declaration 
    seperate_var.def_seperate_datatype(temp_file)
    # just replace the main function name with the entry_point
    fetch_scanf.replace_main_with_entry_point(temp_file)
    # get the list of the format specifier and the variable from the scanf statement
    format_specifier_scanf__ , variable_scanf__ = fetch_scanf.scanf_fm_var.fetch_scanf_from_c_file(temp_file)
    format_specifier_scanf , variable_scanf = modify_list.remove_duplicates_with_format_specifier(format_specifier_scanf__ , variable_scanf__)
    # get the list variable which is already pointer
    already_pointer = extract_pointer.extract_pointers_main(temp_file)
    # get the list of format specifier and the variable from the printf statement 
    format_specifier_printf__ , variable_printf__ = printf_fm_var.process_c_code_file(temp_file)
    format_specifier_printf , variable_printf = modify_list.remove_duplicates_with_format_specifier(format_specifier_printf__ , variable_printf__)
    print(f'scanf-> format {format_specifier_scanf} variable: {variable_scanf}')
    print(f'printf-> format {format_specifier_printf} variable: {variable_printf}')
    
    puts_variables__ = extract_gets_puts.extract_put_variables(temp_file)
    puts_variables = modify_list.remove_duplicates_variable(puts_variables__)
    gets_variables__ = extract_gets_puts.extract_gets_variables(temp_file)
    gets_variables = modify_list.remove_duplicates_variable(gets_variables__)
    print(f'puts-> variables {puts_variables}')
    print(f'gets-> variables {gets_variables}')
   

    if gets_variables :
        for gets_var in gets_variables :
            d_type = "%c"
            data_type = fetch_scanf.datatype_of_formatSpecifier(temp_file, d_type, gets_var)

    variable_scanf_ = []
    # Check if the sizes of both lists are equal
    if variable_scanf:
        if len(format_specifier_scanf) == len(variable_scanf):
            variable_scanf_ = check_array.convert_to_simple_variables(variable_scanf)
            print("scanf variables without []",variable_scanf_)
            # Iterate over the lists in parallel using zip
            for format_s_scanf, variable_s_scanf in zip(format_specifier_scanf, variable_scanf_):
                # Sent the format specifier and the variable to add the argument in the entry_point
                if variable_s_scanf not in gets_variables :
                    data_type = fetch_scanf.datatype_of_formatSpecifier(temp_file, format_s_scanf, variable_s_scanf)

    if puts_variables:
        for puts_var in puts_variables :
            if puts_var not in gets_variables and puts_var not in variable_scanf_:
                d_type = "%c"
                data_type = fetch_scanf.datatype_of_formatSpecifier(temp_file, d_type, puts_var)
    if variable_printf:
        if len(format_specifier_printf) == len(variable_printf):
            variable_printf_ = check_array.convert_to_simple_variables(variable_printf)
            print("printf variables without []",variable_printf_)
            print("printf format spec without ",format_specifier_printf)
            # Iterate over the lists in parallel using zip
            for format_p_printf, variable_p_printf in zip(format_specifier_printf, variable_printf_):
                if variable_p_printf not in variable_scanf_ and variable_p_printf not in gets_variables and variable_p_printf not in puts_variables:
                    data_type = fetch_scanf.datatype_of_formatSpecifier(temp_file, format_p_printf, variable_p_printf)

    ####################################################################################

    if gets_variables :
        for gets_var in gets_variables :
            d_type = "%c"
            replace_pointer = fetch_scanf.replace_with_pointer(temp_file, d_type, gets_var)
    if variable_scanf:
        if len(format_specifier_scanf) == len(variable_scanf):
            for format_s_scanf, variable_s_scanf in zip(format_specifier_scanf, variable_scanf_):
                if variable_s_scanf not in gets_variables :
                    replace_pointer = fetch_scanf.replace_with_pointer(temp_file, format_s_scanf, variable_s_scanf)

    if puts_variables:
        for puts_var in puts_variables :
            if puts_var not in gets_variables and puts_var not in variable_scanf_:
                d_type = "%c"
                replace_pointer = fetch_scanf.replace_with_pointer(temp_file, d_type, puts_var)

    if variable_printf:
        if len(format_specifier_printf) == len(variable_printf):
            # Iterate over the lists in parallel using zip
            for format_p_printf, variable_p_printf in zip(format_specifier_printf, variable_printf_):
                print(f'before if variable_p_printf -> {variable_p_printf}')
                if variable_p_printf not in variable_scanf_ and variable_p_printf not in gets_variables and variable_p_printf not in puts_variables:
                    replace_pointer = fetch_scanf.replace_with_pointer(temp_file, format_p_printf, variable_p_printf)

    scanf_comment.comment_scanf_lines_in_file(temp_file)
    gets_comment.comment_gets_lines_in_file(temp_file)
    
    print("code reached at gets comment")
    insert_modified_main.insert_code(dumy_input_file, start_main_line, end_main_line, temp_file)

    copy_file.delete_file(temp_file)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Process C code file.")
    parser.add_argument("file_path", help="Path to the C code file")
    parser.add_argument("output_folder", help="Path of the folder to work on")
    args = parser.parse_args()
   
    main(args)
