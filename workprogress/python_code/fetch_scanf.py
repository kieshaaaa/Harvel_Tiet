import re
import argument_adder
import scanf_fm_var
import replace_pointer_
 

def datatype_of_formatSpecifier(c_code_files, format_specifier, variable_):
    if format_specifier in ['%lld', '%lli']:
        print(f"Datatype: Long Long Integer -- variable : {variable_}")
        datatype = "long long int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%llu']:
        print(f"Datatype: Long Long Unsigned Integer -- variable : {variable_}")
        datatype = "unsigned long long int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%ld', '%li']:
        print(f"Datatype: Long Integer -- variable : {variable_}")
        datatype = "long int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%lu']:
        print(f"Datatype: Long Unsigned Integer -- variable : {variable_}")
        datatype = "unsigned long int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%lf']:
        print(f"Datatype: Long Double -- variable : {variable_}")
        datatype = "long double"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif ('%' in format_specifier and 'd' in format_specifier) or format_specifier in ['%d', '%i', '%o', '%x', '%X', '%p']:
        print(f"Datatype: Integer -- variable : {variable_}")
        datatype = "int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif ('%' in format_specifier and 'f' in format_specifier) or format_specifier in ['%f', '%e' ,'%E']:
        print(f"Datatype: Float -- variable : {variable_}")
        datatype = "float"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%c']:
        print(f"Datatype: Character -- variable : {variable_}")
        datatype = "char"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%u']:
        print(f"Datatype: Unsigned Integer -- variable : {variable_}")
        datatype= "unsigned int"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    elif format_specifier in ['%s']:
        print(f"Datatype: char* -- variable : {variable_}")
        datatype = "char"
        argument_adder.update_entry_point(c_code_files, datatype, variable_)
    else:
        print("Unknown Format Specifier")
    return 0


def replace_with_pointer(c_code_files, format_specifier, variable_):
    if format_specifier in ['%lld', '%lli']:
        print(f"Datatype: Long Long Integer -- variable : {variable_}")
        datatype = "long long int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%llu']:
        print(f"Datatype: Long Long Unsigned Integer -- variable : {variable_}")
        datatype = "unsigned long long int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%ld', '%li']:
        print(f"Datatype: Long Integer -- variable : {variable_}")
        datatype = "long int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%lu']:
        print(f"Datatype: Long Unsigned Integer -- variable : {variable_}")
        datatype = "unsigned long int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%lf']:
        print(f"Datatype: Long Double -- variable : {variable_}")
        datatype = "long double"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif ('%' in format_specifier and 'd' in format_specifier) or format_specifier in ['%d', '%i', '%o', '%x', '%X', '%p']:
        print(f"Datatype: Integer -- variable : {variable_}")
        datatype = "int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif ('%' in format_specifier and 'f' in format_specifier) or format_specifier in ['%f', '%e' ,'%E']:
        print(f"Datatype: Float -- variable : {variable_}")
        datatype = "float"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%c']:
        print(f"Datatype: Character -- variable : {variable_}")
        datatype = "char"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%u']:
        print(f"Datatype: Unsigned Integer -- variable : {variable_}")
        datatype= "unsigned int"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    elif format_specifier in ['%s']:
        print(f"Datatype: char* -- variable : {variable_}")
        datatype = "char"
        replace_pointer_.replace_varible_or_datatype(c_code_files, datatype, variable_)
        replace_pointer_.replace_variable_with_pointer(c_code_files, datatype, variable_)
    else:
        print("Unknown Format Specifier")
    return 0



def process_lists(c_code_files, format_specifiers, variables):
    # Check if the sizes of both lists are equal
    if len(format_specifiers) == len(variables):
        # Iterate over the lists in parallel using zip
        for format_specifier, variable in zip(format_specifiers, variables):
            data_type = datatype_of_formatSpecifier(c_code_files, format_specifier, variable)
        for format_specifier, variable in zip(format_specifiers, variables):
            replace_pointer = replace_with_pointer(c_code_files, format_specifier, variable)
   
    else:
        print("Error: Both lists have different sizes.")


def replace_main_with_entry_point(file_path):
    try:
        # Read the content of the file
        with open(file_path, "r") as file:
            file_content = file.read()

        # Replace "main" with "entry_point"
        modified_content = file_content.replace("main", "entry_point")

        # Write the modified content back to the file
        with open(file_path, "w") as file:
            file.write(modified_content)

        print(f'Replaced "main" with "entry_point" in {file_path}.')
    except FileNotFoundError:
        print(f'File not found: {file_path}')
    except Exception as e:
        print(f'An error occurred: {str(e)}')




if __name__ == "__main__":
    c_code_file = "/home/virubuntu/c_code/c_code_RV/codezclub_55/55_c.c"
    replace_main_with_entry_point(c_code_file)
    format_speci , variable = scanf_fm_var.fetch_scanf_from_c_file(c_code_file)
    process_lists(c_code_file,format_speci, variable)
#    variable_info = find_scanf_variables(c_code_file)

 #   if variable_info:
 #       print("Variable names and format specifiers extracted from scanf calls:")
 #       for format_specifier, var_name in variable_info:
 #           print(f"Variable Name: {var_name}, Format Specifier: {format_specifier}")
 #           if format_specifier=="%d" :
 #               data_type = "int"
 #               argument_adder.update_entry_point(c_code_file,data_type,var_name)
 #           elif format_specifier=="%f" :
 #               data_type = "float"
 #               argument_adder.update_entry_point(c_code_file,data_type,var_name) 

#    else:
#        print("No scanf calls with %d or %f format specifiers found in the C code.")
