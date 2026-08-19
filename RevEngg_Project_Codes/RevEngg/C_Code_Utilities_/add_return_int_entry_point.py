import sys

def ensure_return_statement(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
    
    modified = False
    # Check if the file starts with "int entry_point"
    if lines and "int entry_point" in lines[0]:
        # Convert the list of lines back into a single string for easier manipulation
        content = "".join(lines)
        # The position where the last 'return 0;' should be inserted before the last '}'
        insert_position = content.rfind("}")
        # Check if 'return 0;' exists before the last '}'
        if content[:insert_position].find("return 0;") == -1:
            # Insert 'return 0;' before the last '}'
            content = content[:insert_position] + "    return 0;\n" + content[insert_position:]
            modified = True
    
    if modified:
        with open(file_path, 'w') as file:
            file.write(content)
        print(f"'return 0;' was added to {file_path} before the last '}}'.")
    else:
        print("No changes were necessary.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <file_path>")
        sys.exit(1)

    file_path = sys.argv[1]
    ensure_return_statement(file_path)
