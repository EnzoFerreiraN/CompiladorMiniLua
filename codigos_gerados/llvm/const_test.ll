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

declare void @"minilua_check_index"(i32 %".1")

define i32 @"main"()
{
entry:
  %"PI" = alloca double
  store double 0x400921f9f01b866e, double* %"PI"
  %"PI.1" = load double, double* %"PI"
  call void @"minilua_print_number"(double %"PI.1")
  %".4" = bitcast [2 x i8]* @"nl_.1" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4")
  %"MAX" = alloca double
  store double 0x4059000000000000, double* %"MAX"
  %"MAX.1" = load double, double* %"MAX"
  call void @"minilua_print_number"(double %"MAX.1")
  %".8" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"MAX.2" = load double, double* %"MAX"
  %"gttmp" = fcmp ogt double %"MAX.2", 0x4049000000000000
  br i1 %"gttmp", label %"then_0", label %"else_0"
if_merge:
  ret i32 0
then_0:
  %".11" = bitcast [9 x i8]* @"str_.3" to i8*
  %".12" = bitcast [3 x i8]* @"fmt_.4" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", i8* %".11")
  %".14" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  br label %"if_merge"
else_0:
  br label %"if_merge"
}

@"nl_.1" = internal constant [2 x i8] c"\0a\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"str_.3" = internal constant [9 x i8] c"MAX > 50\00"
@"fmt_.4" = internal constant [3 x i8] c"%s\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"