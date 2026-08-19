#To find the file which having the "<conio.h>" and not having the "getch" :
find /path/to/search -type f -name '*.c' -exec grep -l 'conio.h' {} \; | xargs grep -L 'getch'

#To find number of the code which cannot compile and throw error  :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -name '*.c' -exec bash -c 'gcc -o /dev/null "{}" 2>&1 | grep -q "error"' \; -printf "%p\n" | wc -l


#To save the path of the code which are compile succesfully and save that all path in the successful_compilation.txt :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -name '*.c' -exec bash -c 'gcc -o /dev/null "{}" 2>&1 | grep -q "error" || echo "{}"' \; > successful_compilations.txt

#To Run the preprocess_C.py with the root folder name : 
find /home/virubuntu/c_code/progrm_test_5/output -maxdepth 1 -type d -exec python3 /home/virubuntu/Reverse-Engineering/RevEngg_Project/preprocess_C.py -in_f {} -out_f /home/virubuntu/c_code/progrm_test_5/final_output \;

#To Run the c_to_v.sh after the custom preprocessing of c files:
find /home/virubuntu/c_code/progrm_test_5/output -type f -name "*.c" -exec bash /home/virubuntu/Reverse-Engineering/RevEngg_Project/c_to_v.sh {} /home/virubuntu/c_code/progrm_test_5/final_final_output \;

#To make the testbench for our preprocessed c code :
find /home/virubuntu/c_code/progrm_test_5/output -type f -name "testbench_main.c" -exec python3 /home/virubuntu/c_code/python_code/testbench_generate.py {} \;

#To count the files which contain the libraries "graphics.h, dos.h, conio.h" :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -exec grep -l -E '<graphics.h>|<conio.h>|<dos.h>' {} + | wc -l 

December 19

#To generate the testbench for the each entry_point test bench 
find /home/virubuntu/c_code/dataset_C -type f -name "*.c" -exec python3 testbench_generate.py {} \;

#Send each c code to folder to the preprocess_C_.py to do customizide preprocessing on the c code for desired output
find /home/virubuntu/c_code/c_code_crawler -maxdepth 1 -type d -exec python3 preprocess_C_.py -in_f {} -out_f /home/virubuntu/c_code/dataset_c -db \;

#concat all gcc.log file for checking which c codes is not compiled n why 
find /path/to/root_folder -name 'gcc.log' -exec cat {} \; -exec echo '#-----------------------------------------------------------#' \; > concatenated_logs.txt

# converstion of the c code into the verilog code by using the xilinx
find /home/virubuntu/c_code/dataset_C_succesful_compiled -type f -name "*.c" -exec bash c_to_v.sh {} /home/virubuntu/c_code/dataset_C_verilog \;

#try_new...
python3 rename_remove_SC.py /home/virubuntu/c_code/dataset_c

#c_code/python_code 
python3 copy_file_in_folder.py /home/virubuntu/c_code/dataset_c /home/virubuntu/c_code/dataset_C

#preprocess_V.py to the code.
find /home/virubuntu/c_code/dataset_c_verilog_new -maxdepth 1 -type d -exec python3 preprocess_V.py -input_folder {} -output_folder /home/virubuntu/c_code/dataset_verilog_final_ \;

#to find out which folder contains the .tcl files
find -type f -name "*.tcl" -exec dirname {} \; | sort | uniq -c

# To collect the equivalent c code of the verilog code from the c dataset 
python3 c_data.py -in_folder_v /home/virubuntu/c_code/dataset_verilog_final_  -in_folder_c /home/virubuntu/c_code/dataset_c_new  -out_folder /home/virubuntu/c_code/dataset_c_final

#linter
find /home/parag/Reverse-Engineering/RevEngg_Project_Data/work_after_selenium/preprocessing_c_selenium -type f -name "*.c" -exec python3 clang_format_file.py {} /home/parag/Reverse-Engineering/RevEngg_Project_Data/work_after_selenium/c_format_selenium \;

#To added the spaces  
find /home/parag/Reverse-Engineering/RevEngg_Project_Data/work_after_selenium/c_format_selenium -type f -name "*.c" -exec python3 add_spaces_ft_symbols_file.py {} \;


