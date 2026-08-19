
import sys 
import re

def extract_put_variables(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code = file.read()
            pattern = re.compile(r'puts\s*\(\s*(?!\"[^"]*\")([^)]*)\s*\);')  
 #         pattern = re.compile(r'puts\s*\(\s*([^)]*)\s*\);')
            matches = pattern.findall(c_code)
            return matches
    except FileNotFoundError:
        print(f"File not found: {file_path}")
        return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

def extract_gets_variables(file_path):
    try:
        with open(file_path, 'r') as file:
            c_code = file.read()
            pattern = re.compile(r'gets\s*\(\s*([\w\d_]+)\s*\);')
            matches = pattern.findall(c_code)
            return matches
    except FileNotFoundError:
        print(f"File not found: {file_path}")
        return []
    except Exception as e:
        print(f"An error occurred: {e}")
        return []

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py 'file_path'")
        sys.exit(1)

    file_path = sys.argv[1]
    variables_puts = extract_put_variables(file_path)
    variables_gets = extract_gets_variables(file_path)
    if variables_puts:
        print("Variables inside puts statements:", variables_puts)
    if variables_gets:
        print("Variables inside gets statements:", variables_gets)

if __name__ == "__main__":
    main()
