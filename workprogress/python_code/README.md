To find the file which having the "<conio.h>" and not having the "getch" :
find /path/to/search -type f -name '*.c' -exec grep -l 'conio.h' {} \; | xargs grep -L 'getch'

To find number of the code which cannot compile and throw error  :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -name '*.c' -exec bash -c 'gcc -o /dev/null "{}" 2>&1 | grep -q "error"' \; -printf "%p\n" | wc -l


To save the path of the code which are compile succesfully and save that all path in the successful_compilation.txt :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -name '*.c' -exec bash -c 'gcc -o /dev/null "{}" 2>&1 | grep -q "error" || echo "{}"' \; > successful_compilations.txt

To Run the preprocess_C.py with the root folder name : 
find /home/virubuntu/c_code/progrm_test_5/output -maxdepth 1 -type d -exec python3 /home/virubuntu/Reverse-Engineering/RevEngg_Project/preprocess_C.py -in_f {} -out_f /home/virubuntu/c_code/progrm_test_5/final_output \;

To Run the c_to_v.sh after the custom preprocessing of c files:
find /home/virubuntu/c_code/progrm_test_5/output -type f -name "*.c" -exec bash /home/virubuntu/Reverse-Engineering/RevEngg_Project/c_to_v.sh {} /home/virubuntu/c_code/progrm_test_5/final_final_output \;

To make the testbench for our preprocessed c code :
find /home/virubuntu/c_code/progrm_test_5/output -type f -name "testbench_main.c" -exec python3 /home/virubuntu/c_code/python_code/testbench_generate.py {} \;

To count the files which contain the libraries "graphics.h, dos.h, conio.h" :
find /home/virubuntu/Reverse-Engineering/Crawler/Non-Similar -type f -exec grep -l -E '<graphics.h>|<conio.h>|<dos.h>' {} + | wc -l 
