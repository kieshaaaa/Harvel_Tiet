/* File: hello.i */
%module hello

%{
#include "hello.c"
%}

extern void say_hello();
