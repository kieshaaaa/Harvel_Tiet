#include <math.h>

int entry_point ( int a , int b , int c , int *temptemp1 , int *temptemp2 , int *temptemp3 ) {
  union { float f; int i; } root_storage;
  long long b_sq = (long long)b * b;
  long long four_ac = 4LL * a * c;
  long long delta_ll = b_sq - four_ac;
  float delta_f = (float)delta_ll;
  
  if ( delta_f > 0.0f ) {
    double a_d = (double)a;
    double b_d = (double)b;
    double delta_d = (double)delta_ll;
    double two_a = 2.0 * a_d;
    double minus_b = (double)-b;
    
    double minus_b_div_two_a = minus_b / two_a;
    double sqrt_delta_div_two_a = sqrt(delta_d) / two_a;
    
    double root1_d = minus_b_div_two_a + sqrt_delta_div_two_a;
    double root2_d = minus_b_div_two_a - sqrt_delta_div_two_a;

    root_storage.f = (float)root1_d;
    *temptemp1 = root_storage.i;
    
    root_storage.f = (float)root2_d;
    *temptemp2 = root_storage.i;
  } else if ( delta_f == 0.0f ) {
    float a_f = (float)a;
    float b_f = (float)b;
    float two_a = 2.0f * a_f;
    float root = -b_f / two_a;

    root_storage.f = root;
    *temptemp3 = root_storage.i;
  }
  return 0;
}```