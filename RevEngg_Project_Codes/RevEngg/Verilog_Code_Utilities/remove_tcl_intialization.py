
def find_lines_after_strings(file_path, search_strings):
    result_dict = {}

    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

            for search_string in search_strings:
                line_numbers = []
                for i, line in enumerate(lines):
                    if search_string in line:
                        line_numbers.append(i + 1)  # Line numbers start from 1 in human-readable form
                        # Check the line below for a semicolon
                        for j in range(i + 1, len(lines)):
                            line_numbers.append(j + 1)  # Append line numbers until a semicolon is found
                            if ';' in lines[j]:
                                break

                result_dict[search_string] = line_numbers

    except FileNotFoundError:
        print(f"File not found: {file_path}")

    return result_dict



def replace_lines_with_space(file_path, lines_to_replace_dict):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        for group_lines in lines_to_replace_dict.values():
            for line_number in group_lines:
                # Check if the line number is valid
                if 1 <= line_number <= len(lines):
                    lines[line_number - 1] = ' ' * len(lines[line_number - 1])

        with open(file_path, 'w') as file:
            file.writelines(lines)

        print("Lines replaced with spaces successfully.")

    except FileNotFoundError:
        print(f"File not found: {file_path}")






if __name__ == "__main__":
    # Example usage
    file_path = "/home/virubuntu/c_code/dataset_verilog_final/132_compound-interest.aspx.v"
    search_strings = ["entry_point_dmul_64ns_64ns_64_4_max_dsp_1_ip", "entry_point_dadd_64ns_64ns_64_3_full_dsp_1_ip","entry_point_fadd_32ns_32ns_32_2_full_dsp_1_ip","entry_point_fdiv_32ns_32ns_32_6_no_dsp_1_ip"]

    lines_to_replace_dict = find_lines_after_strings(file_path, search_strings)
    if lines_to_replace_dict.items() :
        replace_lines_with_space(file_path, lines_to_replace_dict)

    if lines_to_replace_dict:
        for search_string, line_numbers in lines_to_replace_dict.items():
            print(f"Lines containing '{search_string}' and lines until the semicolon:")
            for line_number in line_numbers:
                print(f"Line {line_number}")
    else:
        print("No lines containing the specified search strings found.")
