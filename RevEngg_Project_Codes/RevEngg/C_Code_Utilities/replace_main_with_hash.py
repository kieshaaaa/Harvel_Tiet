import re
import hashlib

def replace_main_with_hash_(input_file_path):
    # Read the content of the input file
    with open(input_file_path, 'r') as input_file:
        input_code = input_file.read()

    # Generate a unique hash code based on the input code
    unique_hash = hashlib.md5(input_code.encode()).hexdigest()
    print("unique hash code :",unique_hash)
    # Define a regular expression pattern to match 'int main'
    main_pattern = r'\bint\s+entry_point\s*\('

    # Replace 'int main' with the unique hash
    modified_code = re.sub(main_pattern, f'int _{unique_hash}(', input_code)

    # If 'int main' was not found, try to replace 'void main' with the unique hash
    if modified_code == input_code:
        void_main_pattern = r'\bvoid\s+entry_point\s*\('
        modified_code = re.sub(void_main_pattern, f'void _{unique_hash}(', input_code)


    # Write the modified code back to the input file
    with open(input_file_path, 'w') as output_file:
        output_file.write(modified_code)
    
    return unique_hash
if __name__ == "__main__":
    input_file_path = "/home/virubuntu/patmos_HLS/benchmarks/CHStone/aes/aes.c"

    replace_main_with_hash_(input_file_path)

    print(f"Unique hash code has been assigned to 'main' and the input file has been updated.")
