#include <stdio.h>

// Helper function to convert 32-bit float (IEEE 754) from bit representation
// to C float type. In an HLS context, it's typically assumed the bit patterns
// correspond to standard float representations.
float bit_to_float(unsigned int bits) {
    float f;
    // This is a common way to reinterpret the bits as a float without
    // invoking undefined behavior via a cast or pointer manipulation.
    // It relies on the union trick, which is common in low-level programming,
    // though technically type-punning and potentially not standard C.
    // However, it reflects the hardware operation.
    union {
        unsigned int i;
        float f;
    } u;
    u.i = bits;
    f = u.f;
    return f;
}

// Helper function to convert 64-bit double (IEEE 754) from bit representation
// to C double type.
double bit_to_double(unsigned long long bits) {
    double d;
    union {
        unsigned long long i;
        double d;
    } u;
    u.i = bits;
    d = u.d;
    return d;
}

int entry_point(int millimeters, int *temptemp1, int *temptemp2) {
    // Constants:
    // 32'd1092616192 is the IEEE 754 single-precision bit pattern for 25.4
    // 64'd4612901990326777938 is the IEEE 754 double-precision bit pattern for 25.4

    // 1. Convert integer millimeters to float:
    float millimeters_f = (float)millimeters;

    // 2. First division (single-precision float division: millimeters / 25.4)
    // grp_fu_51_p0 = millimeters (input)
    // grp_fu_51_p1 = 32'd1092616192 (float 25.4)
    // grp_fu_51_p2 is the result of single-precision float division
    // div_reg_82 = grp_fu_51_p2 (float result in bits)
    float divisor_f = bit_to_float(1092616192); // 25.4
    float mm_in_inches_f = millimeters_f / divisor_f;

    // 3. Float to double precision conversion (fpext)
    // conv_fu_59_p1 = float to double conversion of div_reg_82
    double mm_in_inches_d = (double)mm_in_inches_f;

    // 4. Second division (double-precision division: mm_in_inches_d / 25.4)
    // din0 = conv_reg_87 (mm_in_inches_d in bits)
    // din1 = 64'd4612901990326777938 (double 25.4)
    // grp_fu_62_p2 is the result of double-precision division
    // div1_reg_92 = grp_fu_62_p2 (double result in bits)
    double divisor_d = bit_to_double(4612901990326777938ULL); // 25.4
    double result_d = mm_in_inches_d / divisor_d;

    // 5. Truncate double to float (fptrunc)
    // inches_fu_56_p1 = fptrunc of div1_reg_92 (double result to float)
    float result_f = (float)result_d;

    // Output assignments:
    // temptemp1 = millimeters (input, integer)
    // temptemp2 = inches_fu_56_p1 (float result, bit representation as integer)
    
    // The Verilog module takes a 32-bit integer 'millimeters' and returns two 32-bit integers
    // *temptemp1 and *temptemp2. The logic performs float/double math and then assigns
    // the result's bit-pattern to *temptemp2.

    *temptemp1 = millimeters;
    
    // Reinterpret the final float result back as a 32-bit integer bit pattern
    union {
        float f;
        int i;
    } u;
    u.f = result_f;
    *temptemp2 = u.i;

    // The entire calculation simplifies to:
    // (float)millimeters / 25.4f (single precision) -> (double) -> / 25.4 (double precision) -> (float)
    // which is effectively a very precise division by 25.4 * 25.4 = 645.16
    // The final C code should capture the essential computation:
    // The division in the hardware is for conversion of sq_mm_to_sq_inches, but the variable names suggest otherwise.
    // The calculation is: (float)millimeters / 25.4 / 25.4
    
    float final_result_f = (float)((double)((float)millimeters / 25.4f) / 25.4);
    
    // Reinterpret the final float result back as a 32-bit integer bit pattern
    union {
        float f;
        int i;
    } final_u;
    final_u.f = final_result_f;

    *temptemp1 = millimeters;
    *temptemp2 = final_u.i;

    return 0;
}