
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
typedef unsigned int uint32;
typedef signed int int32;
typedef unsigned short int bits16;
typedef unsigned int bits32;
typedef unsigned long long int bits64;
typedef signed long long int sbits64;
typedef int flag;
typedef int int8;
typedef int int16;
typedef unsigned int uint32;
typedef signed int int32;
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
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
 bits64 * z1Ptr)
{
 bits64 z0, z1;
 int8 negCount;
 negCount = (-count) & 63;
 if (count == 0)
 {
 z1 = a1;
 z0 = a0;
 }
 else if (count < 64)
 {
 z1 = (a0 << negCount) | (a1 != 0);
 z0 = a0 >> count;
 }
 else
 {
 if (count == 64)
 {
 z1 = a0 | (a1 != 0);
 }
 else
 {
 z1 = ((a0 | a1) != 0);
 }
 z0 = 0;
 }
 *z1Ptr = z1;
 *z0Ptr = z0;
}
 void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
 bits64 * z1Ptr)
{
 bits64 z1;
 z1 = a1 + b1;
 *z1Ptr = z1;
 *z0Ptr = a0 + b0 + (z1 < a1);
}
 void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
 bits64 * z1Ptr)
{
 *z1Ptr = a1 - b1;
 *z0Ptr = a0 - b0 - (a1 < b1);
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
static bits64
estimateDiv128To64 (bits64 a0, bits64 a1, bits64 b)
{
 bits64 b0, b1;
 bits64 rem0, rem1, term0, term1;
 bits64 z;
 if (b <= a0)
 return 0xFFFFFFFFFFFFFFFFLL;
 b0 = b >> 32;
 z = (b0 << 32 <= a0) ? 0xFFFFFFFF00000000LL : (a0 / b0) << 32;
 mul64To128 (b, z, &term0, &term1);
 sub128 (a0, a1, term0, term1, &rem0, &rem1);
 while (((sbits64) rem0) < 0)
 {
 z -= 0x100000000LL;
 b1 = b << 32;
 add128 (rem0, rem1, b0, b1, &rem0, &rem1);
 }
 rem0 = (rem0 << 32) | (rem1 >> 32);
 z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
 return z;
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
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
 int8 shiftCount;
 shiftCount = countLeadingZeros64 (zSig) - 1;
 return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
}
float64
int32_to_float64 (int32 a)
{
 flag zSign;
 uint32 absA;
 int8 shiftCount;
 bits64 zSig;
 if (a == 0)
 return 0;
 zSign = (a < 0);
 absA = zSign ? -a : a;
 shiftCount = countLeadingZeros32 (absA) + 21;
 zSig = absA;
 return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
}
static float64
addFloat64Sigs (float64 a, float64 b, flag zSign)
{
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig;
 int16 expDiff;
 aSig = extractFloat64Frac (a);
 aExp = extractFloat64Exp (a);
 bSig = extractFloat64Frac (b);
 bExp = extractFloat64Exp (b);
 expDiff = aExp - bExp;
 aSig <<= 9;
 bSig <<= 9;
 if (0 < expDiff)
 {
 if (aExp == 0x7FF)
 {
 if (aSig)
 return propagateFloat64NaN (a, b);
 return a;
 }
 if (bExp == 0)
 --expDiff;
 else
 bSig |= 0x2000000000000000LL;
 shift64RightJamming (bSig, expDiff, &bSig);
 zExp = aExp;
 }
 else if (expDiff < 0)
 {
 if (bExp == 0x7FF)
 {
 if (bSig)
 return propagateFloat64NaN (a, b);
 return packFloat64 (zSign, 0x7FF, 0);
 }
 if (aExp == 0)
 ++expDiff;
 else
 {
 aSig |= 0x2000000000000000LL;
 }
 shift64RightJamming (aSig, -expDiff, &aSig);
 zExp = bExp;
 }
 else
 {
 if (aExp == 0x7FF)
 {
 if (aSig | bSig)
 return propagateFloat64NaN (a, b);
 return a;
 }
 if (aExp == 0)
 return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 zSig = 0x4000000000000000LL + aSig + bSig;
 zExp = aExp;
 goto roundAndPack;
 }
 aSig |= 0x2000000000000000LL;
 zSig = (aSig + bSig) << 1;
 --zExp;
 if ((sbits64) zSig < 0)
 {
 zSig = aSig + bSig;
 ++zExp;
 }
roundAndPack:
 return roundAndPackFloat64 (zSign, zExp, zSig);
}
static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig;
 int16 expDiff;
 aSig = extractFloat64Frac (a);
 aExp = extractFloat64Exp (a);
 bSig = extractFloat64Frac (b);
 bExp = extractFloat64Exp (b);
 expDiff = aExp - bExp;
 aSig <<= 10;
 bSig <<= 10;
 if (0 < expDiff)
 goto aExpBigger;
 if (expDiff < 0)
 goto bExpBigger;
 if (aExp == 0x7FF)
 {
 if (aSig | bSig)
 return propagateFloat64NaN (a, b);
 float_raise (16);
 return 0x7FFFFFFFFFFFFFFFLL;
 }
 if (aExp == 0)
 {
 aExp = 1;
 bExp = 1;
 }
 if (bSig < aSig)
 goto aBigger;
 if (aSig < bSig)
 goto bBigger;
 return packFloat64 (float_rounding_mode == 3, 0, 0);
bExpBigger:
 if (bExp == 0x7FF)
 {
 if (bSig)
 return propagateFloat64NaN (a, b);
 return packFloat64 (zSign ^ 1, 0x7FF, 0);
 }
 if (aExp == 0)
 ++expDiff;
 else
 aSig |= 0x4000000000000000LL;
 shift64RightJamming (aSig, -expDiff, &aSig);
 bSig |= 0x4000000000000000LL;
bBigger:
 zSig = bSig - aSig;
 zExp = bExp;
 zSign ^= 1;
 goto normalizeRoundAndPack;
aExpBigger:
 if (aExp == 0x7FF)
 {
 if (aSig)
 return propagateFloat64NaN (a, b);
 return a;
 }
 if (bExp == 0)
 --expDiff;
 else
 bSig |= 0x4000000000000000LL;
 shift64RightJamming (bSig, expDiff, &bSig);
 aSig |= 0x4000000000000000LL;
aBigger:
 zSig = aSig - bSig;
 zExp = aExp;
normalizeRoundAndPack:
 --zExp;
 return normalizeRoundAndPackFloat64 (zSign, zExp, zSig);
}
float64
float64_add (float64 a, float64 b)
{
 flag aSign, bSign;
 aSign = extractFloat64Sign (a);
 bSign = extractFloat64Sign (b);
 if (aSign == bSign)
 return addFloat64Sigs (a, b, aSign);
 else
 return subFloat64Sigs (a, b, aSign);
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
float64
float64_div (float64 a, float64 b)
{
 flag aSign, bSign, zSign;
 int16 aExp, bExp, zExp;
 bits64 aSig, bSig, zSig;
 bits64 rem0, rem1, term0, term1;
 aSig = extractFloat64Frac (a);
 aExp = extractFloat64Exp (a);
 aSign = extractFloat64Sign (a);
 bSig = extractFloat64Frac (b);
 bExp = extractFloat64Exp (b);
 bSign = extractFloat64Sign (b);
 zSign = aSign ^ bSign;
 if (aExp == 0x7FF)
 {
 if (aSig)
 return propagateFloat64NaN (a, b);
 if (bExp == 0x7FF)
 {
 if (bSig)
 return propagateFloat64NaN (a, b);
 float_raise (16);
 return 0x7FFFFFFFFFFFFFFFLL;
 }
 return packFloat64 (zSign, 0x7FF, 0);
 }
 if (bExp == 0x7FF)
 {
 if (bSig)
 return propagateFloat64NaN (a, b);
 return packFloat64 (zSign, 0, 0);
 }
 if (bExp == 0)
 {
 if (bSig == 0)
 {
 if ((aExp | aSig) == 0)
 {
 float_raise (16);
 return 0x7FFFFFFFFFFFFFFFLL;
 }
 float_raise (2);
 return packFloat64 (zSign, 0x7FF, 0);
 }
 normalizeFloat64Subnormal (bSig, &bExp, &bSig);
 }
 if (aExp == 0)
 {
 if (aSig == 0)
 return packFloat64 (zSign, 0, 0);
 normalizeFloat64Subnormal (aSig, &aExp, &aSig);
 }
 zExp = aExp - bExp + 0x3FD;
 aSig = (aSig | 0x0010000000000000LL) << 10;
 bSig = (bSig | 0x0010000000000000LL) << 11;
 if (bSig <= (aSig + aSig))
 {
 aSig >>= 1;
 ++zExp;
 }
 zSig = estimateDiv128To64 (aSig, 0, bSig);
 if ((zSig & 0x1FF) <= 2)
 {
 mul64To128 (bSig, zSig, &term0, &term1);
 sub128 (aSig, 0, term0, term1, &rem0, &rem1);
 while ((sbits64) rem0 < 0)
 {
 --zSig;
 add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
 }
 zSig |= (rem1 != 0);
 }
 return roundAndPackFloat64 (zSign, zExp, zSig);
}
flag
float64_le (float64 a, float64 b)
{
 flag aSign, bSign;
 if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
 || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
 {
 float_raise (16);
 return 0;
 }
 aSign = extractFloat64Sign (a);
 bSign = extractFloat64Sign (b);
 if (aSign != bSign)
 return aSign || ((bits64) ((a | b) << 1) == 0);
 return (a == b) || (aSign ^ (a < b));
}
flag
float64_ge (float64 a, float64 b)
{
 return float64_le (b, a);
}
float64
float64_neg (float64 x)
{
 return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
}
float64
float64_abs (float64 x)
{
 return (x & 0x7fffffffffffffffULL);
}
float64
local_sin (float64 rad)
{
 float64 app;
 float64 diff;
 float64 m_rad2;
 int inc;
 app = diff = rad;
 inc = 1;
 m_rad2 = float64_neg (float64_mul (rad, rad));
 do
 {
 diff = float64_div (float64_mul (diff, m_rad2),
 int32_to_float64 ((2 * inc) * (2 * inc + 1)));
 app = float64_add (app, diff);
 inc++;
 }
 while (float64_ge (float64_abs (diff), 0x3ee4f8b588e368f1ULL));
 return app;
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
const float64 test_in[36] = {
 0x0000000000000000ULL,
 0x3fc65717fced55c1ULL,
 0x3fd65717fced55c1ULL,
 0x3fe0c151fdb20051ULL,
 0x3fe65717fced55c1ULL,
 0x3febecddfc28ab31ULL,
 0x3ff0c151fdb20051ULL,
 0x3ff38c34fd4fab09ULL,
 0x3ff65717fced55c1ULL,
 0x3ff921fafc8b0079ULL,
 0x3ffbecddfc28ab31ULL,
 0x3ffeb7c0fbc655e9ULL,
 0x4000c151fdb20051ULL,
 0x400226c37d80d5adULL,
 0x40038c34fd4fab09ULL,
 0x4004f1a67d1e8065ULL,
 0x40065717fced55c1ULL,
 0x4007bc897cbc2b1dULL,
 0x400921fafc8b0079ULL,
 0x400a876c7c59d5d5ULL,
 0x400becddfc28ab31ULL,
 0x400d524f7bf7808dULL,
 0x400eb7c0fbc655e9ULL,
 0x40100e993dca95a3ULL,
 0x4010c151fdb20051ULL,
 0x4011740abd996affULL,
 0x401226c37d80d5adULL,
 0x4012d97c3d68405bULL,
 0x40138c34fd4fab09ULL,
 0x40143eedbd3715b7ULL,
 0x4014f1a67d1e8065ULL,
 0x4015a45f3d05eb13ULL,
 0x40165717fced55c1ULL,
 0x401709d0bcd4c06fULL,
 0x4017bc897cbc2b1dULL,
 0x40186f423ca395cbULL
};
const float64 test_out[36] = {
 0x0000000000000000ULL,
 0x3fc63a1a335aadcdULL,
 0x3fd5e3a82b09bf3eULL,
 0x3fdfffff91f9aa91ULL,
 0x3fe491b716c242e3ULL,
 0x3fe8836f672614a6ULL,
 0x3febb67ac40b2bedULL,
 0x3fee11f6127e28adULL,
 0x3fef838b6adffac0ULL,
 0x3fefffffe1cbd7aaULL,
 0x3fef838bb0147989ULL,
 0x3fee11f692d962b4ULL,
 0x3febb67b77c0142dULL,
 0x3fe883709d4ea869ULL,
 0x3fe491b81d72d8e8ULL,
 0x3fe00000ea5f43c8ULL,
 0x3fd5e3aa4e0590c5ULL,
 0x3fc63a1d2189552cULL,
 0x3ea6aedffc454b91ULL,
 0xbfc63a1444ddb37cULL,
 0xbfd5e3a4e68f8f3eULL,
 0xbfdffffd494cf96bULL,
 0xbfe491b61cb9a3d3ULL,
 0xbfe8836eb2dcf815ULL,
 0xbfebb67a740aae32ULL,
 0xbfee11f5912d2157ULL,
 0xbfef838b1ac64afcULL,
 0xbfefffffc2e5dc8fULL,
 0xbfef838b5ea2e7eaULL,
 0xbfee11f7112dae27ULL,
 0xbfebb67c2c31cb4aULL,
 0xbfe883716e6fd781ULL,
 0xbfe491b9cd1b5d56ULL,
 0xbfe000021d0ca30dULL,
 0xbfd5e3ad0a69caf7ULL,
 0xbfc63a23c48863ddULL
};
int _467d09c270e4459960d54541b3880df5()
{
 int main_result;
 int i;
 main_result = 0;
 for (i = 0; i < 36; i++)
 {
 float64 result;
 result = local_sin (test_in[i]);
 main_result += (result != test_out[i]);
;
 }
;
 return main_result;
 }
int entry_point () {
 int _result = _467d09c270e4459960d54541b3880df5 ();
 return _result;
}
