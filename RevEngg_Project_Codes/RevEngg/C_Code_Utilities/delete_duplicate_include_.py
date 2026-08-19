from RevEngg.C_Code_Utilities import remove_duplicate_include_from_other_file
import re

def remove_duplicate_includes_(input_file):
    with open(input_file, 'r') as file:
        lines = file.readlines()

    unique_includes = set()
    output_lines = []

    for line in lines:
        if line.startswith("#include"):
            parts = line.split('"')
            if len(parts) >= 2:
                header_file = parts[1]
                if header_file not in unique_includes:
                    unique_includes.add(header_file)
                    output_lines.append(line)
            else:
                # If there are no double-quotes in the line, keep it as is
                output_lines.append(line)
        else:
            output_lines.append(line)

    with open(input_file, 'w') as file:
        file.writelines(output_lines)

    print("Duplicates removed in the same file.")




def format_include(line):
    # Remove spaces and quotes for comparison
    return re.sub(r'[<>"\s]', '', line)

def remove_duplicate_includes(input_file):
    unique_includes = set()
    
    with open(input_file, 'r') as file:
        lines = file.readlines()
    
    with open(input_file, 'w') as file:
        for line in lines:
            if line.startswith("#include"):
                formatted_line = format_include(line)
                print("formated line ",formatted_line)
                if formatted_line not in unique_includes:
                    unique_includes.add(formatted_line)
                    file.write(line)
            else:
                file.write(line)

if __name__ == "__main__":
    input_file = "your_input_code.c"
    remove_duplicate_includes(input_file)



def process_main_path(main_path_list):
    # Iterate through each file path in the main file list using a for loop
    for file in main_path_list:
        remove_duplicate_includes(file)
#        remove_duplicate_include_from_other_file.process_files(file)

#def main():
#    input_file = "/home/virubuntu/BTC_work/check_project/chstone/C_code/aes/main.c"  # Replace with the name of your input C file
#    remove_duplicate_includes(input_file)

#if __name__ == "__main__":
#    main()
