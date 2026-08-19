import os
import remove_tcl_intialization  


def get_tcl_names_without_extension(folder_path):
    tcl_files = [f for f in os.listdir(folder_path) if f.endswith('.tcl')]

    if not tcl_files:
        print("No .tcl files found in the specified folder.")
        return []

    # Remove .tcl extension and create a list of names
    tcl_names_without_extension = [os.path.splitext(tcl_file)[0] for tcl_file in tcl_files]
    return tcl_names_without_extension

if __name__ == "__main__":
    # Example usage
    folder_path = "/home/virubuntu/c_code/dataset_c_verilog_new/132_compound-interest.aspx"
    tcl_names = get_tcl_names_without_extension(folder_path)
    file_path = "/home/virubuntu/c_code/dataset_verilog_final/132_compound-interest.aspx.v"

    if tcl_names:
        print("List of .tcl file names without extension:")
        for name in tcl_names:
            print(name)
    else:
        print("No .tcl files found or empty list.")


    result = remove_tcl_intialization.find_lines_after_strings(file_path, tcl_names)

    if result:
        for search_string, line_numbers in result.items():
            print(f"Lines containing '{search_string}' and lines until the semicolon:")
            for line_number in line_numbers:
                print(f"Line {line_number}")
    else:
        print("No lines containing the specified search strings found.")
