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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 1)
  store i8* %".3", i8** %"arr"
  %"arr_ptr" = load i8*, i8** %"arr"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj" = sub i32 %".5", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to i1*
  %"elem_ptr" = getelementptr i1, i1* %".8", i32 %"idx_adj"
  store i1 1, i1* %"elem_ptr"
  %".10" = bitcast [8 x i8]* @"str_.1" to i8*
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".11" = fptosi double 0x3ff0000000000000 to i32
  %"idx_adj.1" = sub i32 %".11", 1
  %".12" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".13" = bitcast i8* %".12" to i1*
  %"elem_ptr.1" = getelementptr i1, i1* %".13", i32 %"idx_adj.1"
  %"elem_val" = load i1, i1* %"elem_ptr.1"
  %".14" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i8* %".10")
  %".16" = bitcast [3 x i8]* @"fmt_.3" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", i1 %"elem_val")
  %".18" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18")
  %".20" = bitcast [18 x i8]* @"str_.5" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".21" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.2" = sub i32 %".21", 1
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".23" = bitcast i8* %".22" to i1*
  %"elem_ptr.2" = getelementptr i1, i1* %".23", i32 %"idx_adj.2"
  %"elem_val.1" = load i1, i1* %"elem_ptr.2"
  %".24" = bitcast [4 x i8]* @"fmt_.6" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24", i8* %".20")
  %".26" = bitcast [3 x i8]* @"fmt_.7" to i8*
  %".27" = call i32 (i8*, ...) @"printf"(i8* %".26", i1 %"elem_val.1")
  %".28" = bitcast [2 x i8]* @"nl_.8" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".30" = fptosi double 0x4000000000000000 to i32
  %"idx_adj.3" = sub i32 %".30", 1
  %".31" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".32" = bitcast i8* %".31" to i1*
  %"elem_ptr.3" = getelementptr i1, i1* %".32", i32 %"idx_adj.3"
  %"elem_val.2" = load i1, i1* %"elem_ptr.3"
  br i1 %"elem_val.2", label %"then_0", label %"else_0"
if_merge:
  ret i32 0
then_0:
  %".34" = bitcast [22 x i8]* @"str_.9" to i8*
  %".35" = bitcast [3 x i8]* @"fmt_.10" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35", i8* %".34")
  %".37" = bitcast [2 x i8]* @"nl_.11" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37")
  br label %"if_merge"
else_0:
  %".40" = bitcast [21 x i8]* @"str_.12" to i8*
  %".41" = bitcast [3 x i8]* @"fmt_.13" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", i8* %".40")
  %".43" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  br label %"if_merge"
}

@"str_.1" = internal constant [8 x i8] c"arr[1]:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_.3" = internal constant [3 x i8] c"%d\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [18 x i8] c"arr[2] (default):\00"
@"fmt_.6" = internal constant [4 x i8] c"%s \00"
@"fmt_.7" = internal constant [3 x i8] c"%d\00"
@"nl_.8" = internal constant [2 x i8] c"\0a\00"
@"str_.9" = internal constant [22 x i8] c"arr[2] is true (ERRO)\00"
@"fmt_.10" = internal constant [3 x i8] c"%s\00"
@"nl_.11" = internal constant [2 x i8] c"\0a\00"
@"str_.12" = internal constant [21 x i8] c"arr[2] is false (OK)\00"
@"fmt_.13" = internal constant [3 x i8] c"%s\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"