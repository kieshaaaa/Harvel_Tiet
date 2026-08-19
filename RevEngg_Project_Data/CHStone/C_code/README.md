# C_code

This folder contains the C Language programs which is in folders(adpmc, aes, blowfish, dfadd, dfdiv, dfmul, dfsin, mips, sha) along 
with two shell script which is first extractMain.sh and second extractMain_cscope.sh below is the detailed info given about this
two shell script

## Requirements
```
sudo apt-get install cscope
```

Cscope is a text screen based source browsing tool.Using cscope, you can easily search for where symbols are used and defined.Cscope is designed to answer questions like:
Where is this variable used?
What is the value of this preprocessor symbol?
Where is this function in the source files?
What functions call this function?
What functions are called by this function?
Where does the message "out of space" come from?
Where is this source file in the directory structure?
What files include this header file?

## Instructions

* extractMain.sh:	
			
     This shell script takes the folder which contains the multiple c file of the one c program, by running this shell script 
     it will help to find the main() method from the multiple file and save the output in the provided output folder as in
     creating the same file name which contain the main method(if main() method is present in main.c then output is saved in
     output_folder/main.c)

     To Run this shell script:
     ```
     bash extractMain.sh /path/C_folder/ ./path/output_folder
     ```   
     Example:
     ```
     bash extractMain.sh aes/ ./temp
     ```
	
* extractMain_cscope.sh:	

    This shell script takes the folder which contains the multiple c file of the one c program, by running this shell script
    we will extract the function names which are called from the main function and saved the output in the form of json . 

    To Run this shell script:
    ```
    bash extractMain_cscope.sh /path/C_folder/ ./path/output_folder
    ```
    Example:
    ```
    bash extractMain_cscope.sh aes/ ./temp
