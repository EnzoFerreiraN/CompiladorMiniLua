; ModuleID = "minilua_module"
target triple = "i686-pc-windows-gnu"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

declare double @"pow"(double %".1", double %".2")

declare double @"floor"(double %".1")

declare double @"fmod"(double %".1", double %".2")

declare i8* @"malloc"(i32 %".1")

declare i32 @"strlen"(i8* %".1")

declare i8* @"strcpy"(i8* %".1", i8* %".2")

declare i8* @"strcat"(i8* %".1", i8* %".2")

declare i32 @"scanf"(i8* %".1", ...)

declare i8* @"minilua_new_array"(i32 %".1")

declare void @"minilua_ensure_capacity"(i8* %".1", i32 %".2")

declare i32 @"minilua_array_length"(i8* %".1")

declare i8* @"minilua_get_data_ptr"(i8* %".1")

declare void @"minilua_print_number"(double %".1")

define i32 @"main"()
{
entry:
  %"s" = alloca i8*
  %".2" = bitcast [1 x i8]* @"empty_string_const" to i8*
  store i8* %".2", i8** %"s"
  %".4" = bitcast [22 x i8]* @"str_.1" to i8*
  %"s.1" = load i8*, i8** %"s"
  %".5" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = bitcast [3 x i8]* @"fmt_.3" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", i8* %"s.1")
  %".9" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %"n" = alloca double
  store double              0x0, double* %"n"
  %".12" = bitcast [22 x i8]* @"str_.5" to i8*
  %"n.1" = load double, double* %"n"
  %".13" = bitcast [4 x i8]* @"fmt_.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", i8* %".12")
  call void @"minilua_print_number"(double %"n.1")
  %".16" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  %"b" = alloca i1
  store i1 0, i1* %"b"
  %".19" = bitcast [23 x i8]* @"str_.8" to i8*
  %"b.1" = load i1, i1* %"b"
  %".20" = bitcast [4 x i8]* @"fmt_.9" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20", i8* %".19")
  %".22" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", i1 %"b.1")
  %".24" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  ret i32 0
}

@"empty_string_const" = internal constant [1 x i8] c"\00"
@"str_.1" = internal constant [22 x i8] c"Uninitialized string:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_.3" = internal constant [3 x i8] c"%s\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [22 x i8] c"Uninitialized number:\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [23 x i8] c"Uninitialized boolean:\00"
@"fmt_.9" = internal constant [4 x i8] c"%s \00"
@"fmt_.10" = internal constant [3 x i8] c"%d\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"