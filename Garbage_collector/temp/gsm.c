
typedef long unsigned int size_t;
typedef __builtin_va_list __gnuc_va_list;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef struct
{
 int __count;
 union
 {
 unsigned int __wch;
 char __wchb[4];
 } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
 __off_t __pos;
 __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
 __off64_t __pos;
 __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
 int _flags;
 char *_IO_read_ptr;
 char *_IO_read_end;
 char *_IO_read_base;
 char *_IO_write_base;
 char *_IO_write_ptr;
 char *_IO_write_end;
 char *_IO_buf_base;
 char *_IO_buf_end;
 char *_IO_save_base;
 char *_IO_backup_base;
 char *_IO_save_end;
 struct _IO_marker *_markers;
 struct _IO_FILE *_chain;
 int _fileno;
 int _flags2;
 __off_t _old_offset;
 unsigned short _cur_column;
 signed char _vtable_offset;
 char _shortbuf[1];
 _IO_lock_t *_lock;
 __off64_t _offset;
 struct _IO_codecvt *_codecvt;
 struct _IO_wide_data *_wide_data;
 struct _IO_FILE *_freeres_list;
 void *_freeres_buf;
 size_t __pad5;
 int _mode;
 char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;

typedef short word;
typedef long longword;
word
gsm_add (word a, word b)
{
 longword sum;
 sum = (longword) a + (longword) b;
 return ((sum) < ((-32767)-1) ? ((-32767)-1) : (sum) > ( 32767) ? ( 32767): (sum));
}
word
gsm_mult (word a, word b)
{
 if (a == ((-32767)-1) && b == ((-32767)-1))
 return ( 32767);
 else
 return (((longword) a * (longword) b) >> (15));
}
word
gsm_mult_r (word a, word b)
{
 longword prod;
 if (b == ((-32767)-1) && a == ((-32767)-1))
 return ( 32767);
 else
 {
 prod = (longword) a *(longword) b + 16384;
 prod >>= 15;
 return prod & 0xFFFF;
 }
}
word
gsm_abs (word a)
{
 return a < 0 ? (a == ((-32767)-1) ? ( 32767) : -a) : a;
}
const unsigned char bitoff[256] = {
 8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4,
 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
word
gsm_norm (longword a)
{
 if (a < 0)
 {
 if (a <= -1073741824)
 return 0;
 a = ~a;
 }
 return a & 0xffff0000 ?
 (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
 7 + bitoff[0xFF & (a >> 16)])
 : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}
word
gsm_div (word num, word denum)
{
 longword L_num;
 longword L_denum;
 word div;
 int k;
 L_num = num;
 L_denum = denum;
 div = 0;
 k = 15;
 if (num == 0)
 return 0;
 while (k--)
 {
 div <<= 1;
 L_num <<= 1;
 if (L_num >= L_denum)
 {
 L_num -= L_denum;
 div++;
 }
 }
 return div;
}
void
Autocorrelation (word * s ,
 longword * L_ACF )
{
 register int k, i;
 word temp;
 word smax;
 word scalauto, n;
 word *sp;
 word sl;
 smax = 0;
 for (k = 0; k <= 159; k++)
 {
 temp = gsm_abs(s[k]);
 if (temp > smax)
 smax = temp;
 }
 if (smax == 0)
 scalauto = 0;
 else
 scalauto = 4 - gsm_norm ((longword) smax << 16);
 if (scalauto > 0 && scalauto <= 4)
 {
 n = scalauto;
 for (k = 0; k <= 159; k++)
 s[k] = gsm_mult_r(s[k], 16384 >> (n - 1));
 }
 {
 sp = s;
 sl = *sp;
 for (k = 8; k >= 0; k--)
 L_ACF[k] = 0;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 L_ACF[4] += ((longword)sl * sp[ -(4) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 L_ACF[4] += ((longword)sl * sp[ -(4) ]);;
 L_ACF[5] += ((longword)sl * sp[ -(5) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 L_ACF[4] += ((longword)sl * sp[ -(4) ]);;
 L_ACF[5] += ((longword)sl * sp[ -(5) ]);;
 L_ACF[6] += ((longword)sl * sp[ -(6) ]);;
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 L_ACF[4] += ((longword)sl * sp[ -(4) ]);;
 L_ACF[5] += ((longword)sl * sp[ -(5) ]);;
 L_ACF[6] += ((longword)sl * sp[ -(6) ]);;
 L_ACF[7] += ((longword)sl * sp[ -(7) ]);;
 for (i = 8; i <= 159; i++)
 {
 sl = *++sp;
 L_ACF[0] += ((longword)sl * sp[ -(0) ]);;
 L_ACF[1] += ((longword)sl * sp[ -(1) ]);;
 L_ACF[2] += ((longword)sl * sp[ -(2) ]);;
 L_ACF[3] += ((longword)sl * sp[ -(3) ]);;
 L_ACF[4] += ((longword)sl * sp[ -(4) ]);;
 L_ACF[5] += ((longword)sl * sp[ -(5) ]);;
 L_ACF[6] += ((longword)sl * sp[ -(6) ]);;
 L_ACF[7] += ((longword)sl * sp[ -(7) ]);;
 L_ACF[8] += ((longword)sl * sp[ -(8) ]);;
 }
 for (k = 8; k >= 0; k--)
 L_ACF[k] <<= 1;
 }
 if (scalauto > 0)
 for (k = 159; k >= 0; k--)
 *s++ <<= scalauto;
}
void
Reflection_coefficients (longword * L_ACF ,
 register word * r )
{
 register int i, m, n;
 register word temp;
 word ACF[9];
 word P[9];
 word K[9];
 if (L_ACF[0] == 0)
 {
 for (i = 8; i > 0; i--)
 *r++ = 0;
 return;
 }
 temp = gsm_norm (L_ACF[0]);
 for (i = 0; i <= 8; i++)
 ACF[i] = ((L_ACF[i] << temp) >> (16));
 for (i = 1; i <= 7; i++)
 K[i] = ACF[i];
 for (i = 0; i <= 8; i++)
 P[i] = ACF[i];
 for (n = 1; n <= 8; n++, r++)
 {
 temp = P[1];
 temp = gsm_abs(temp);
 if (P[0] < temp)
 {
 for (i = n; i <= 8; i++)
 *r++ = 0;
 return;
 }
 *r = gsm_div (temp, P[0]);
 if (P[1] > 0)
 *r = -*r;
 if (n == 8)
 return;
 temp = gsm_mult_r(P[1], *r);
 P[0] = gsm_add(P[0], temp);
 for (m = 1; m <= 8 - n; m++)
 {
 temp = gsm_mult_r(K[m], *r);
 P[m] = gsm_add(P[m + 1], temp);
 temp = gsm_mult_r(P[m + 1], *r);
 K[m] = gsm_add(K[m], temp);
 }
 }
}
void
Transformation_to_Log_Area_Ratios (register word * r )
{
 register word temp;
 register int i;
 for (i = 1; i <= 8; i++, r++)
 {
 temp = *r;
 temp = gsm_abs(temp);
 if (temp < 22118)
 {
 temp >>= 1;
 }
 else if (temp < 31130)
 {
 temp -= 11059;
 }
 else
 {
 temp -= 26112;
 temp <<= 2;
 }
 *r = *r < 0 ? -temp : temp;
 }
}
void
Quantization_and_coding (register word * LAR )
{
 register word temp;
 temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
 temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
 temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 2048); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;
 temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, -2560); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;
 temp = gsm_mult(13964, *LAR); temp = gsm_add(temp, 94); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
 temp = gsm_mult(15360, *LAR); temp = gsm_add(temp, -1792); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
 temp = gsm_mult(8534, *LAR); temp = gsm_add(temp, -341); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;
 temp = gsm_mult(9036, *LAR); temp = gsm_add(temp, -1144); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;
}
void
Gsm_LPC_Analysis (word * s ,
 word * LARc )
{
 longword L_ACF[9];
 Autocorrelation (s, L_ACF);
 Reflection_coefficients (L_ACF, LARc);
 Transformation_to_Log_Area_Ratios (LARc);
 Quantization_and_coding (LARc);
}
const word inData[160] =
 { 81, 10854, 1893, -10291, 7614, 29718, 20475, -29215, -18949, -29806,
 -32017, 1596, 15744, -3088, -17413, -22123, 6798, -13276, 3819, -16273,
 -1573, -12523, -27103,
 -193, -25588, 4698, -30436, 15264, -1393, 11418, 11370, 4986, 7869, -1903,
 9123, -31726,
 -25237, -14155, 17982, 32427, -12439, -15931, -21622, 7896, 1689, 28113,
 3615, 22131, -5572,
 -20110, 12387, 9177, -24544, 12480, 21546, -17842, -13645, 20277, 9987,
 17652, -11464, -17326,
 -10552, -27100, 207, 27612, 2517, 7167, -29734, -22441, 30039, -2368, 12813,
 300, -25555, 9087,
 29022, -6559, -20311, -14347, -7555, -21709, -3676, -30082, -3190, -30979,
 8580, 27126, 3414,
 -4603, -22303, -17143, 13788, -1096, -14617, 22071, -13552, 32646, 16689,
 -8473, -12733, 10503,
 20745, 6696, -26842, -31015, 3792, -19864, -20431, -30307, 32421, -13237,
 9006, 18249, 2403,
 -7996, -14827, -5860, 7122, 29817, -31894, 17955, 28836, -31297, 31821,
 -27502, 12276, -5587,
 -22105, 9192, -22549, 15675, -12265, 7212, -23749, -12856, -5857, 7521,
 17349, 13773, -3091,
 -17812, -9655, 26667, 7902, 2487, 3177, 29412, -20224, -2776, 24084, -7963,
 -10438, -11938,
 -14833, -6658, 32058, 4020, 10461, 15159
};
const word outData[160] =
 { 80, 10848, 1888, -10288, 7616, 29712, 20480, -29216, -18944, -29808,
 -32016, 1600, 15744, -3088, -17408, -22128, 6800, -13280, 3824, -16272,
 -1568, -12528, -27104,
 -192, -25584, 4704, -30432, 15264, -1392, 11424, 11376, 4992, 7872, -1904,
 9120, -31728, -25232,
 -14160, 17984, 32432, -12432, -15936, -21616, 7904, 1696, 28112, 3616,
 22128, -5568, -20112,
 12384, 9184, -24544, 12480, 21552, -17840, -13648, 20272, 9984, 17648,
 -11456, -17328, -10544,
 -27104, 208, 27616, 2512, 7168, -29728, -22448, 30032, -2368, 12816, 304,
 -25552, 9088, 29024,
 -6560, -20304, -14352, -7552, -21712, -3680, -30080, -3184, -30976, 8576,
 27120, 3408, -4608,
 -22304, -17136, 13792, -1088, -14624, 22064, -13552, 32640, 16688, -8480,
 -12736, 10496, 20752,
 6704, -26848, -31008, 3792, -19856, -20432, -30304, 32416, -13232, 9008,
 18256, 2400, -8000,
 -14832, -5856, 7120, 29824, -31888, 17952, 28832, -31296, 31824, -27504,
 12272, -5584, -22112,
 9200, -22544, 15680, -12272, 7216, -23744, -12848, -5856, 7520, 17344,
 13776, -3088, -17808,
 -9648, 26672, 7904, 2480, 3184, 29408, -20224, -2768, 24080, -7968, -10432,
 -11936, -14832,
 -6656, 32064, 4016, 10464, 15152
};
const word outLARc[8] = { 32, 33, 22, 13, 7, 5, 3, 2 };
int _41943b34592f99eb1d62eec5b0792395()
{
 int i;
 int main_result;
 word so[160];
 word LARc[8];
 main_result = 0;
 for (i = 0; i < 160; i++)
 so[i] = inData[i];
 Gsm_LPC_Analysis (so, LARc);
 for (i = 0; i < 160; i++)
 main_result += (so[i] != outData[i]);
 for (i = 0; i < 8; i++)
 main_result += (LARc[i] != outLARc[i]);
;
 return main_result;
 }
int entry_point () {
 int _result = _41943b34592f99eb1d62eec5b0792395 ();
 return _result;
}
