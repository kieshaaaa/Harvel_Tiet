
def replace_line_with_empty_line(file_path, line_number):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    if 1 <= line_number <= len(lines):
        index = line_number - 1

        # Replace the line with an empty line
        lines[index] = '\n'

        # Write back to the file
        with open(file_path, 'w') as file:
            file.writelines(lines)

        return 1  # Return the number of lines modified (in this case, 1)
    else:
        print(f"Line number {line_number} is out of range for the given file.")
        return 0

def replace_line_with_formatted_print(file_path, line_number, format_specifiers, variable_names,temp_variables_dict,prev_temp_count):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    prev_temp_count_ = prev_temp_count
    if 1 <= line_number <= len(lines):
        index = line_number - 1
        line_to_replace = lines[index].strip()

        for i, (format_specifier, original_var) in enumerate(zip(format_specifiers, variable_names)):
            temp_var_name = f"temptemp{prev_temp_count}"
            temp_variables_dict[temp_var_name] = (format_specifier, original_var)
            prev_temp_count += 1

        # Creating temporary variables and the replacement line
        #temp_variables = [f"temptemp{i+1}" for i in range(len(format_specifiers))]
        temp_variables = []
        for i in range(len(format_specifiers)):
            temp_var_name = f"temptemp{prev_temp_count_}"
            prev_temp_count_ += 1
            temp_variables.append(temp_var_name)

        temp_assignments = [f"{temp} = {var} ;" for temp, var in zip(temp_variables, variable_names)]
        replacement_line = f"printf(\" {' '.join(format_specifiers)} \", {', '.join(temp_variables)});"

        # Create new lines with added braces
        new_lines = ["{"]
        new_lines.extend(temp_assignments + [line_to_replace] + [replacement_line])
        new_lines.append("}")

        # Replace the line in the list of lines
        lines[index] = '\n'.join(new_lines) + '\n'

        # Write back to the file
        with open(file_path, 'w') as file:
            file.writelines(lines)

        
        return len(new_lines),temp_variables_dict,prev_temp_count
    else:
        print(f"Line number {line_number} is out of range for the given file.")
        return 0

if __name__ == "__main__":
    # Example usage:
    file_path = "your_file.c"  # Replace with the actual file path
    line_number = 4
    format_specifiers = ["%d", "%f", "%ld"]
    variable_names = ["var", "s+y", "function(f, var)"]

    lines_added = replace_line_with_formatted_print(file_path, line_number, format_specifiers, variable_names)
    print(f"Number of lines added: {lines_added}")

