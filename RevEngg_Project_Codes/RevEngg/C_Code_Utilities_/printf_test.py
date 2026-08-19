import re
from RevEngg.C_Code_Utilities_ import replace_the_printf

def separate_functions(input_string):
    print("input string : ", input_string)
    result = []
    current_subword = ""

    i = 0
    while i < len(input_string):
        if input_string[i] == ',':
            result.append(current_subword.strip())
            current_subword = ""
        elif input_string[i] == ')':
            current_subword += input_string[i]
        elif input_string[i] == '(':
            current_subword += input_string[i]
            i += 1
            nested_parentheses_count = 1

            while nested_parentheses_count > 0:
                current_subword += input_string[i]
                if input_string[i] == '(':
                    nested_parentheses_count += 1
                elif input_string[i] == ')':
                    nested_parentheses_count -= 1
                i += 1
            i -= 1  # To account for the extra increment in the outer loop
        else:
            current_subword += input_string[i]
        i += 1

    result.append(current_subword.strip())

    return [item for item in result if item]



def extract_format_specifiers(input_string):
    # Regular expression to match format specifiers
    format_specifier_pattern = re.compile(r'%[a-zA-Z.*0-9]+')

    # Find all format specifiers in the input string
    format_specifiers = re.findall(format_specifier_pattern, input_string)
    return format_specifiers

# Function to process a C code file and extract printf lines
def process_c_code_file(file_path):
    format_specifier_lines = []
    temp_variable_dict = {}
    prev_temp_count = 1
    with open(file_path, 'r') as file:
        c_code = file.readlines()

        # Regular expression to match printf lines
        printf_pattern = re.compile(r'printf\s*\(\s*["\']\s*(.*?)\s*["\']\s*,\s*(.*?)\s*\)\s*;')
        new_line_count = 1
        overall_line_count = 0

        # Iterate through lines and find printf matches
        for line_number, line in enumerate(c_code, start=1):
            printf_matches = re.findall(printf_pattern, line)
            for match in printf_matches:
                print("matched printf statement in the code: ",match)
                format_s = extract_format_specifiers(match[0])
                # Split the string using ',' as the delimiter
                variable_list = separate_functions(match[1])
                #variable_list = [element.strip() for element in match[1].split(',')]
                print("format specifier: ",format_s)
                print("variable list : ",variable_list)
                print(f"line number actual {line_number}")
                overall_line_count += new_line_count - 1
                line_number = line_number + overall_line_count
                print(f"line number to sent {line_number}")
                replace_the_printf.replace_line_with_empty_line(file_path,line_number)
                new_line_count, temp_variable_dict,prev_temp_count = replace_the_printf.replace_line_with_formatted_print(file_path,line_number,format_s,variable_list,temp_variable_dict,prev_temp_count)

                print(f" new line count {new_line_count}")
                if len(format_s) == len(variable_list):
                    format_specifier_lines.append((line_number, format_s, variable_list))
#    print(f"dictionary of the info temp : {temp_variable_dict}")
    keys_list = []
    values_list = []

# Iterating through keys and values
    for key, values_tuple in temp_variable_dict.items():
        keys_list.append(key)
        values_list.append(values_tuple[0])  # Extract the first element from the tuple
#    print(f"format specifier: {values_list} and variable list: {keys_list}")
    return values_list,keys_list


if __name__ == "__main__":
    # Example usage with a C code file
    c_code_file_path = "/home/virubuntu/try_rename/printf.c"
    format_specifier,variables = process_c_code_file(c_code_file_path)
    print(f"format specifier: {format_specifier} and variable list: {variables}")

#    print("print info",printf_dict_info)
    
