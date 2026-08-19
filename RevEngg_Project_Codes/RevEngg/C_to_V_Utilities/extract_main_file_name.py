import os
import re
import sys

def find_main_function_files(folder_path):
    main_function_patterns = [
        r'\bint\s+main\s*\(\s*void\s*\)\s*{',
        r'\bint\s+main\s*\(\s*\)\s*{'
    ]
    
    main_function_files = []
    
    # Iterate through files in the folder
    for root, _, files in os.walk(folder_path):
        for file_name in files:
            # Check if the file is a C source code file (ends with .c)
            if file_name.endswith('.c'):
                file_path = os.path.join(root, file_name)
                with open(file_path, 'r') as file:
                    file_contents = file.read()
                    # Check if any of the main function patterns exist in the file contents
                    if any(re.search(pattern, file_contents) for pattern in main_function_patterns):
                        main_function_files.append(file_path)
    
    return main_function_files

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: {} <folder_path>".format(sys.argv[0]))
        sys.exit(1)

    folder_path = sys.argv[1]
    main_function_files = find_main_function_files(folder_path)
    
#    if main_function_files:
        #print("Files containing main function patterns:")
#        for file_path in main_function_files:
#            print(file_path)
#    else:
#        print("No files containing main function patterns found in the specified folder.")
    print(" ".join(main_function_files))
