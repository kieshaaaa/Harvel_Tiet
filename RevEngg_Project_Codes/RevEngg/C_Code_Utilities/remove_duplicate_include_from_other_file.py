import os

def extract_includes(main_file):
    with open(main_file, 'r') as f:
        content = f.read()
    
    includes = []
    lines = content.split('\n')
    for line in lines:
        if line.strip().startswith("#include"):
            includes.append(line)

    return includes

def remove_includes_from_file(file_path, includes_to_remove):
    with open(file_path, 'r') as file:
        content = file.read()

    modified_content = content
    for include in includes_to_remove:
        modified_content = modified_content.replace(include, '')

    with open(file_path, 'w') as file:
        file.write(modified_content)

def process_files(main_file):
    
    folder_path = os.path.dirname(main_file)
    
    main_file_name = os.path.basename(main_file)
    includes_to_remove = extract_includes(main_file)
    print(includes_to_remove)
    for root, _, files in os.walk(folder_path):
        for file in files:
            if file != main_file_name:
                file_path = os.path.join(root, file)
                remove_includes_from_file(file_path, includes_to_remove)


