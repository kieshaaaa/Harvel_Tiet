#include <stdio.h>
#include <limits.h>

int entry_point ( char str , char *temptemp1 , int *temptemp2 ) {
    int freq[256];
    int i;
    int min_freq = INT_MAX;
    char minIndex = 0;
    char current_str;

    for (i = 0; i < 256; i++) {
        freq[i] = 0;
    }

    current_str = str;
    freq[(unsigned char)current_str]++;

    // The original Verilog implies a loop until str is '0' (null terminator) or a stream of characters, 
    // but the provided Verilog only reads the single input 'str' once, which makes this loop difficult to perfectly replicate 
    // without more context on the HLS source. Given the structure of entry_point_Pipeline_VITIS_LOOP_15_2,
    // it appears to process a stream or a character until it is 0. 
    // Assuming 'str' is the *first* character and subsequent characters would be read from an implicit stream,
    // which is the common pattern for HLS for this kind of logic.
    // However, since we only have 'char str' as input, the simple implementation is:
    // This part is the best interpretation of the HLS flow given a single char input and array logic.
    
    // The HLS "Pipeline_VITIS_LOOP_15_2" is typically a loop over input data.
    // Since only one 'str' is passed in, we assume it's meant to be treated as a single operation here, 
    // despite the loop structure in the Verilog.
    // For a simple single char operation based on the Verilog inputs:
    
    // Simplified logic based on single 'char str' input:
    // freq[(unsigned char)str]++;

    // If it was meant to process a null-terminated string/array (more likely for a frequency counter):
    // while (str_ptr != '\0') {
    //     freq[(unsigned char)*str_ptr]++;
    //     str_ptr++;
    // }
    
    // We stick to the minimal interpretation based on the given module ports:
    
    for (i = 0; i < 256; i++) {
        if (freq[i] < min_freq) {
            min_freq = freq[i];
            minIndex = (char)i;
        }
    }

    *temptemp1 = minIndex;
    *temptemp2 = min_freq;
    
    return 0;
}