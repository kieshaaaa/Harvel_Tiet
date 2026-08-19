# RevEngg_Project_Data   

### Description   

  This folder, named **RevEngg_Project_Data** contains a Data which we use to make this project successful.  
   
### * All_c_codes_plus_selenium:   
   
This folder contains 1677 C language codes.   
   
### * All_c_codes_plus_selenium_c_1379:   
   
This folder contains 1379 C language codes which is compatible for the xilinx software to make the equivalent verilog codes.
  
###  * Consolidated_data_final:   
  
This folder contains the two files [consolidate.src](./RevEngg_Project_Data/Consolidated_data_final/consolidate.src) and  [consolidate.tgt](./RevEngg_Project_Data/Consolidated_data_final/consolidate.tgt) 
   
1. consolidate.src: This file contains the 1379 C language codes line by line. We divide this file data into two file [train.src](./RevEngg_Project_Data/Consolidated_data_final_1375/train.src) and [test.src](./RevEngg_Project_Data/Consolidated_data_final_1375/test.src)   
2. consolidate.tgt: This file contains the 1379 verilog codes line by line. We divide this file data into two file <file [train.tgt](./RevEngg_Project_Data/Consolidated_data_final_1375/train.tgt) and [test.tgt](./RevEngg_Project_Data/Consolidated_data_final_1375/test.tgt)   
Note: The C language codes in file consolidate.src is equivalent codes of the verilog codes in file consolidate.tgt line by line and vice verse. Hence the consolidate.src and consolidate.tgt both file have same number of the lines that is 1379 lines.   
   
### * Train_1375_Test_5_data:   
   
This folder contains the four files [train.src](./RevEngg_Project_Data/Train_1375_Test_5_data/train.src), [test.src](./RevEngg_Project_Data/Train_1375_Test_5_data/test.src), [train.tgt](./RevEngg_Project_Data/Train_1375_Test_5_data/train.tgt) and [test.tgt](./RevEngg_Project_Data/Train_1375_Test_5_data/test.tgt)   
   
1. train.src: This file contains the 1375 line, where each line contain the Verilog code. This file can use for training purpose, which we can provide to the model to train it.   
2. train.tgt: This file contains the 1375 line, where each line contain the equivelent C language code. This file act as the label for the data in the train.src file.    
3. test.src: This file contains the 5 line, where each line contain the Verilog code. This file can act as the testing purpose to the model.   
4. test.tgt: This file contains the 5 line, where each line contain the the equivalent C language code. This file act as label for the data in the test.src file.   
   
### * dataset_verilog:  
   
This folder contains the 1379 equivalent Verilog codes of the 1379 C Language codes in the folder All_c_codes_plus_selenium_c_1379.  
    
