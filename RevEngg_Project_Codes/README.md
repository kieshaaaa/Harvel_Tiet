# RevEngg_Project_Codes   

### Description   

  This folder, named **RevEngg_Project_Codes** contains a collection of Python and shell scripts to automate tasks of this Reverse-Engineering Project.

### Prerequisites
   
  Before using this project, you'll need to ensure that you have the following prerequisites installed on your system:
   
  - [Xilinx Vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html)
  - [cscope](https://cscope.sourceforge.net/)

### * preprocess_c.py:    
  This Python script, **preprocess_C.py**, is designed to streamline the preprocessing of multiple C files into a single C code file. This script does the following:   
    
  - Scans a specified folder for C code files ('.c' and '.h' files).
  - Copy the specified input folder to the output directory to make the changes we need.
  - Search for the file name which having the main function.
  - Hash the main function by giving the unique name to the main function.
  - Adding the entry_point function and calling the hash name of the main function.
  - Passing the main file name to the gcc(GNU Compiler Collection) to only do the preprocessing stage, it actually merge the multiple .c and .h files into the single .c file. 
  - Cleaning the single .c file by simply Removing the comments, Normalizing the spaces, Replacing the tabs with the single space and Replacing string literals with "STR".

  #### Usage
  1. Navigate to the '/Reverse-Engineering/RevEngg_Project' folder.
  2. To preprocess C files, run the following command:
   ```
    python3 preprocess_c.py -input_folder /path/to/input_folder -output_folder /path/to/output_folder -db
   ```
 >  /path/to/input_folder : Path to the folder containg multiple C files.   
 >  /path/to/output_folder : Path to the folder where preprocessed C file will be saved.   
 > [-db] : It is an optional term if the -db is written during the command it will save only the single file in the output, If -db is not given then it will contain one more folder having the multiple file same C program but change is it not having the main instead of main it having the entry_point as from where the intialization of program starts.   

### * C_to_V.sh:   
  This Shell script, **C_to_V.sh**, is designed to convert the C program(which having main function as the strating of program) into the Verilog code with the help of the **Xilinx Vitis HLS**. This script does the following: 
     
  - Scans the folder having C Code files ('.c' and '.h' files).   
  - Fetch the all function names which is called from the main function of the specified C Program.     
  - Fetch the top function name which is called first from the main function.
  - Fetch the file name in which the main fuction is exists.
  - Pass the name of main function file, output folder, project name and the top function name to the xilinx commmand file argument.   
   
  #### Usage
  1. Navigate to the '/Reverse-engineering/RevEngg_Project' folder.
  2. To convert the C program into the verilog code, run the C_to_V.sh
   ```
    bash C_to_V.sh /path/to/input_folder /path/to/output_folder
   ```
 > /path/to/input_folder : Path of the folder containg the C program and having main as the starting point.   
 > /Path/to/output_folder : Path of the output folder in which the folder contaning the  Verilog code should save.   

### * C_to_V_EP.sh:   
  This Shell script, **C_to_V_EP.sh**, is designed to convert the C program(which having entry_point function as the starting of program) into Verilog code with the help of the **Xilinx Vitis HLS**. This script does the following:
     
  - Scans the folder for having C Code files ('.c' and '.h' files).   
  - Search if the entry point is 'entry_point_' or 'entry_point'.
  - Fetch the file name containg the entry point.
  - Pass the name of main function file, output folder, project name and the top function name 'entry_point' or 'entry_point_' to the xilinx commmand file argument>
   
  #### Usage
  1. Navigate to the '/Reverse-engineering/RevEngg_Project' folder.
  2. To convert the C program into the verilog code, run the C_to_V_EP.sh
   ```
    bash C_to_V_EP.sh /path/to/input_folder /path/to/output_folder
   ```
 > /path/to/input_folder : Path of the folder containg the C program and having entry_point function as the starting point of the the C program.   
 > /Path/to/output_folder : Path of the output folder in which the folde contaning the  Verilog code should save.   

### * preprocess_V.py:   
  This Python script, **preprocess_V.py**, is designed to streamline the preprocessing the multiple Verilog files into the single Verilog file. This script does the following: 
    
  - Scans the folder having the Verilog code files ('.v' and '.dat' files).
  - Insert the data of the .dat file in the .v file where it is call from .
  - Concat the all .v files into a single .v file and during the concatination it will add the top module at first by finding out the top module.
  - Cleaning the single .v file by simply Removing the comments.
  - adding "endmodule" at the end of the each module if it not contaning the endmodule when the next module is strating in the single .v file.
   
  #### Usage
  1. Navigate to the '/Reverse-engineering/RevEngg_Project' folder.
  2. To preprocess Verilog files, run the preprocess_V.py
   
    python3 preprocess_V.py -input_folder /path/to/input_folder -output_folder /path/to/output_folder

 > /path/to/input_folder : Path of the folder containing the mulitple .v and .dat files of the verilog code .
 > /path/to/output_folder : Path of the output folder where the single .v file will save. 
----------------------------------
# Internal Modules
### * xilinx.py:
  This Python script, **xilinx.py**, is designed to do only the synthesis of the C Program through xilinx vitis HLS.
   
  #### Usage
  1. Navigate to the '/Reverse-engineering/RevEngg_Project' folder.
  2. To Synthesis the C Program, run the xilinx.py
   
     ```
     python3 xilinx.py -input_file </path/to/(.c)file> -output_folder </path/to/output_folder> -project <project_name> -top <entry_point_func_name>
     ```

 > /path/to/(.c)file : Path of the file containing the function body for which Synthesis want, in simple the path os the file in which top function defined.
 > /path/to/output_folder : Path of the folder in which synthesized code will be save.
 > PROJECT_NAME : To give the name to a project is compalsary.
 > TOP_FUNCTION : To give the name of the function for which synthesis will happed.    
    
# Note:    
 During this project i use some commands for this work, this commands i used is in my system so folder name may varry for yours.[LINK OF README.md](./RevEngg/C_Code_Utilities_/README.md)    
 
