
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

typedef int flag;
typedef int int8;
typedef int int16;
typedef unsigned short int bits16;
typedef unsigned int bits32;
typedef unsigned long long int bits64;
typedef signed long long int sbits64;
typedef int flag;
typedef int int8;
typedef int int16;
typedef unsigned short int bits16;
typedef unsigned int bits32;
typedef unsigned long long int bits64;
typedef signed long long int sbits64;
typedef unsigned int float32;
typedef unsigned long long float64;
 void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
 bits64 z;
 if (count == 0)
 {
 z = a;
 }
 else if (count < 64)
 {
 z = (a >> count) | ((a << ((-count) & 63)) != 0);
 }
 else
 {
 z = (a != 0);
 }
 *zPtr = z;
}
 void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
 bits32 aHigh, aLow, bHigh, bLow;
 bits64 z0, zMiddleA, zMiddleB, z1;
 aLow = a;
 aHigh = a >> 32;
 bLow = b;
 bHigh = b >> 32;
 z1 = ((bits64) aLow) * bLow;
 zMiddleA = ((bits64) aLow) * bHigh;
 zMiddleB = ((bits64) aHigh) * bLow;
 z0 = ((bits64) aHigh) * bHigh;
 zMiddleA += zMiddleB;
 z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 zMiddleA <<= 32;
 z1 += zMiddleA;
 z0 += (z1 < zMiddleA);
 *z1Ptr = z1;
 *z0Ptr = z0;
}
static int8
countLeadingZeros32 (bits32 a)
{
 static const int8 countLeadingZerosHigh[256] = {
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
 int8 shiftCount;
 shiftCount = 0;
 if (a < 0x10000)
 {
 shiftCount += 16;
 a <<= 16;
 }
 if (a < 0x1000000)
 {
 shiftCount += 8;
 a <<= 8;
 }
 shiftCount += countLeadingZerosHigh[a >> 24];
 return shiftCount;
}
static int8
countLeadingZeros64 (bits64 a)
{
 int8 shiftCount;
 shiftCount = 0;
 if (a < ((bits64) 1) << 32)
 {
 shiftCount += 32;
 }
 else
 {
 a >>= 32;
 }
 shiftCount += countLeadingZeros32 (a);
 return shiftCount;
}
void
float_raise (int8 flags)
{
 float_exception_flags |= flags;
}
flag
float64_is_nan (float64 a)
{
 return (0xFFE0000000000000LL < (bits64) (a << 1));
}
flag
float64_is_signaling_nan (float64 a)
{
 return (((a >> 51) & 0xFFF) == 0xFFE) && (a & 0x0007FFFFFFFFFFFFLL);
}
static float64
propagateFloat64NaN (float64 a, float64 b)
{
 flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;
 aIsNaN = float64_is_nan (a);
 aIsSignalingNaN = float64_is_signaling_nan (a);
 bIsNaN = float64_is_nan (b);
 bIsSignalingNaN = float64_is_signaling_nan (b);
 a |= 0x0008000000000000LL;
 b |= 0x0008000000000000LL;
 if (aIsSignalingNaN | bIsSignalingNaN)
 float_raise (16);
 return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
}
int8 float_rounding_mode = 0;
int8 float_exception_flags = 0;
 bits64
extractFloat64Frac (float64 a)
{
 return a & 0x000FFFFFFFFFFFFFLL;
}
 int16
extractFloat64Exp (float64 a)
{
 return (a >> 52) & 0x7FF;
}
 flag
extractFloat64Sign (float64 a)
{
 return a >> 63;
}
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
 int8 shiftCount;
 shiftCount = countLeadingZeros64 (aSig) - 11;
 *zSigPtr = aSig << shiftCount;
 *zExpPtr = 1 - shiftCount;
}
 float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
 return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
}
static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
 int8 roundingMode;
 flag roundNearestEven, isTiny;
 int16 roundIncrement, roundBits;
 roundingMode = float_rounding_mode;
 roundNearestEven = (roundingMode == 0);
 roundIncrement = 0x200;
 if (!roundNearestEven)
 {
 if (roundingMode == 1)
 {
 roundIncrement = 0;
 }
 else
 {
 roundIncrement = 0x3FF;
 if (zSign)
 {
 if (roundingMode == 2)
 roundIncrement = 0;
 }
 else
 {
 if (roundingMode == 3)
 roundIncrement = 0;
 }
 }
 }
 roundBits = zSig & 0x3FF;
 if (0x7FD <= (bits16) zExp)
 {
 if ((0x7FD < zExp)
 || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 {
 float_raise (8 | 1);
 return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 }
 if (zExp < 0)
 {
 isTiny = (1 == 1)
 || (zExp < -1)
 || (zSig + roundIncrement < 0x8000000000000000LL);
 shift64RightJamming (zSig, -zExp, &zSig);
 zExp = 0;
 roundBits = zSig & 0x3FF;
 if (isTiny && roundBits)
 float_raise (4);
 }
 }
 if (roundBits)
 float_exception_flags |= 1;
 zSig = (zSig + roundIncrement) >> 10;
 zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 if (zSig == 0)
 zExp = 0;
 return packFloat64 (zSign, zExp, zSig);
}
float64
float64_mul (float64 a, float64 b)
{
 flag aSign, bSign, zSign;
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig0, zSig1;
 aSig = extractFloat64Frac (a);
 aExp = extractFloat64Exp (a);
 aSign = extractFloat64Sign (a);
 bSig = extractFloat64Frac (b);
 bExp = extractFloat64Exp (b);
 bSign = extractFloat64Sign (b);
 zSign = aSign ^ bSign;
 if (aExp == 0x7FF)
 {
 if (aSig || ((bExp == 0x7FF) && bSig))
 return propagateFloat64NaN (a, b);
 if ((bExp | bSig) == 0)
 {
 float_raise (16);
 return 0x7FFFFFFFFFFFFFFFLL;
 }
 return packFloat64 (zSign, 0x7FF, 0);
 }
 if (bExp == 0x7FF)
 {
 if (bSig)
 return propagateFloat64NaN (a, b);
 if ((aExp | aSig) == 0)
 {
 float_raise (16);
 return 0x7FFFFFFFFFFFFFFFLL;
 }
 return packFloat64 (zSign, 0x7FF, 0);
 }
 if (aExp == 0)
 {
 if (aSig == 0)
 return packFloat64 (zSign, 0, 0);
 normalizeFloat64Subnormal (aSig, &aExp, &aSig);
 }
 if (bExp == 0)
 {
 if (bSig == 0)
 return packFloat64 (zSign, 0, 0);
 normalizeFloat64Subnormal (bSig, &bExp, &bSig);
 }
 zExp = aExp + bExp - 0x3FF;
 aSig = (aSig | 0x0010000000000000LL) << 10;
 bSig = (bSig | 0x0010000000000000LL) << 11;
 mul64To128 (aSig, bSig, &zSig0, &zSig1);
 zSig0 |= (zSig1 != 0);
 if (0 <= (sbits64) (zSig0 << 1))
 {
 zSig0 <<= 1;
 --zExp;
 }
 return roundAndPackFloat64 (zSign, zExp, zSig0);
}
double
ullong_to_double (unsigned long long x)
{
 union
 {
 double d;
 unsigned long long ll;
 } t;
 t.ll = x;
 return t.d;
}
const float64 a_input[20] = {
 0x7FF0000000000000ULL,
 0x7FFF000000000000ULL,
 0x7FF0000000000000ULL,
 0x7FF0000000000000ULL,
 0x3FF0000000000000ULL,
 0x0000000000000000ULL,
 0x3FF0000000000000ULL,
 0x0000000000000000ULL,
 0x8000000000000000ULL,
 0x3FF0000000000000ULL,
 0x3FF0000000000000ULL,
 0x4000000000000000ULL,
 0x3FD0000000000000ULL,
 0xC000000000000000ULL,
 0xBFD0000000000000ULL,
 0x4000000000000000ULL,
 0xBFD0000000000000ULL,
 0xC000000000000000ULL,
 0x3FD0000000000000ULL,
 0x0000000000000000ULL
};
const float64 b_input[20] = {
 0xFFFFFFFFFFFFFFFFULL,
 0xFFF0000000000000ULL,
 0x0000000000000000ULL,
 0x3FF0000000000000ULL,
 0xFFFF000000000000ULL,
 0x7FF0000000000000ULL,
 0x7FF0000000000000ULL,
 0x3FF0000000000000ULL,
 0x3FF0000000000000ULL,
 0x0000000000000000ULL,
 0x8000000000000000ULL,
 0x3FD0000000000000ULL,
 0x4000000000000000ULL,
 0xBFD0000000000000ULL,
 0xC000000000000000ULL,
 0xBFD0000000000000ULL,
 0x4000000000000000ULL,
 0x3FD0000000000000ULL,
 0xC000000000000000ULL,
 0x0000000000000000ULL
};
const float64 z_output[20] = {
 0xFFFFFFFFFFFFFFFFULL,
 0x7FFF000000000000ULL,
 0x7FFFFFFFFFFFFFFFULL,
 0x7FF0000000000000ULL,
 0xFFFF000000000000ULL,
 0x7FFFFFFFFFFFFFFFULL,
 0x7FF0000000000000ULL,
 0x0000000000000000ULL,
 0x8000000000000000ULL,
 0x0000000000000000ULL,
 0x8000000000000000ULL,
 0x3FE0000000000000ULL,
 0x3FE0000000000000ULL,
 0x3FE0000000000000ULL,
 0x3FE0000000000000ULL,
 0xBFE0000000000000ULL,
 0xBFE0000000000000ULL,
 0xBFE0000000000000ULL,
 0xBFE0000000000000ULL,
 0x0000000000000000ULL
};
int _1951507f6d10c83131009f870be2618c()
{
 int main_result;
 int i;
 float64 x1, x2;
 main_result = 0;
 for (i = 0; i < 20; i++)
 {
 float64 result;
 x1 = a_input[i];
 x2 = b_input[i];
 result = float64_mul (x1, x2);
 main_result += (result != z_output[i]);
;
 }
;
 return main_result;
 }
int entry_point () {
 int _result = _1951507f6d10c83131009f870be2618c ();
 return _result;
}
