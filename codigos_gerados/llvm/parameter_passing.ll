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

define void @"changeInt"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %".4" = bitcast [19 x i8]* @"str_.1" to i8*
  %"n.2" = load double, double* %"n.1"
  %".5" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  call void @"minilua_print_number"(double %"n.2")
  %".8" = bitcast [2 x i8]* @"nl_.3" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  store double 0x408f380000000000, double* %"n.1"
  %".11" = bitcast [24 x i8]* @"str_.4" to i8*
  %"n.3" = load double, double* %"n.1"
  %".12" = bitcast [4 x i8]* @"fmt_.5" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", i8* %".11")
  call void @"minilua_print_number"(double %"n.3")
  %".15" = bitcast [2 x i8]* @"nl_.6" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  ret void
}

@"str_.1" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"nl_.3" = internal constant [2 x i8] c"\0a\00"
@"str_.4" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.5" = internal constant [4 x i8] c"%s \00"
@"nl_.6" = internal constant [2 x i8] c"\0a\00"
define void @"changeNumber"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %".4" = bitcast [19 x i8]* @"str_.7" to i8*
  %"n.2" = load double, double* %"n.1"
  %".5" = bitcast [4 x i8]* @"fmt_.8" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  call void @"minilua_print_number"(double %"n.2")
  %".8" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  store double 0x408f3feb851eb852, double* %"n.1"
  %".11" = bitcast [24 x i8]* @"str_.10" to i8*
  %"n.3" = load double, double* %"n.1"
  %".12" = bitcast [4 x i8]* @"fmt_.11" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", i8* %".11")
  call void @"minilua_print_number"(double %"n.3")
  %".15" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15")
  ret void
}

@"str_.7" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.8" = internal constant [4 x i8] c"%s \00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.11" = internal constant [4 x i8] c"%s \00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
define void @"changeBool"(i1 %"b")
{
entry:
  %"b.1" = alloca i1
  store i1 %"b", i1* %"b.1"
  %".4" = bitcast [19 x i8]* @"str_.13" to i8*
  %"b.2" = load i1, i1* %"b.1"
  %".5" = bitcast [4 x i8]* @"fmt_.14" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = bitcast [3 x i8]* @"fmt_.15" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", i1 %"b.2")
  %".9" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %"b.3" = load i1, i1* %"b.1"
  %"nottmp" = xor i1 %"b.3", 1
  %".11" = uitofp i1 %"nottmp" to double
  %".12" = fcmp one double %".11",              0x0
  store i1 %".12", i1* %"b.1"
  %".14" = bitcast [24 x i8]* @"str_.17" to i8*
  %"b.4" = load i1, i1* %"b.1"
  %".15" = bitcast [4 x i8]* @"fmt_.18" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", i8* %".14")
  %".17" = bitcast [3 x i8]* @"fmt_.19" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", i1 %"b.4")
  %".19" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  ret void
}

@"str_.13" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.14" = internal constant [4 x i8] c"%s \00"
@"fmt_.15" = internal constant [3 x i8] c"%d\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"str_.17" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.18" = internal constant [4 x i8] c"%s \00"
@"fmt_.19" = internal constant [3 x i8] c"%d\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
define void @"changeArrayContent"(i8* %"arr")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %".4" = bitcast [26 x i8]* @"str_.21" to i8*
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  %"elem_val" = load double, double* %"elem_ptr"
  %".9" = bitcast [4 x i8]* @"fmt_.22" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".4")
  call void @"minilua_print_number"(double %"elem_val")
  %".12" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"arr_ptr.1" = load i8*, i8** %"arr.1"
  %".14" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".14")
  %"idx_adj.1" = sub i32 %".14", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".17" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".18" = bitcast i8* %".17" to double*
  %"elem_ptr.1" = getelementptr double, double* %".18", i32 %"idx_adj.1"
  store double 0x408f380000000000, double* %"elem_ptr.1"
  %".20" = bitcast [31 x i8]* @"str_.24" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr.1"
  %".21" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".21")
  %"idx_adj.2" = sub i32 %".21", 1
  %".23" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".24" = bitcast i8* %".23" to double*
  %"elem_ptr.2" = getelementptr double, double* %".24", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".25" = bitcast [4 x i8]* @"fmt_.25" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i8* %".20")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".28" = bitcast [2 x i8]* @"nl_.26" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28")
  ret void
}

