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
  %"arr" = alloca i8*
  store i8* null, i8** %"arr"
  %".3" = call i8* @"minilua_new_array"(i32 4)
  store i8* %".3", i8** %"arr"
  %".5" = bitcast [6 x i8]* @"str_.1" to i8*
  %"arr_ptr" = load i8*, i8** %"arr"
  %".6" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".6")
  %"idx_adj" = sub i32 %".6", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".9" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".10" = bitcast i8* %".9" to i8**
  %"elem_ptr" = getelementptr i8*, i8** %".10", i32 %"idx_adj"
  store i8* %".5", i8** %"elem_ptr"
  %".12" = bitcast [6 x i8]* @"str_.2" to i8*
  %"arr_ptr.1" = load i8*, i8** %"arr"
  %".13" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".13")
  %"idx_adj.1" = sub i32 %".13", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".16" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".17" = bitcast i8* %".16" to i8**
  %"elem_ptr.1" = getelementptr i8*, i8** %".17", i32 %"idx_adj.1"
  store i8* %".12", i8** %"elem_ptr.1"
  %".19" = bitcast [9 x i8]* @"str_.3" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr"
  %".20" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".20")
  %"idx_adj.2" = sub i32 %".20", 1
  %".22" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".23" = bitcast i8* %".22" to i8**
  %"elem_ptr.2" = getelementptr i8*, i8** %".23", i32 %"idx_adj.2"
  %"elem_val" = load i8*, i8** %"elem_ptr.2"
  %"is_null" = icmp eq i8* %"elem_val", null
  %".24" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str" = select  i1 %"is_null", i8* %".24", i8* %"elem_val"
  %".25" = bitcast [4 x i8]* @"fmt_.4" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i8* %".19")
  %".27" = bitcast [3 x i8]* @"fmt_.5" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %"safe_str")
  %".29" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %".31" = bitcast [18 x i8]* @"str_.7" to i8*
  %"arr_ptr.3" = load i8*, i8** %"arr"
  %".32" = fptosi double 0x4000000000000000 to i32
  call void @"minilua_check_index"(i32 %".32")
  %"idx_adj.3" = sub i32 %".32", 1
  %".34" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".35" = bitcast i8* %".34" to i8**
  %"elem_ptr.3" = getelementptr i8*, i8** %".35", i32 %"idx_adj.3"
  %"elem_val.1" = load i8*, i8** %"elem_ptr.3"
  %"is_null.1" = icmp eq i8* %"elem_val.1", null
  %".36" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.1" = select  i1 %"is_null.1", i8* %".36", i8* %"elem_val.1"
  %".37" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", i8* %".31")
  %".39" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %"safe_str.1")
  %".41" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %".43" = bitcast [9 x i8]* @"str_.11" to i8*
  %"arr_ptr.4" = load i8*, i8** %"arr"
  %".44" = fptosi double 0x4008000000000000 to i32
  call void @"minilua_check_index"(i32 %".44")
  %"idx_adj.4" = sub i32 %".44", 1
  %".46" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".47" = bitcast i8* %".46" to i8**
  %"elem_ptr.4" = getelementptr i8*, i8** %".47", i32 %"idx_adj.4"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.4"
  %"is_null.2" = icmp eq i8* %"elem_val.2", null
  %".48" = bitcast [1 x i8]* @"empty_string_const" to i8*
  %"safe_str.2" = select  i1 %"is_null.2", i8* %".48", i8* %"elem_val.2"
  %".49" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".43")
  %".51" = bitcast [3 x i8]* @"fmt_.13" to i8*
  %".52" = call i32 (i8*, ...) @"printf"(i8* %".51", i8* %"safe_str.2")
  %".53" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".54" = call i32 (i8*, ...) @"printf"(i8* %".53")
  ret i32 0
}

@"str_.1" = internal constant [6 x i8] c"Hello\00"
@"str_.2" = internal constant [6 x i8] c"World\00"
@"str_.3" = internal constant [9 x i8] c"Index 1:\00"
@"empty_string_const" = internal constant [1 x i8] c"\00"
@"fmt_.4" = internal constant [4 x i8] c"%s \00"
@"fmt_.5" = internal constant [3 x i8] c"%s\00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
@"str_.7" = internal constant [18 x i8] c"Index 2 (uninit):\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [9 x i8] c"Index 3:\00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"fmt_.13" = internal constant [3 x i8] c"%s\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"