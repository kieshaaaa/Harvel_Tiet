import os
import re


def find_files_with_main_function(folder_path):
    main_function_patterns = [
        r'\bint\s+main\s*\(\s*void\s*\)\s*{',
        r'\bint\s+main\s*\(\s*\)\s*{',
        r'\bvoid\s+main\s*\(\s*void\s*\)\s*{',
        r'\bvoid\s+main\s*\(\s*\)\s*{',
        r'\bint\s+main\s*\([^)]*\)'
    ]

    result = []
    for root, _, files in os.walk(folder_path):
        for filename in files:
            file_path = os.path.join(root, filename)
            if not os.path.isfile(file_path):
                continue
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as file:
                content = file.read()
                if any(re.search(pattern, content) for pattern in main_function_patterns):
                    result.append(file_path)
    return result

if __name__ == "__main__":
    folder_path = "/home/virubuntu/patmos_HLS/benchmarks/CHStone/dfdiv"
    files_with_main = find_files_with_main_function(folder_path)
    
    if files_with_main:
        print("Files with a main function:")
        for file_path in files_with_main:
            print(file_path)
    else:
        print("No files with a main function found in the specified folder.")