@"str_.21" = internal constant [26 x i8] c"  [Func] Recebido arr[1]:\00"
@"fmt_.22" = internal constant [4 x i8] c"%s \00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"
@"str_.24" = internal constant [31 x i8] c"  [Func] Alterado arr[1] para:\00"
@"fmt_.25" = internal constant [4 x i8] c"%s \00"
@"nl_.26" = internal constant [2 x i8] c"\0a\00"
define void @"changeArrayRef"(i8* %"arr")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %".4" = bitcast [26 x i8]* @"str_.27" to i8*
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  %"elem_val" = load double, double* %"elem_ptr"
  %".9" = bitcast [4 x i8]* @"fmt_.28" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".4")
  call void @"minilua_print_number"(double %"elem_val")
  %".12" = bitcast [2 x i8]* @"nl_.29" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12")
  %"new_arr" = alloca i8*
  store i8* null, i8** %"new_arr"
  %".15" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".15", i8** %"new_arr"
  %"arr_ptr.1" = load i8*, i8** %"new_arr"
  %".17" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".17")
  %"idx_adj.1" = sub i32 %".17", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".20" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".21" = bitcast i8* %".20" to double*
  %"elem_ptr.1" = getelementptr double, double* %".21", i32 %"idx_adj.1"
  store double 0x405bc00000000000, double* %"elem_ptr.1"
  %"new_arr.1" = load i8*, i8** %"new_arr"
  store i8* %"new_arr.1", i8** %"arr.1"
  %".24" = bitcast [62 x i8]* @"str_.30" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr.1"
  %".25" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".25")
  %"idx_adj.2" = sub i32 %".25", 1
  %".27" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".28" = bitcast i8* %".27" to double*
  %"elem_ptr.2" = getelementptr double, double* %".28", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".29" = bitcast [4 x i8]* @"fmt_.31" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".24")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".32" = bitcast [2 x i8]* @"nl_.32" to i8*
  %".33" = call i32 (i8*, ...) @"printf"(i8* %".32")
  ret void
}

