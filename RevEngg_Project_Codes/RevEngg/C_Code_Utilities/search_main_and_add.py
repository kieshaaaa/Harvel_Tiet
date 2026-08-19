import os
import re

def search_main_and_add_includes(search_directory):

    main_path = []
   
    # Search for C files with main() function in the specified directory
    if os.path.isdir(search_directory):
        for root, _, files in os.walk(search_directory):
            
            for file_name in files:
                print("file_name: ",file_name)
                if file_name.endswith('.c'):
                    file_path = os.path.join(root, file_name)
                    if search_main_function(file_path):
                        main_path.append(file_path)
                        print(f"File with main() function found: {file_path}")

                        # Collect .c and .h files in the same directory, excluding the main file
                        current_directory = os.path.dirname(file_path)
                        main_file_name = os.path.basename(file_path)
                        c_and_h_files = collect_c_and_h_files(current_directory, main_file_name)
                        c_includes = extract_includes(file_path)

                        # Write #include statements in the main file
                        with open(file_path, 'r+') as main_file:
                            content = main_file.read()
                            main_file.seek(0, 0)

                            # Add #include statements at the top
                            include_statements_ = [f'#include "{files}"' for files in c_and_h_files]
                            include_statements_.extend(c_includes)

                            sorted_statements = sorted(include_statements_, key=priority_key)
                            #include_statements = '\n'.join([f'#include "{file}"' for file in c_and_h_files])
                            include_statements = '\n'.join([file for file in sorted_statements])

                            main_file.write(include_statements + '\n\n' + content)

                        print(f"Updated {file_path} with #include statements.")
    else:
        print(f"Invalid directory path: {search_directory}")
    
    main_path.sort()
    if len(main_path) == 0:
        print(" No main file exist : BINgo")
    return main_path


# Function to search for main() in a file and collect file names
def search_main_function(file_path):
    print("inside search_main_function function declaration : ", file_path)
    # Define regular expressions to match the main() function with and without void
    main_function_patterns = [
        r'\bint\s+main\s*\(\s*void\s*\)\s*{',
        r'\bint\s+main\s*\(\s*\)\s*{',
        r'\bvoid\s+main\s*\(\s*void\s*\)\s*{',
        r'\bvoid\s+main\s*\(\s*\)\s*{',
        r'\bint\s+main\s*\(\s*\)',
        r'\bvoid\s+main\s*\(\s*\)',
        r'\bint\s+main\s*\([^)]*\)'
    ]

    try:
        with open(file_path, 'r') as file:
            content = file.read()
            for pattern in main_function_patterns:
                if re.search(pattern, content):
                    return True
    except Exception as e:
        print(f"Error reading file {file_path}: {str(e)}")
    return False
 
# Function to collect .c and .h files in the same directory
def collect_c_and_h_files(directory, main_file_name):
    c_and_h_files = []
    for file_name in os.listdir(directory):
        if file_name.endswith(('.c', '.h')) and file_name != main_file_name:
            c_and_h_files.append(file_name)
    return c_and_h_files



def extract_includes_(file_path):
    # Regular expression to match #include directives
    include_pattern = r'#include\s+["<](.*?)[">]'

    include_directories = []

    with open(file_path, 'r') as file:
        for line in file:
            matches = re.findall(include_pattern, line)
            for match in matches:
                include_directories.append(match)

    return include_directories


def extract_includes(file_path):
    # Regular expression to match #include directives
    include_pattern = r'#include\s+(<.*?>|".*?")'

    include_directives = []  # Use a list to store the include directives

    with open(file_path, 'r') as file:
        for line in file:
            match = re.search(include_pattern, line)
            if match:
                include_directives.append(match.group(0))

    return include_directives
 

def priority_key(statement):
    if statement.startswith('#include <'):
        return (0, statement)
    elif statement.startswith('#include "') and statement.endswith('.h"'):
        return (1, statement)
    elif statement.startswith('#include "'):
        return (2, statement)
    else:
        return (3, statement)





#if __name__ == "__main__":
    # Define the directory path to search in
#    search_directory = '/home/virubuntu/BTC_work/check_project/chstone'
#    main_path = search_main_and_add_includes(search_directory)
#    print(main_path)
 	
