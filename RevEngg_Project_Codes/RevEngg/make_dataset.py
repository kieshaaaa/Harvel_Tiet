#make the insertion line by line in the two file .src and .tgt by fetching the .c file and the . v file code convert it into the line . 

import os
import argparse

def process_files(input_folder_c, input_folder_v, output_file_src, output_file_tgt):
    c_files = [f for f in os.listdir(input_folder_c) if f.endswith(".c")]

    if not (os.path.exists(output_file_src) and os.path.exists(output_file_tgt)):
        print("Both .src and .tgt output files must exist. Exiting...")
        return

    for c_file in c_files:
        c_file_path = os.path.join(input_folder_c, c_file)
        v_file_name = os.path.splitext(c_file)[0] + ".v"
        v_file_path = os.path.join(input_folder_v, v_file_name)

        if v_file_name in os.listdir(input_folder_v):
            with open(c_file_path, "r") as c_file, open(v_file_path, "r") as v_file:
                tgt_lines = [line.strip() for line in c_file]
                src_lines = [line.strip() for line in v_file]

                src_line = " , ".join(src_lines)
                tgt_line = (" @ ".join(tgt_lines))

                with open(output_file_src, "r") as out_src_file, open(output_file_tgt, "r") as out_tgt_file:
                    # Read existing content
                    existing_src_content = out_src_file.readlines()
                    existing_tgt_content = out_tgt_file.readlines()

                    # Check if .src and .tgt files have the same number of lines
                    if len(existing_src_content) == len(existing_tgt_content):
                        # Append new content
                        with open(output_file_src, "a") as out_src_file, open(output_file_tgt, "a") as out_tgt_file:
                            out_src_file.write(src_line + "\n")
                            out_tgt_file.write(tgt_line + "\n")
                    else:
                        print("Mismatch in the number of lines between .src and .tgt files.")
                        print("Skipping appending for files:", c_file, v_file)




if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Process files with command-line arguments.")
    parser.add_argument("-in_f_c", "--input_folder_c", type=str, help="Input folder for C data")
    parser.add_argument("-in_f_v", "--input_folder_v", type=str, help="Input folder for V data")
    parser.add_argument("-out_f_src", "--output_file_src", type=str, help="Output .src file")
    parser.add_argument("-out_f_tgt", "--output_file_tgt", type=str, help="Output .tgt file")

    args = parser.parse_args()

    input_folder_c = args.input_folder_c
    input_folder_v = args.input_folder_v
    output_file_src = args.output_file_src
    output_file_tgt = args.output_file_tgt

    if not (input_folder_c and input_folder_v and output_file_src and output_file_tgt):
        print("All input arguments are required. Exiting..\n -in_f_c , --input_folder_c <Path of Input folder for C data> \n -in_f_v , --input_folder_v <Path of Input folder for V data> \n -out_f_src , --output_file_src <Path of Output .src file> \n -out_f_tgt , --output_file_tgt <Path of Output .tgt file>")


    elif not (os.path.exists(output_file_src) and os.path.exists(output_file_tgt)):
        print("Both .src and .tgt output files must exist. Exiting...")
    else:
        process_files(input_folder_c, input_folder_v, output_file_src, output_file_tgt)