@"str_.27" = internal constant [26 x i8] c"  [Func] Recebido arr[1]:\00"
@"fmt_.28" = internal constant [4 x i8] c"%s \00"
@"nl_.29" = internal constant [2 x i8] c"\0a\00"
@"str_.30" = internal constant [62 x i8] c"  [Func] Variavel 'arr' agora aponta para novo array. arr[1]:\00"
@"fmt_.31" = internal constant [4 x i8] c"%s \00"
@"nl_.32" = internal constant [2 x i8] c"\0a\00"
define i32 @"main"()
{
entry:
  %".2" = bitcast [40 x i8]* @"str_.33" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.34" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.35" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [28 x i8]* @"str_.36" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.37" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"i" = alloca double
  store double 0x4024000000000000, double* %"i"
  %".13" = bitcast [7 x i8]* @"str_.39" to i8*
  %"i.1" = load double, double* %"i"
  %".14" = bitcast [4 x i8]* @"fmt_.40" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i8* %".13")
  call void @"minilua_print_number"(double %"i.1")
  %".17" = bitcast [2 x i8]* @"nl_.41" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17")
  %"i.2" = load double, double* %"i"
  call void @"changeInt"(double %"i.2")
  %".20" = bitcast [22 x i8]* @"str_.42" to i8*
  %"i.3" = load double, double* %"i"
  %".21" = bitcast [4 x i8]* @"fmt_.43" to i8*
  %".22" = call i32 (i8*, ...) @"printf"(i8* %".21", i8* %".20")
  call void @"minilua_print_number"(double %"i.3")
  %".24" = bitcast [2 x i8]* @"nl_.44" to i8*
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  %".26" = bitcast [27 x i8]* @"str_.45" to i8*
  %".27" = bitcast [3 x i8]* @"fmt_.46" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".26")
  %".29" = bitcast [2 x i8]* @"nl_.47" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  %"n" = alloca double
  store double 0x4016000000000000, double* %"n"
  %".32" = bitcast [7 x i8]* @"str_.48" to i8*
  %"n.1" = load double, double* %"n"
  %".33" = bitcast [4 x i8]* @"fmt_.49" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".32")
  call void @"minilua_print_number"(double %"n.1")
  %".36" = bitcast [2 x i8]* @"nl_.50" to i8*
  %".37" = call i32 (i8*, ...) @"printf"(i8* %".36")
  %"n.2" = load double, double* %"n"
  call void @"changeNumber"(double %"n.2")
  %".39" = bitcast [23 x i8]* @"str_.51" to i8*
  %"n.3" = load double, double* %"n"
  %".40" = bitcast [4 x i8]* @"fmt_.52" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %".39")
  call void @"minilua_print_number"(double %"n.3")
  %".43" = bitcast [2 x i8]* @"nl_.53" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43")
  %".45" = bitcast [28 x i8]* @"str_.54" to i8*
  %".46" = bitcast [3 x i8]* @"fmt_.55" to i8*
  %".47" = call i32 (i8*, ...) @"printf"(i8* %".46", i8* %".45")
  %".48" = bitcast [2 x i8]* @"nl_.56" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48")
  %"b" = alloca i1
  store i1 1, i1* %"b"
  %".51" = bitcast [7 x i8]* @"str_.57" to i8*
  %"b.1" = load i1, i1* %"b"
  %".52" = bitcast [4 x i8]* @"fmt_.58" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", i8* %".51")
  %".54" = bitcast [3 x i8]* @"fmt_.59" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", i1 %"b.1")
  %".56" = bitcast [2 x i8]* @"nl_.60" to i8*
  %".57" = call i32 (i8*, ...) @"printf"(i8* %".56")
  %"b.2" = load i1, i1* %"b"
  call void @"changeBool"(i1 %"b.2")
  %".59" = bitcast [26 x i8]* @"str_.61" to i8*
  %"b.3" = load i1, i1* %"b"
  %".60" = bitcast [4 x i8]* @"fmt_.62" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60", i8* %".59")
  %".62" = bitcast [3 x i8]* @"fmt_.63" to i8*
  %".63" = call i32 (i8*, ...) @"printf"(i8* %".62", i1 %"b.3")
  %".64" = bitcast [2 x i8]* @"nl_.64" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64")
  %".66" = bitcast [42 x i8]* @"str_.65" to i8*
  %".67" = bitcast [3 x i8]* @"fmt_.66" to i8*
  %".68" = call i32 (i8*, ...) @"printf"(i8* %".67", i8* %".66")
  %".69" = bitcast [2 x i8]* @"nl_.67" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69")
  %"a1" = alloca i8*
  store i8* null, i8** %"a1"
  %".72" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".72", i8** %"a1"
  %"arr_ptr" = load i8*, i8** %"a1"
  %".74" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".74")
  %"idx_adj" = sub i32 %".74", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".77" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".78" = bitcast i8* %".77" to double*
  %"elem_ptr" = getelementptr double, double* %".78", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %".80" = bitcast [7 x i8]* @"str_.68" to i8*
  %"arr_ptr.1" = load i8*, i8** %"a1"
  %".81" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".81")
  %"idx_adj.1" = sub i32 %".81", 1
  %".83" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".84" = bitcast i8* %".83" to double*
  %"elem_ptr.1" = getelementptr double, double* %".84", i32 %"idx_adj.1"
  %"elem_val" = load double, double* %"elem_ptr.1"
  %".85" = bitcast [4 x i8]* @"fmt_.69" to i8*
  %".86" = call i32 (i8*, ...) @"printf"(i8* %".85", i8* %".80")
  call void @"minilua_print_number"(double %"elem_val")
  %".88" = bitcast [2 x i8]* @"nl_.70" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88")
  %"a1.1" = load i8*, i8** %"a1"
  call void @"changeArrayContent"(i8* %"a1.1")
  %".91" = bitcast [23 x i8]* @"str_.71" to i8*
  %"arr_ptr.2" = load i8*, i8** %"a1"
  %".92" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".92")
  %"idx_adj.2" = sub i32 %".92", 1
  %".94" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".95" = bitcast i8* %".94" to double*
  %"elem_ptr.2" = getelementptr double, double* %".95", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".96" = bitcast [4 x i8]* @"fmt_.72" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96", i8* %".91")
  call void @"minilua_print_number"(double %"elem_val.1")
  %".99" = bitcast [2 x i8]* @"nl_.73" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99")
  %".101" = bitcast [53 x i8]* @"str_.74" to i8*
  %".102" = bitcast [3 x i8]* @"fmt_.75" to i8*
  %".103" = call i32 (i8*, ...) @"printf"(i8* %".102", i8* %".101")
  %".104" = bitcast [2 x i8]* @"nl_.76" to i8*
  %".105" = call i32 (i8*, ...) @"printf"(i8* %".104")
  %"a2" = alloca i8*
  store i8* null, i8** %"a2"
  %".107" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".107", i8** %"a2"
  %"arr_ptr.3" = load i8*, i8** %"a2"
  %".109" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".109")
  %"idx_adj.3" = sub i32 %".109", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".112" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".113" = bitcast i8* %".112" to double*
  %"elem_ptr.3" = getelementptr double, double* %".113", i32 %"idx_adj.3"
  store double 0x4049000000000000, double* %"elem_ptr.3"
  %".115" = bitcast [7 x i8]* @"str_.77" to i8*
  %"arr_ptr.4" = load i8*, i8** %"a2"
  %".116" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".116")
  %"idx_adj.4" = sub i32 %".116", 1
  %".118" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".119" = bitcast i8* %".118" to double*
  %"elem_ptr.4" = getelementptr double, double* %".119", i32 %"idx_adj.4"
  %"elem_val.2" = load double, double* %"elem_ptr.4"
  %".120" = bitcast [4 x i8]* @"fmt_.78" to i8*
  %".121" = call i32 (i8*, ...) @"printf"(i8* %".120", i8* %".115")
  call void @"minilua_print_number"(double %"elem_val.2")
  %".123" = bitcast [2 x i8]* @"nl_.79" to i8*
  %".124" = call i32 (i8*, ...) @"printf"(i8* %".123")
  %"a2.1" = load i8*, i8** %"a2"
  call void @"changeArrayRef"(i8* %"a2.1")
  %".126" = bitcast [22 x i8]* @"str_.80" to i8*
  %"arr_ptr.5" = load i8*, i8** %"a2"
  %".127" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".127")
  %"idx_adj.5" = sub i32 %".127", 1
  %".129" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".130" = bitcast i8* %".129" to double*
  %"elem_ptr.5" = getelementptr double, double* %".130", i32 %"idx_adj.5"
  %"elem_val.3" = load double, double* %"elem_ptr.5"
  %".131" = bitcast [4 x i8]* @"fmt_.81" to i8*
  %".132" = call i32 (i8*, ...) @"printf"(i8* %".131", i8* %".126")
  call void @"minilua_print_number"(double %"elem_val.3")
  %".134" = bitcast [2 x i8]* @"nl_.82" to i8*
  %".135" = call i32 (i8*, ...) @"printf"(i8* %".134")
  %".136" = bitcast [13 x i8]* @"str_.83" to i8*
  %".137" = bitcast [3 x i8]* @"fmt_.84" to i8*
  %".138" = call i32 (i8*, ...) @"printf"(i8* %".137", i8* %".136")
  %".139" = bitcast [2 x i8]* @"nl_.85" to i8*
  %".140" = call i32 (i8*, ...) @"printf"(i8* %".139")
  %".141" = bitcast [71 x i8]* @"str_.86" to i8*
  %".142" = bitcast [3 x i8]* @"fmt_.87" to i8*
  %".143" = call i32 (i8*, ...) @"printf"(i8* %".142", i8* %".141")
  %".144" = bitcast [2 x i8]* @"nl_.88" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144")
  %".146" = bitcast [80 x i8]* @"str_.89" to i8*
  %".147" = bitcast [3 x i8]* @"fmt_.90" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147", i8* %".146")
  %".149" = bitcast [2 x i8]* @"nl_.91" to i8*
  %".150" = call i32 (i8*, ...) @"printf"(i8* %".149")
  %".151" = bitcast [82 x i8]* @"str_.92" to i8*
  %".152" = bitcast [3 x i8]* @"fmt_.93" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152", i8* %".151")
  %".154" = bitcast [2 x i8]* @"nl_.94" to i8*
  %".155" = call i32 (i8*, ...) @"printf"(i8* %".154")
  ret i32 0
}

