def update_entry_point(input_file, format_specifier, variable_name):
    try:
        with open(input_file, 'r') as file:
            lines = file.readlines()

        # Initialize a flag to check if the entry_point function has been found
        entry_point_found = False

        for i, line in enumerate(lines):
            # Search for the entry_point function declaration
            if "entry_point(" in line:
                entry_point_found = True
                # Extract the arguments inside the parentheses
                start = line.index("(") + 1
                end = line.index(")")
                arguments = line[start:end].strip()

                if arguments:
                    # If arguments already exist, add the new argument at the end
                    arguments += f', {format_specifier} {variable_name}'
                else:
                    # If no arguments exist, add the new argument as the first one
                    arguments = f'{format_specifier} {variable_name}'

                # Update the line with the modified arguments
                lines[i] = line[:start] + arguments + line[end:]

        if not entry_point_found:
            # If the entry_point function was not found, add it with the new argument
            new_entry_point = f'entry_point({format_specifier} {variable_name})\n'
            lines.append(new_entry_point)

        # Write the modified content back to the file
        with open(input_file, 'w') as file:
            file.writelines(lines)

#        print(f'Updated entry_point function in {input_file}.')
    except FileNotFoundError:
        print(f'File not found: {input_file}')
    except Exception as e:
        print(f'An error occurred: {str(e)}')

    return format_specifier, variable_name
if __name__ == "__main__" :

    # Example usage
    input_file = "/home/virubuntu/c_code/c_code_RV/codezclub_55/55_c.c"  # Replace with the path to your C source code file
    format_specifier = 'int'
    variable_name = 'num'
    update_entry_point(input_file, format_specifier, variable_name)
