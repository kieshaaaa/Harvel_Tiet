import re
import argparse

def modify_file(input_file_name):
    try:
        with open(input_file_name, 'r') as file:
            text = file.read()

            # Regular expression pattern to search for __malloc__ followed by (...)
            pattern = r'__malloc__\s*\([^)]*\)'

            # Replace the matches with just '__malloc__'
            modified_text = re.sub(pattern, '__malloc__', text)

            # Write the modified text back to the same file
            with open(input_file_name, 'w') as file:
                file.write(modified_text)

            print(f"Changes have been made in '{input_file_name}'.")

    except FileNotFoundError:
        print(f"File '{input_file_name}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="__malloc__.")
    parser.add_argument("input_file", help="Path to the input file")

    args = parser.parse_args()
    modify_file(args.input_file)