@"str_.33" = internal constant [40 x i8] c"=== Teste de Passagem de Parametros ===\00"
@"fmt_.34" = internal constant [3 x i8] c"%s\00"
@"nl_.35" = internal constant [2 x i8] c"\0a\00"
@"str_.36" = internal constant [28 x i8] c"\5cn1. Teste Integer (Valor):\00"
@"fmt_.37" = internal constant [3 x i8] c"%s\00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
@"str_.39" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.40" = internal constant [4 x i8] c"%s \00"
@"nl_.41" = internal constant [2 x i8] c"\0a\00"
@"str_.42" = internal constant [22 x i8] c"Depois (esperado 10):\00"
@"fmt_.43" = internal constant [4 x i8] c"%s \00"
@"nl_.44" = internal constant [2 x i8] c"\0a\00"
@"str_.45" = internal constant [27 x i8] c"\5cn2. Teste Number (Valor):\00"
@"fmt_.46" = internal constant [3 x i8] c"%s\00"
@"nl_.47" = internal constant [2 x i8] c"\0a\00"
@"str_.48" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.49" = internal constant [4 x i8] c"%s \00"
@"nl_.50" = internal constant [2 x i8] c"\0a\00"
@"str_.51" = internal constant [23 x i8] c"Depois (esperado 5.5):\00"
@"fmt_.52" = internal constant [4 x i8] c"%s \00"
@"nl_.53" = internal constant [2 x i8] c"\0a\00"
@"str_.54" = internal constant [28 x i8] c"\5cn3. Teste Boolean (Valor):\00"
@"fmt_.55" = internal constant [3 x i8] c"%s\00"
@"nl_.56" = internal constant [2 x i8] c"\0a\00"
@"str_.57" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.58" = internal constant [4 x i8] c"%s \00"
@"fmt_.59" = internal constant [3 x i8] c"%d\00"
@"nl_.60" = internal constant [2 x i8] c"\0a\00"
@"str_.61" = internal constant [26 x i8] c"Depois (esperado 1/true):\00"
@"fmt_.62" = internal constant [4 x i8] c"%s \00"
@"fmt_.63" = internal constant [3 x i8] c"%d\00"
@"nl_.64" = internal constant [2 x i8] c"\0a\00"
@"str_.65" = internal constant [42 x i8] c"\5cn4. Teste Array - Conteudo (Referencia):\00"
@"fmt_.66" = internal constant [3 x i8] c"%s\00"
@"nl_.67" = internal constant [2 x i8] c"\0a\00"
@"str_.68" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.69" = internal constant [4 x i8] c"%s \00"
@"nl_.70" = internal constant [2 x i8] c"\0a\00"
@"str_.71" = internal constant [23 x i8] c"Depois (esperado 999):\00"
@"fmt_.72" = internal constant [4 x i8] c"%s \00"
@"nl_.73" = internal constant [2 x i8] c"\0a\00"
@"str_.74" = internal constant [53 x i8] c"\5cn5. Teste Array - Reatribuicao (Valor do Ponteiro):\00"
@"fmt_.75" = internal constant [3 x i8] c"%s\00"
@"nl_.76" = internal constant [2 x i8] c"\0a\00"
@"str_.77" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.78" = internal constant [4 x i8] c"%s \00"
@"nl_.79" = internal constant [2 x i8] c"\0a\00"
@"str_.80" = internal constant [22 x i8] c"Depois (esperado 50):\00"
@"fmt_.81" = internal constant [4 x i8] c"%s \00"
@"nl_.82" = internal constant [2 x i8] c"\0a\00"
@"str_.83" = internal constant [13 x i8] c"\5cnConclusao:\00"
@"fmt_.84" = internal constant [3 x i8] c"%s\00"
@"nl_.85" = internal constant [2 x i8] c"\0a\00"
@"str_.86" = internal constant [71 x i8] c"- Tipos primitivos (int, number, bool) sao passados por VALOR (copia).\00"
@"fmt_.87" = internal constant [3 x i8] c"%s\00"
@"nl_.88" = internal constant [2 x i8] c"\0a\00"
@"str_.89" = internal constant [80 x i8] c"- Arrays sao passados por REFERENCIA (ponteiro), permitindo alterar o conteudo.\00"
@"fmt_.90" = internal constant [3 x i8] c"%s\00"
@"nl_.91" = internal constant [2 x i8] c"\0a\00"
@"str_.92" = internal constant [82 x i8] c"- Mas a variavel do array em si e local, entao reatribuir o array nao afeta fora.\00"
@"fmt_.93" = internal constant [3 x i8] c"%s\00"
@"nl_.94" = internal constant [2 x i8] c"\0a\00"