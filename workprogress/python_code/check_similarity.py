import os
import difflib
import argparse

# Global variable for similarity threshold
SIMILARITY_THRESHOLD = 100

def read_file(filepath):
    """Read and return the content of a file."""
    with open(filepath, 'r') as file:
        return file.read()

def calculate_similarity(file1_content, file2_content):
    """Calculate the similarity between two files."""
    sequence = difflib.SequenceMatcher(None, file1_content, file2_content)
    return sequence.ratio() * 100

def find_similar_files(input_folder):
    """Find and print pairs of files that are at least SIMILARITY_THRESHOLD% similar."""
    files = os.listdir(input_folder)
    paths = [os.path.join(input_folder, file) for file in files if file.endswith('.c')]
    num_files = len(paths)
    
    for i in range(num_files):
        for j in range(i + 1, num_files):
            file1_content = read_file(paths[i])
            file2_content = read_file(paths[j])
            similarity = calculate_similarity(file1_content, file2_content)
            if similarity >= SIMILARITY_THRESHOLD:
                print(f"{os.path.basename(paths[i])} and {os.path.basename(paths[j])} are {similarity:.2f}% similar.")

if __name__ == "__main__":
    # Set up command line argument parsing
    parser = argparse.ArgumentParser(description="Find similar C code files in a directory.")
    parser.add_argument("input_folder", type=str, help="Path to the input folder containing C code files.")
    
    # Parse arguments
    args = parser.parse_args()

    # Call the function with the provided command line argument
    find_similar_files(args.input_folder)
