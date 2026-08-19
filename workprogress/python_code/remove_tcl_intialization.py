
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

if __name__ == "__main__":
    # Example usage
    file_path = "/home/virubuntu/c_code/dataset_verilog_final/132_compound-interest.aspx.v"
    search_strings = ["entry_point_dmul_64ns_64ns_64_4_max_dsp_1_ip", "entry_point_dadd_64ns_64ns_64_3_full_dsp_1_ip","entry_point_fadd_32ns_32ns_32_2_full_dsp_1_ip","entry_point_fdiv_32ns_32ns_32_6_no_dsp_1_ip"]

    result = find_lines_after_strings(file_path, search_strings)

    if result:
        for search_string, line_numbers in result.items():
            print(f"Lines containing '{search_string}' and lines until the semicolon:")
            for line_number in line_numbers:
                print(f"Line {line_number}")
    else:
        print("No lines containing the specified search strings found.")
