import os
import argparse
import random

def split_data_randomly(in_src_file, in_tgt_file, out_folder, num_lines_test):
    os.makedirs(out_folder, exist_ok=True)

    with open(in_src_file, 'r', encoding='utf-8') as src_file:
        src_lines = src_file.readlines()

    with open(in_tgt_file, 'r', encoding='utf-8') as tgt_file:
        tgt_lines = tgt_file.readlines()

    if len(src_lines) != len(tgt_lines):
        raise ValueError("The source and target files must have the same number of lines.")

    total_lines = len(src_lines)
    test_line_indices = random.sample(range(total_lines), num_lines_test)

    # Initialize lists to hold the train and test lines
    train_src_lines = []
    train_tgt_lines = []
    test_src_lines = []
    test_tgt_lines = []

    for i in range(total_lines):
        if i in test_line_indices:
            test_src_lines.append(src_lines[i])
            test_tgt_lines.append(tgt_lines[i])
        else:
            train_src_lines.append(src_lines[i])
            train_tgt_lines.append(tgt_lines[i])

    # Write data to output files
    with open(os.path.join(out_folder, 'train.src'), 'w', encoding='utf-8') as train_src_file:
        train_src_file.writelines(train_src_lines)

    with open(os.path.join(out_folder, 'train.tgt'), 'w', encoding='utf-8') as train_tgt_file:
        train_tgt_file.writelines(train_tgt_lines)

    with open(os.path.join(out_folder, 'test.src'), 'w', encoding='utf-8') as test_src_file:
        test_src_file.writelines(test_src_lines)

    with open(os.path.join(out_folder, 'test.tgt'), 'w', encoding='utf-8') as test_tgt_file:
        test_tgt_file.writelines(test_tgt_lines)

    # Optionally, save the line numbers of test data for reference
    with open(os.path.join(out_folder, 'test_line_numbers.txt'), 'w', encoding='utf-8') as test_line_nums_file:
        test_line_nums_file.writelines([f"{line_num}\n" for line_num in sorted(test_line_indices)])

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Randomly split source and target files into train and test sets.")
    parser.add_argument("-in_src_file", required=True, help="Path to the source file")
    parser.add_argument("-in_tgt_file", required=True, help="Path to the target file")
    parser.add_argument("-out_folder", required=True, help="Path to the output folder")
    parser.add_argument("-num_line", type=int, required=True, help="Number of lines for the test set")
    args = parser.parse_args()

    split_data_randomly(args.in_src_file, args.in_tgt_file, args.out_folder, args.num_line)
