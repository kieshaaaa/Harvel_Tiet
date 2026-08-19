
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

const unsigned long imem[44] = {
 0x8fa40000,
 0x27a50004,
 0x24a60004,
 0x00041080,
 0x00c23021,
 0x0c100016,
 0x00000000,
 0x3402000a,
 0x0000000c,
 0x3c011001,
 0x34280000,
 0x00044880,
 0x01094821,
 0x8d2a0000,
 0x00055880,
 0x010b5821,
 0x8d6c0000,
 0x018a682a,
 0x11a00003,
 0xad2c0000,
 0xad6a0000,
 0x03e00008,
 0x27bdfff4,
 0xafbf0008,
 0xafb10004,
 0xafb00000,
 0x24100000,
 0x2a080008,
 0x1100000b,
 0x26110001,
 0x2a280008,
 0x11000006,
 0x26040000,
 0x26250000,
 0x0c100009,
 0x26310001,
 0x0810001e,
 0x26100001,
 0x0810001b,
 0x8fbf0008,
 0x8fb10004,
 0x8fb00000,
 0x27bd000c,
 0x03e00008,
};
int main_result;
const int A[8] = { 22, 5, -9, 3, -17, 38, 0, 11 };
const int outData[8] = { -17, -9, 0, 3, 5, 11, 22, 38 };
int _fb90620e66fbb0144fa01ba1018c6dcf()
{
 long long hilo;
 int reg[32];
 int Hi = 0;
 int Lo = 0;
 int pc = 0;
 int dmem[64];
 int j;
 unsigned int ins;
 int op;
 int rs;
 int rt;
 int rd;
 int shamt;
 int funct;
 short address;
 int tgtadr;
 while (1)
 {
 int i;
 int n_inst;
 n_inst = 0;
 main_result = 0;
 for (i = 0; i < 32; i++)
 {
 reg[i] = 0;
 }
 reg[29] = 0x7fffeffc;
 for (i = 0; i < 64; i++)
 {
 dmem[i] = A[i];
 }
 pc = 0x00400000;
 do
 {
 ins = imem[(((pc)&0x000000ff)>>2)];
 pc = pc + 4;
 op = ins >> 26;
 switch (op)
 {
 case 0:
 funct = ins & 0x3f;
 shamt = (ins >> 6) & 0x1f;
 rd = (ins >> 11) & 0x1f;
 rt = (ins >> 16) & 0x1f;
 rs = (ins >> 21) & 0x1f;
 switch (funct)
 {
 case 33:
 reg[rd] = reg[rs] + reg[rt];
 break;
 case 35:
 reg[rd] = reg[rs] - reg[rt];
 break;
 case 24:
 hilo = (long long) reg[rs] * (long long) reg[rt];
 Lo = hilo & 0x00000000ffffffffULL;
 Hi = ((int) (hilo >> 32)) & 0xffffffffUL;
 break;
 case 25:
 hilo =
 (unsigned long long) ((unsigned int) (reg[rs])) *
 (unsigned long long) ((unsigned int) (reg[rt]));
 Lo = hilo & 0x00000000ffffffffULL;
 Hi = ((int) (hilo >> 32)) & 0xffffffffUL;
 break;
 case 16:
 reg[rd] = Hi;
 break;
 case 18:
 reg[rd] = Lo;
 break;
 case 36:
 reg[rd] = reg[rs] & reg[rt];
 break;
 case 37:
 reg[rd] = reg[rs] | reg[rt];
 break;
 case 38:
 reg[rd] = reg[rs] ^ reg[rt];
 break;
 case 0:
 reg[rd] = reg[rt] << shamt;
 break;
 case 2:
 reg[rd] = reg[rt] >> shamt;
 break;
 case 4:
 reg[rd] = reg[rt] << reg[rs];
 break;
 case 6:
 reg[rd] = reg[rt] >> reg[rs];
 break;
 case 42:
 reg[rd] = reg[rs] < reg[rt];
 break;
 case 43:
 reg[rd] = (unsigned int) reg[rs] < (unsigned int) reg[rt];
 break;
 case 8:
 pc = reg[rs];
 break;
 default:
 pc = 0;
 break;
 }
 break;
 case 2:
 tgtadr = ins & 0x3ffffff;
 pc = tgtadr << 2;
 break;
 case 3:
 tgtadr = ins & 0x3ffffff;
 reg[31] = pc;
 pc = tgtadr << 2;
 break;
 default:
 address = ins & 0xffff;
 rt = (ins >> 16) & 0x1f;
 rs = (ins >> 21) & 0x1f;
 switch (op)
 {
 case 9:
 reg[rt] = reg[rs] + address;
 break;
 case 12:
 reg[rt] = reg[rs] & (unsigned short) address;
 break;
 case 13:
 reg[rt] = reg[rs] | (unsigned short) address;
 break;
 case 14:
 reg[rt] = reg[rs] ^ (unsigned short) address;
 break;
 case 35:
 reg[rt] = dmem[(((reg[rs] + address)&0x000000ff)>>2)];
 break;
 case 43:
 dmem[(((reg[rs] + address)&0x000000ff)>>2)] = reg[rt];
 break;
 case 15:
 reg[rt] = address << 16;
 break;
 case 4:
 if (reg[rs] == reg[rt])
 pc = pc - 4 + (address << 2);
 break;
 case 5:
 if (reg[rs] != reg[rt])
 pc = pc - 4 + (address << 2);
 break;
 case 1:
 if (reg[rs] >= 0)
 pc = pc - 4 + (address << 2);
 break;
 case 10:
 reg[rt] = reg[rs] < address;
 break;
 case 11:
 reg[rt] = (unsigned int) reg[rs] < (unsigned short) address;
 break;
 default:
 pc = 0;
 break;
 }
 break;
 }
 reg[0] = 0;
 n_inst = n_inst + 1;
 }
 while (pc != 0);
 main_result += (n_inst != 611);
 for (j = 0; j < 8; j++)
 {
 main_result += (dmem[j] != outData[j]);
 }
;
 return main_result;
 }
}
int entry_point () {
 int _result = _fb90620e66fbb0144fa01ba1018c6dcf ();
 return _result;
}
