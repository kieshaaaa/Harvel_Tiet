import os
import re
import argparse


def create_file_dictionary(input_folder):
    file_dictionary = {}
    
    # Check if the input folder exists
    if not os.path.exists(input_folder):
        print(f"The folder '{input_folder}' does not exist.")
        return file_dictionary

    # List all files in the input folder
    for filename in os.listdir(input_folder):
        file_path = os.path.join(input_folder, filename)

        # Check if the item is a file
        if os.path.isfile(file_path):
            with open(file_path, 'r') as file:
                file_contents = file.read()
                file_dictionary[filename] = file_contents

    return file_dictionary

def extract_module_names(file_dict):
    module_names = []

    # Use a regular expression to find Verilog module definitions
    module_pattern = r'\bmodule\s+(\w+)\s*\('
    
    for content in file_dict.values():
        matches = re.findall(module_pattern, content)

        for match in matches:
            module_names.append(match)

    # Remove duplicates by converting the list to a set and back to a list
    module_names = list(set(module_names))

    return module_names

def match_module_names(file_dict, module_names):
    unmatched_modules = []

    for module_name in module_names:
        # Iterate through the content of each file in the dictionary
        
        for key , content in file_dict.items():
            # Split each line by whitespace and get the first word
            lines = content.split('\n')
            first_words = [line.split()[0] for line in lines if line.strip()]  # Check if the line is not empty

           
            # Check if the module name is in the list of first words
            if module_name in first_words:
                # Remove the module name from the list
                unmatched_modules.append(module_name)
    
        
    # Any remaining module names in the list are unmatched
    #unmatched_modules = module_names

    return unmatched_modules


def find_module_in_files(file_dict, module_name):
    for filename, content in file_dict.items():
        if re.search(fr'\bmodule\s+{module_name}\s*\(', content):
            return filename  # Return the filename if the pattern is found

    return None  # Return None if the pattern is not found in any file



def concatenate_files(input_folder, output_file, start_file_name):
    # List all files in the input folder
    files = os.listdir(input_folder)
    # Sort the files to maintain order
    files.sort()

    # Create or open the output file in write mode
    with open(output_file, 'w') as output:
        found_start_file = False

        # First, add the content of the specific file
        for file_name in files:
            if file_name == start_file_name:
                found_start_file = True
                file_path = os.path.join(input_folder, file_name)
                with open(file_path, 'r') as input_file:
                    output.write(input_file.read())
                output.write('\n')  # Add a newline between files

        # Then, append the content of all other files while skipping the specific file
        for file_name in files:
            if file_name == start_file_name:
                continue  # Skip the specific file
            file_path = os.path.join(input_folder, file_name)
            with open(file_path, 'r') as input_file:
                output.write(input_file.read())
            output.write('\n')  # Add a newline between files



def main():
    parser = argparse.ArgumentParser(description="Search for a module name in Verilog files.")
    parser.add_argument("input_folder", help="Path to the input folder containing Verilog files.")
    parser.add_argument("output_file", help="Path to the output file where the content will be saved.")
    args = parser.parse_args()
    
    input_folder = args.input_folder
    output_file = args.output_file

    file_dict =create_file_dictionary(input_folder)


    module_names = extract_module_names(file_dict)


    matched_modules = match_module_names(file_dict, module_names)


    unmatched_module = [x for x in module_names if x not in matched_modules]
    


    top_function = unmatched_module[0]
    print(top_function)

    found_file = find_module_in_files(file_dict, top_function)
#    if found_file:
#        print(f"Module '{top_function}' found in file '{found_file}'.")
 #   else:
#        print(f"Module '{top_function}' not found in any file.")

#    if found_file:
#        with open(output_file, 'w') as out_file:
#            out_file.write(file_dict[found_file])
#        print(f"Module '{top_function}' found in file '{found_file}' and saved to '{output_file}'.")
#    else:
#        print(f"Module '{top_function}' not found in any file.")

    concatenate_files(input_folder, output_file, found_file)



if __name__ == "__main__":
    main()
