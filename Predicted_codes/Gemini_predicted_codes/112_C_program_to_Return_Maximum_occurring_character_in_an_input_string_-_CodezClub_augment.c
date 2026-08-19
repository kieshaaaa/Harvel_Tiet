#include <stdio.h>
#include <stdint.h>
#include <string.h>

// Assuming entry_point_entry_point_Pipeline_VITIS_LOOP_10_1, entry_point_entry_point_Pipeline_VITIS_LOOP_15_2,
// and entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 are inlined as functions or their logic is directly implemented.

// Simulated RAM for 'freq'
uint32_t freq_ram[256];

// Initialization loop (entry_point_entry_point_Pipeline_VITIS_LOOP_10_1)
void init_freq_array() {
    for (int i = 0; i < 256; i++) {
        freq_ram[i] = 0;
    }
}

// Counting loop (entry_point_entry_point_Pipeline_VITIS_LOOP_15_2)
// This module seems to process the input 'str' (a single character in this Verilog context) and increment its count.
// Since the overall module 'entry_point' has 'str' as an input [7:0], this suggests it processes one character at a time.
// The provided Verilog is a High-Level Synthesis (HLS) output, which often transforms sequential C code into a state machine for hardware.
// The presence of a loop ('VITIS_LOOP_15_2') that seems to be processing a single character ('str_load') indicates this loop
// might be designed to handle multiple clock cycles for a single operation, or the original C code was an array processing
// loop unrolled into a pipelined stage.
// Given the context of converting a loop for a single character input, we will interpret this as incrementing the count for 'str'.

void process_char(uint8_t str_char) {
    if (str_char != 0) { // Check for null terminator equivalent or end-of-data
        // Read the current count
        uint32_t current_count = freq_ram[str_char];
        // Increment and write back
        freq_ram[str_char] = current_count + 1;
    }
}

// Finding max index loop (entry_point_entry_point_Pipeline_VITIS_LOOP_22_3)
uint8_t find_max_index() {
    uint8_t maxIndex = 0;
    uint32_t maxCount = 0;

    for (int i = 0; i < 256; i++) {
        if (freq_ram[i] > maxCount) {
            maxCount = freq_ram[i];
            maxIndex = (uint8_t)i;
        }
    }
    return maxIndex;
}

// Main function logic derived from the 'entry_point' module
int entry_point(uint8_t str_char_input, uint8_t *temptemp1, uint32_t *temptemp2) {
    // State machine logic is simplified into sequential function calls.
    // The Verilog module suggests a state flow:
    // state1: Read start, move to state2
    // state2: Run init_freq_array (VITIS_LOOP_10_1) -> state3
    // state3: Read 'str' into str_read_reg_115, move to state4
    // state4: Run process_char (VITIS_LOOP_15_2) with str_read_reg_115 -> state5
    // state5: Move to state6
    // state6: Run find_max_index (VITIS_LOOP_22_3) to get maxIndex_out -> state7
    // state7: Assign maxIndex_loc_fu_38 (maxIndex_out) to temptemp1 -> state8
    // state8: Assign freq_q0 (freq_ram[maxIndex_loc]) to temptemp2, set ap_done -> state1

    // State 2: Initialization
    init_freq_array();

    // State 3 & 4: Processing the input character
    // In a system that processes a stream/array of characters, this part would be a loop over the stream/array.
    // Given the single 'str' input in Verilog, we process that single character.
    process_char(str_char_input);

    // State 6: Finding Max Index
    uint8_t maxIndex = find_max_index();

    // State 7: Output temptemp1
    *temptemp1 = maxIndex;

    // State 8: Output temptemp2 (freq_q0 is freq_ram[maxIndex_loc_fu_38])
    *temptemp2 = freq_ram[maxIndex];

    return 0; // ap_return is 32'd0
}