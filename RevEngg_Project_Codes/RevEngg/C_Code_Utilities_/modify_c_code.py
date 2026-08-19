def seperate_datatype(file_path, line_number, data_type, variable_names, line_count):
    # Read the existing code
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Remove the existing line at the specified line number
    del lines[line_number - 1]

    # Add new variable declarations
    for variable_name in variable_names:
        lines.insert(line_number - 1, f"{data_type} {variable_name};\n")
        line_count += 1

    # Write the modified code back to the file
    with open(file_path, 'w') as file:
        file.writelines(lines)
    return line_count - 1
if __name__ == "__main__":
    # Example usage
    file_path = '/home/virubuntu/c_code/c_code_RV/codezclub_55/55_C_program_to_Check_whether_a_Number_is_Perfect_Number_or_not_-_CodezClub.c'  # Replace with the path to your Python file
    line_number = 8  
    data_type = 'int' 
    variable_names = ['num', 'loop']  
    file_line_count = 0
    line_county = seperate_datatype(file_path, line_number, data_type, variable_names)
    print(f'line county : {line_county}')
