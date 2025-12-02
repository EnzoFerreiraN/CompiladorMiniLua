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
  %".7" = fptosi double %"n.2" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"n.2", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.3" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.4" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"n.2")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.5" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  store double 0x408f380000000000, double* %"n.1"
  %".19" = bitcast [24 x i8]* @"str_.6" to i8*
  %"n.3" = load double, double* %"n.1"
  %".20" = bitcast [4 x i8]* @"fmt_.7" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20", i8* %".19")
  %".22" = fptosi double %"n.3" to i64
  %".23" = sitofp i64 %".22" to double
  %"is_int.1" = fcmp oeq double %"n.3", %".23"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".25" = bitcast [5 x i8]* @"fmt_int_.8" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i64 %".22")
  br label %"print_merge.1"
print_float.1:
  %".28" = bitcast [6 x i8]* @"fmt_flt_.9" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28", double %"n.3")
  br label %"print_merge.1"
print_merge.1:
  %".31" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  ret void
}

@"str_.1" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.3" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.4" = internal constant [6 x i8] c"%.14g\00"
@"nl_.5" = internal constant [2 x i8] c"\0a\00"
@"str_.6" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.7" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.8" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.9" = internal constant [6 x i8] c"%.14g\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
define void @"changeNumber"(double %"n")
{
entry:
  %"n.1" = alloca double
  store double %"n", double* %"n.1"
  %".4" = bitcast [19 x i8]* @"str_.11" to i8*
  %"n.2" = load double, double* %"n.1"
  %".5" = bitcast [4 x i8]* @"fmt_.12" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = fptosi double %"n.2" to i64
  %".8" = sitofp i64 %".7" to double
  %"is_int" = fcmp oeq double %"n.2", %".8"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".10" = bitcast [5 x i8]* @"fmt_int_.13" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10", i64 %".7")
  br label %"print_merge"
print_float:
  %".13" = bitcast [6 x i8]* @"fmt_flt_.14" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13", double %"n.2")
  br label %"print_merge"
print_merge:
  %".16" = bitcast [2 x i8]* @"nl_.15" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16")
  store double 0x408f3feb851eb852, double* %"n.1"
  %".19" = bitcast [24 x i8]* @"str_.16" to i8*
  %"n.3" = load double, double* %"n.1"
  %".20" = bitcast [4 x i8]* @"fmt_.17" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20", i8* %".19")
  %".22" = fptosi double %"n.3" to i64
  %".23" = sitofp i64 %".22" to double
  %"is_int.1" = fcmp oeq double %"n.3", %".23"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".25" = bitcast [5 x i8]* @"fmt_int_.18" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25", i64 %".22")
  br label %"print_merge.1"
print_float.1:
  %".28" = bitcast [6 x i8]* @"fmt_flt_.19" to i8*
  %".29" = call i32 (i8*, ...) @"printf"(i8* %".28", double %"n.3")
  br label %"print_merge.1"
print_merge.1:
  %".31" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".32" = call i32 (i8*, ...) @"printf"(i8* %".31")
  ret void
}

@"str_.11" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.12" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.13" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.14" = internal constant [6 x i8] c"%.14g\00"
@"nl_.15" = internal constant [2 x i8] c"\0a\00"
@"str_.16" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.17" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.18" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.19" = internal constant [6 x i8] c"%.14g\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
define void @"changeBool"(i1 %"b")
{
entry:
  %"b.1" = alloca i1
  store i1 %"b", i1* %"b.1"
  %".4" = bitcast [19 x i8]* @"str_.21" to i8*
  %"b.2" = load i1, i1* %"b.1"
  %".5" = bitcast [4 x i8]* @"fmt_.22" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5", i8* %".4")
  %".7" = bitcast [3 x i8]* @"fmt_.23" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", i1 %"b.2")
  %".9" = bitcast [2 x i8]* @"nl_.24" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  %"b.3" = load i1, i1* %"b.1"
  %"nottmp" = xor i1 %"b.3", 1
  %".11" = uitofp i1 %"nottmp" to double
  %".12" = fcmp one double %".11",              0x0
  store i1 %".12", i1* %"b.1"
  %".14" = bitcast [24 x i8]* @"str_.25" to i8*
  %"b.4" = load i1, i1* %"b.1"
  %".15" = bitcast [4 x i8]* @"fmt_.26" to i8*
  %".16" = call i32 (i8*, ...) @"printf"(i8* %".15", i8* %".14")
  %".17" = bitcast [3 x i8]* @"fmt_.27" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", i1 %"b.4")
  %".19" = bitcast [2 x i8]* @"nl_.28" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19")
  ret void
}

@"str_.21" = internal constant [19 x i8] c"  [Func] Recebido:\00"
@"fmt_.22" = internal constant [4 x i8] c"%s \00"
@"fmt_.23" = internal constant [3 x i8] c"%d\00"
@"nl_.24" = internal constant [2 x i8] c"\0a\00"
@"str_.25" = internal constant [24 x i8] c"  [Func] Alterado para:\00"
@"fmt_.26" = internal constant [4 x i8] c"%s \00"
@"fmt_.27" = internal constant [3 x i8] c"%d\00"
@"nl_.28" = internal constant [2 x i8] c"\0a\00"
define void @"changeArrayContent"(i8* %"arr")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %".4" = bitcast [26 x i8]* @"str_.29" to i8*
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  %"elem_val" = load double, double* %"elem_ptr"
  %".9" = bitcast [4 x i8]* @"fmt_.30" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".4")
  %".11" = fptosi double %"elem_val" to i64
  %".12" = sitofp i64 %".11" to double
  %"is_int" = fcmp oeq double %"elem_val", %".12"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".14" = bitcast [5 x i8]* @"fmt_int_.31" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i64 %".11")
  br label %"print_merge"
print_float:
  %".17" = bitcast [6 x i8]* @"fmt_flt_.32" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".20" = bitcast [2 x i8]* @"nl_.33" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %"arr_ptr.1" = load i8*, i8** %"arr.1"
  %".22" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".22")
  %"idx_adj.1" = sub i32 %".22", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".25" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".26" = bitcast i8* %".25" to double*
  %"elem_ptr.1" = getelementptr double, double* %".26", i32 %"idx_adj.1"
  store double 0x408f380000000000, double* %"elem_ptr.1"
  %".28" = bitcast [31 x i8]* @"str_.34" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr.1"
  %".29" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".29")
  %"idx_adj.2" = sub i32 %".29", 1
  %".31" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".32" = bitcast i8* %".31" to double*
  %"elem_ptr.2" = getelementptr double, double* %".32", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".33" = bitcast [4 x i8]* @"fmt_.35" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".28")
  %".35" = fptosi double %"elem_val.1" to i64
  %".36" = sitofp i64 %".35" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".36"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".38" = bitcast [5 x i8]* @"fmt_int_.36" to i8*
  %".39" = call i32 (i8*, ...) @"printf"(i8* %".38", i64 %".35")
  br label %"print_merge.1"
print_float.1:
  %".41" = bitcast [6 x i8]* @"fmt_flt_.37" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".44" = bitcast [2 x i8]* @"nl_.38" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44")
  ret void
}

@"str_.29" = internal constant [26 x i8] c"  [Func] Recebido arr[1]:\00"
@"fmt_.30" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.31" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.32" = internal constant [6 x i8] c"%.14g\00"
@"nl_.33" = internal constant [2 x i8] c"\0a\00"
@"str_.34" = internal constant [31 x i8] c"  [Func] Alterado arr[1] para:\00"
@"fmt_.35" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.36" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.37" = internal constant [6 x i8] c"%.14g\00"
@"nl_.38" = internal constant [2 x i8] c"\0a\00"
define void @"changeArrayRef"(i8* %"arr")
{
entry:
  %"arr.1" = alloca i8*
  store i8* %"arr", i8** %"arr.1"
  %".4" = bitcast [26 x i8]* @"str_.39" to i8*
  %"arr_ptr" = load i8*, i8** %"arr.1"
  %".5" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".5")
  %"idx_adj" = sub i32 %".5", 1
  %".7" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".8" = bitcast i8* %".7" to double*
  %"elem_ptr" = getelementptr double, double* %".8", i32 %"idx_adj"
  %"elem_val" = load double, double* %"elem_ptr"
  %".9" = bitcast [4 x i8]* @"fmt_.40" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9", i8* %".4")
  %".11" = fptosi double %"elem_val" to i64
  %".12" = sitofp i64 %".11" to double
  %"is_int" = fcmp oeq double %"elem_val", %".12"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".14" = bitcast [5 x i8]* @"fmt_int_.41" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i64 %".11")
  br label %"print_merge"
print_float:
  %".17" = bitcast [6 x i8]* @"fmt_flt_.42" to i8*
  %".18" = call i32 (i8*, ...) @"printf"(i8* %".17", double %"elem_val")
  br label %"print_merge"
print_merge:
  %".20" = bitcast [2 x i8]* @"nl_.43" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  %"new_arr" = alloca i8*
  store i8* null, i8** %"new_arr"
  %".23" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".23", i8** %"new_arr"
  %"arr_ptr.1" = load i8*, i8** %"new_arr"
  %".25" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".25")
  %"idx_adj.1" = sub i32 %".25", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.1", i32 %"idx_adj.1")
  %".28" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".29" = bitcast i8* %".28" to double*
  %"elem_ptr.1" = getelementptr double, double* %".29", i32 %"idx_adj.1"
  store double 0x405bc00000000000, double* %"elem_ptr.1"
  %"new_arr.1" = load i8*, i8** %"new_arr"
  store i8* %"new_arr.1", i8** %"arr.1"
  %".32" = bitcast [62 x i8]* @"str_.44" to i8*
  %"arr_ptr.2" = load i8*, i8** %"arr.1"
  %".33" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".33")
  %"idx_adj.2" = sub i32 %".33", 1
  %".35" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".36" = bitcast i8* %".35" to double*
  %"elem_ptr.2" = getelementptr double, double* %".36", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".37" = bitcast [4 x i8]* @"fmt_.45" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", i8* %".32")
  %".39" = fptosi double %"elem_val.1" to i64
  %".40" = sitofp i64 %".39" to double
  %"is_int.1" = fcmp oeq double %"elem_val.1", %".40"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".42" = bitcast [5 x i8]* @"fmt_int_.46" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42", i64 %".39")
  br label %"print_merge.1"
print_float.1:
  %".45" = bitcast [6 x i8]* @"fmt_flt_.47" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45", double %"elem_val.1")
  br label %"print_merge.1"
print_merge.1:
  %".48" = bitcast [2 x i8]* @"nl_.48" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48")
  ret void
}

@"str_.39" = internal constant [26 x i8] c"  [Func] Recebido arr[1]:\00"
@"fmt_.40" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.41" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.42" = internal constant [6 x i8] c"%.14g\00"
@"nl_.43" = internal constant [2 x i8] c"\0a\00"
@"str_.44" = internal constant [62 x i8] c"  [Func] Variavel 'arr' agora aponta para novo array. arr[1]:\00"
@"fmt_.45" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.46" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.47" = internal constant [6 x i8] c"%.14g\00"
@"nl_.48" = internal constant [2 x i8] c"\0a\00"
define i32 @"main"()
{
entry:
  %".2" = bitcast [40 x i8]* @"str_.49" to i8*
  %".3" = bitcast [3 x i8]* @"fmt_.50" to i8*
  %".4" = call i32 (i8*, ...) @"printf"(i8* %".3", i8* %".2")
  %".5" = bitcast [2 x i8]* @"nl_.51" to i8*
  %".6" = call i32 (i8*, ...) @"printf"(i8* %".5")
  %".7" = bitcast [28 x i8]* @"str_.52" to i8*
  %".8" = bitcast [3 x i8]* @"fmt_.53" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8", i8* %".7")
  %".10" = bitcast [2 x i8]* @"nl_.54" to i8*
  %".11" = call i32 (i8*, ...) @"printf"(i8* %".10")
  %"i" = alloca double
  store double 0x4024000000000000, double* %"i"
  %".13" = bitcast [7 x i8]* @"str_.55" to i8*
  %"i.1" = load double, double* %"i"
  %".14" = bitcast [4 x i8]* @"fmt_.56" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i8* %".13")
  %".16" = fptosi double %"i.1" to i64
  %".17" = sitofp i64 %".16" to double
  %"is_int" = fcmp oeq double %"i.1", %".17"
  br i1 %"is_int", label %"print_int", label %"print_float"
print_int:
  %".19" = bitcast [5 x i8]* @"fmt_int_.57" to i8*
  %".20" = call i32 (i8*, ...) @"printf"(i8* %".19", i64 %".16")
  br label %"print_merge"
print_float:
  %".22" = bitcast [6 x i8]* @"fmt_flt_.58" to i8*
  %".23" = call i32 (i8*, ...) @"printf"(i8* %".22", double %"i.1")
  br label %"print_merge"
print_merge:
  %".25" = bitcast [2 x i8]* @"nl_.59" to i8*
  %".26" = call i32 (i8*, ...) @"printf"(i8* %".25")
  %"i.2" = load double, double* %"i"
  call void @"changeInt"(double %"i.2")
  %".28" = bitcast [22 x i8]* @"str_.60" to i8*
  %"i.3" = load double, double* %"i"
  %".29" = bitcast [4 x i8]* @"fmt_.61" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29", i8* %".28")
  %".31" = fptosi double %"i.3" to i64
  %".32" = sitofp i64 %".31" to double
  %"is_int.1" = fcmp oeq double %"i.3", %".32"
  br i1 %"is_int.1", label %"print_int.1", label %"print_float.1"
print_int.1:
  %".34" = bitcast [5 x i8]* @"fmt_int_.62" to i8*
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i64 %".31")
  br label %"print_merge.1"
print_float.1:
  %".37" = bitcast [6 x i8]* @"fmt_flt_.63" to i8*
  %".38" = call i32 (i8*, ...) @"printf"(i8* %".37", double %"i.3")
  br label %"print_merge.1"
print_merge.1:
  %".40" = bitcast [2 x i8]* @"nl_.64" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40")
  %".42" = bitcast [27 x i8]* @"str_.65" to i8*
  %".43" = bitcast [3 x i8]* @"fmt_.66" to i8*
  %".44" = call i32 (i8*, ...) @"printf"(i8* %".43", i8* %".42")
  %".45" = bitcast [2 x i8]* @"nl_.67" to i8*
  %".46" = call i32 (i8*, ...) @"printf"(i8* %".45")
  %"n" = alloca double
  store double 0x4016000000000000, double* %"n"
  %".48" = bitcast [7 x i8]* @"str_.68" to i8*
  %"n.1" = load double, double* %"n"
  %".49" = bitcast [4 x i8]* @"fmt_.69" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49", i8* %".48")
  %".51" = fptosi double %"n.1" to i64
  %".52" = sitofp i64 %".51" to double
  %"is_int.2" = fcmp oeq double %"n.1", %".52"
  br i1 %"is_int.2", label %"print_int.2", label %"print_float.2"
print_int.2:
  %".54" = bitcast [5 x i8]* @"fmt_int_.70" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54", i64 %".51")
  br label %"print_merge.2"
print_float.2:
  %".57" = bitcast [6 x i8]* @"fmt_flt_.71" to i8*
  %".58" = call i32 (i8*, ...) @"printf"(i8* %".57", double %"n.1")
  br label %"print_merge.2"
print_merge.2:
  %".60" = bitcast [2 x i8]* @"nl_.72" to i8*
  %".61" = call i32 (i8*, ...) @"printf"(i8* %".60")
  %"n.2" = load double, double* %"n"
  call void @"changeNumber"(double %"n.2")
  %".63" = bitcast [23 x i8]* @"str_.73" to i8*
  %"n.3" = load double, double* %"n"
  %".64" = bitcast [4 x i8]* @"fmt_.74" to i8*
  %".65" = call i32 (i8*, ...) @"printf"(i8* %".64", i8* %".63")
  %".66" = fptosi double %"n.3" to i64
  %".67" = sitofp i64 %".66" to double
  %"is_int.3" = fcmp oeq double %"n.3", %".67"
  br i1 %"is_int.3", label %"print_int.3", label %"print_float.3"
print_int.3:
  %".69" = bitcast [5 x i8]* @"fmt_int_.75" to i8*
  %".70" = call i32 (i8*, ...) @"printf"(i8* %".69", i64 %".66")
  br label %"print_merge.3"
print_float.3:
  %".72" = bitcast [6 x i8]* @"fmt_flt_.76" to i8*
  %".73" = call i32 (i8*, ...) @"printf"(i8* %".72", double %"n.3")
  br label %"print_merge.3"
print_merge.3:
  %".75" = bitcast [2 x i8]* @"nl_.77" to i8*
  %".76" = call i32 (i8*, ...) @"printf"(i8* %".75")
  %".77" = bitcast [28 x i8]* @"str_.78" to i8*
  %".78" = bitcast [3 x i8]* @"fmt_.79" to i8*
  %".79" = call i32 (i8*, ...) @"printf"(i8* %".78", i8* %".77")
  %".80" = bitcast [2 x i8]* @"nl_.80" to i8*
  %".81" = call i32 (i8*, ...) @"printf"(i8* %".80")
  %"b" = alloca i1
  store i1 1, i1* %"b"
  %".83" = bitcast [7 x i8]* @"str_.81" to i8*
  %"b.1" = load i1, i1* %"b"
  %".84" = bitcast [4 x i8]* @"fmt_.82" to i8*
  %".85" = call i32 (i8*, ...) @"printf"(i8* %".84", i8* %".83")
  %".86" = bitcast [3 x i8]* @"fmt_.83" to i8*
  %".87" = call i32 (i8*, ...) @"printf"(i8* %".86", i1 %"b.1")
  %".88" = bitcast [2 x i8]* @"nl_.84" to i8*
  %".89" = call i32 (i8*, ...) @"printf"(i8* %".88")
  %"b.2" = load i1, i1* %"b"
  call void @"changeBool"(i1 %"b.2")
  %".91" = bitcast [26 x i8]* @"str_.85" to i8*
  %"b.3" = load i1, i1* %"b"
  %".92" = bitcast [4 x i8]* @"fmt_.86" to i8*
  %".93" = call i32 (i8*, ...) @"printf"(i8* %".92", i8* %".91")
  %".94" = bitcast [3 x i8]* @"fmt_.87" to i8*
  %".95" = call i32 (i8*, ...) @"printf"(i8* %".94", i1 %"b.3")
  %".96" = bitcast [2 x i8]* @"nl_.88" to i8*
  %".97" = call i32 (i8*, ...) @"printf"(i8* %".96")
  %".98" = bitcast [42 x i8]* @"str_.89" to i8*
  %".99" = bitcast [3 x i8]* @"fmt_.90" to i8*
  %".100" = call i32 (i8*, ...) @"printf"(i8* %".99", i8* %".98")
  %".101" = bitcast [2 x i8]* @"nl_.91" to i8*
  %".102" = call i32 (i8*, ...) @"printf"(i8* %".101")
  %"a1" = alloca i8*
  store i8* null, i8** %"a1"
  %".104" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".104", i8** %"a1"
  %"arr_ptr" = load i8*, i8** %"a1"
  %".106" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".106")
  %"idx_adj" = sub i32 %".106", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr", i32 %"idx_adj")
  %".109" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr")
  %".110" = bitcast i8* %".109" to double*
  %"elem_ptr" = getelementptr double, double* %".110", i32 %"idx_adj"
  store double 0x4024000000000000, double* %"elem_ptr"
  %".112" = bitcast [7 x i8]* @"str_.92" to i8*
  %"arr_ptr.1" = load i8*, i8** %"a1"
  %".113" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".113")
  %"idx_adj.1" = sub i32 %".113", 1
  %".115" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.1")
  %".116" = bitcast i8* %".115" to double*
  %"elem_ptr.1" = getelementptr double, double* %".116", i32 %"idx_adj.1"
  %"elem_val" = load double, double* %"elem_ptr.1"
  %".117" = bitcast [4 x i8]* @"fmt_.93" to i8*
  %".118" = call i32 (i8*, ...) @"printf"(i8* %".117", i8* %".112")
  %".119" = fptosi double %"elem_val" to i64
  %".120" = sitofp i64 %".119" to double
  %"is_int.4" = fcmp oeq double %"elem_val", %".120"
  br i1 %"is_int.4", label %"print_int.4", label %"print_float.4"
print_int.4:
  %".122" = bitcast [5 x i8]* @"fmt_int_.94" to i8*
  %".123" = call i32 (i8*, ...) @"printf"(i8* %".122", i64 %".119")
  br label %"print_merge.4"
print_float.4:
  %".125" = bitcast [6 x i8]* @"fmt_flt_.95" to i8*
  %".126" = call i32 (i8*, ...) @"printf"(i8* %".125", double %"elem_val")
  br label %"print_merge.4"
print_merge.4:
  %".128" = bitcast [2 x i8]* @"nl_.96" to i8*
  %".129" = call i32 (i8*, ...) @"printf"(i8* %".128")
  %"a1.1" = load i8*, i8** %"a1"
  call void @"changeArrayContent"(i8* %"a1.1")
  %".131" = bitcast [23 x i8]* @"str_.97" to i8*
  %"arr_ptr.2" = load i8*, i8** %"a1"
  %".132" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".132")
  %"idx_adj.2" = sub i32 %".132", 1
  %".134" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.2")
  %".135" = bitcast i8* %".134" to double*
  %"elem_ptr.2" = getelementptr double, double* %".135", i32 %"idx_adj.2"
  %"elem_val.1" = load double, double* %"elem_ptr.2"
  %".136" = bitcast [4 x i8]* @"fmt_.98" to i8*
  %".137" = call i32 (i8*, ...) @"printf"(i8* %".136", i8* %".131")
  %".138" = fptosi double %"elem_val.1" to i64
  %".139" = sitofp i64 %".138" to double
  %"is_int.5" = fcmp oeq double %"elem_val.1", %".139"
  br i1 %"is_int.5", label %"print_int.5", label %"print_float.5"
print_int.5:
  %".141" = bitcast [5 x i8]* @"fmt_int_.99" to i8*
  %".142" = call i32 (i8*, ...) @"printf"(i8* %".141", i64 %".138")
  br label %"print_merge.5"
print_float.5:
  %".144" = bitcast [6 x i8]* @"fmt_flt_.100" to i8*
  %".145" = call i32 (i8*, ...) @"printf"(i8* %".144", double %"elem_val.1")
  br label %"print_merge.5"
print_merge.5:
  %".147" = bitcast [2 x i8]* @"nl_.101" to i8*
  %".148" = call i32 (i8*, ...) @"printf"(i8* %".147")
  %".149" = bitcast [53 x i8]* @"str_.102" to i8*
  %".150" = bitcast [3 x i8]* @"fmt_.103" to i8*
  %".151" = call i32 (i8*, ...) @"printf"(i8* %".150", i8* %".149")
  %".152" = bitcast [2 x i8]* @"nl_.104" to i8*
  %".153" = call i32 (i8*, ...) @"printf"(i8* %".152")
  %"a2" = alloca i8*
  store i8* null, i8** %"a2"
  %".155" = call i8* @"minilua_new_array"(i32 8)
  store i8* %".155", i8** %"a2"
  %"arr_ptr.3" = load i8*, i8** %"a2"
  %".157" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".157")
  %"idx_adj.3" = sub i32 %".157", 1
  call void @"minilua_ensure_capacity"(i8* %"arr_ptr.3", i32 %"idx_adj.3")
  %".160" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.3")
  %".161" = bitcast i8* %".160" to double*
  %"elem_ptr.3" = getelementptr double, double* %".161", i32 %"idx_adj.3"
  store double 0x4049000000000000, double* %"elem_ptr.3"
  %".163" = bitcast [7 x i8]* @"str_.105" to i8*
  %"arr_ptr.4" = load i8*, i8** %"a2"
  %".164" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".164")
  %"idx_adj.4" = sub i32 %".164", 1
  %".166" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.4")
  %".167" = bitcast i8* %".166" to double*
  %"elem_ptr.4" = getelementptr double, double* %".167", i32 %"idx_adj.4"
  %"elem_val.2" = load double, double* %"elem_ptr.4"
  %".168" = bitcast [4 x i8]* @"fmt_.106" to i8*
  %".169" = call i32 (i8*, ...) @"printf"(i8* %".168", i8* %".163")
  %".170" = fptosi double %"elem_val.2" to i64
  %".171" = sitofp i64 %".170" to double
  %"is_int.6" = fcmp oeq double %"elem_val.2", %".171"
  br i1 %"is_int.6", label %"print_int.6", label %"print_float.6"
print_int.6:
  %".173" = bitcast [5 x i8]* @"fmt_int_.107" to i8*
  %".174" = call i32 (i8*, ...) @"printf"(i8* %".173", i64 %".170")
  br label %"print_merge.6"
print_float.6:
  %".176" = bitcast [6 x i8]* @"fmt_flt_.108" to i8*
  %".177" = call i32 (i8*, ...) @"printf"(i8* %".176", double %"elem_val.2")
  br label %"print_merge.6"
print_merge.6:
  %".179" = bitcast [2 x i8]* @"nl_.109" to i8*
  %".180" = call i32 (i8*, ...) @"printf"(i8* %".179")
  %"a2.1" = load i8*, i8** %"a2"
  call void @"changeArrayRef"(i8* %"a2.1")
  %".182" = bitcast [22 x i8]* @"str_.110" to i8*
  %"arr_ptr.5" = load i8*, i8** %"a2"
  %".183" = fptosi double 0x3ff0000000000000 to i32
  call void @"minilua_check_index"(i32 %".183")
  %"idx_adj.5" = sub i32 %".183", 1
  %".185" = call i8* @"minilua_get_data_ptr"(i8* %"arr_ptr.5")
  %".186" = bitcast i8* %".185" to double*
  %"elem_ptr.5" = getelementptr double, double* %".186", i32 %"idx_adj.5"
  %"elem_val.3" = load double, double* %"elem_ptr.5"
  %".187" = bitcast [4 x i8]* @"fmt_.111" to i8*
  %".188" = call i32 (i8*, ...) @"printf"(i8* %".187", i8* %".182")
  %".189" = fptosi double %"elem_val.3" to i64
  %".190" = sitofp i64 %".189" to double
  %"is_int.7" = fcmp oeq double %"elem_val.3", %".190"
  br i1 %"is_int.7", label %"print_int.7", label %"print_float.7"
print_int.7:
  %".192" = bitcast [5 x i8]* @"fmt_int_.112" to i8*
  %".193" = call i32 (i8*, ...) @"printf"(i8* %".192", i64 %".189")
  br label %"print_merge.7"
print_float.7:
  %".195" = bitcast [6 x i8]* @"fmt_flt_.113" to i8*
  %".196" = call i32 (i8*, ...) @"printf"(i8* %".195", double %"elem_val.3")
  br label %"print_merge.7"
print_merge.7:
  %".198" = bitcast [2 x i8]* @"nl_.114" to i8*
  %".199" = call i32 (i8*, ...) @"printf"(i8* %".198")
  %".200" = bitcast [13 x i8]* @"str_.115" to i8*
  %".201" = bitcast [3 x i8]* @"fmt_.116" to i8*
  %".202" = call i32 (i8*, ...) @"printf"(i8* %".201", i8* %".200")
  %".203" = bitcast [2 x i8]* @"nl_.117" to i8*
  %".204" = call i32 (i8*, ...) @"printf"(i8* %".203")
  %".205" = bitcast [71 x i8]* @"str_.118" to i8*
  %".206" = bitcast [3 x i8]* @"fmt_.119" to i8*
  %".207" = call i32 (i8*, ...) @"printf"(i8* %".206", i8* %".205")
  %".208" = bitcast [2 x i8]* @"nl_.120" to i8*
  %".209" = call i32 (i8*, ...) @"printf"(i8* %".208")
  %".210" = bitcast [80 x i8]* @"str_.121" to i8*
  %".211" = bitcast [3 x i8]* @"fmt_.122" to i8*
  %".212" = call i32 (i8*, ...) @"printf"(i8* %".211", i8* %".210")
  %".213" = bitcast [2 x i8]* @"nl_.123" to i8*
  %".214" = call i32 (i8*, ...) @"printf"(i8* %".213")
  %".215" = bitcast [82 x i8]* @"str_.124" to i8*
  %".216" = bitcast [3 x i8]* @"fmt_.125" to i8*
  %".217" = call i32 (i8*, ...) @"printf"(i8* %".216", i8* %".215")
  %".218" = bitcast [2 x i8]* @"nl_.126" to i8*
  %".219" = call i32 (i8*, ...) @"printf"(i8* %".218")
  ret i32 0
}

@"str_.49" = internal constant [40 x i8] c"=== Teste de Passagem de Parametros ===\00"
@"fmt_.50" = internal constant [3 x i8] c"%s\00"
@"nl_.51" = internal constant [2 x i8] c"\0a\00"
@"str_.52" = internal constant [28 x i8] c"\5cn1. Teste Integer (Valor):\00"
@"fmt_.53" = internal constant [3 x i8] c"%s\00"
@"nl_.54" = internal constant [2 x i8] c"\0a\00"
@"str_.55" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.56" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.57" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.58" = internal constant [6 x i8] c"%.14g\00"
@"nl_.59" = internal constant [2 x i8] c"\0a\00"
@"str_.60" = internal constant [22 x i8] c"Depois (esperado 10):\00"
@"fmt_.61" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.62" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.63" = internal constant [6 x i8] c"%.14g\00"
@"nl_.64" = internal constant [2 x i8] c"\0a\00"
@"str_.65" = internal constant [27 x i8] c"\5cn2. Teste Number (Valor):\00"
@"fmt_.66" = internal constant [3 x i8] c"%s\00"
@"nl_.67" = internal constant [2 x i8] c"\0a\00"
@"str_.68" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.69" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.70" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.71" = internal constant [6 x i8] c"%.14g\00"
@"nl_.72" = internal constant [2 x i8] c"\0a\00"
@"str_.73" = internal constant [23 x i8] c"Depois (esperado 5.5):\00"
@"fmt_.74" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.75" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.76" = internal constant [6 x i8] c"%.14g\00"
@"nl_.77" = internal constant [2 x i8] c"\0a\00"
@"str_.78" = internal constant [28 x i8] c"\5cn3. Teste Boolean (Valor):\00"
@"fmt_.79" = internal constant [3 x i8] c"%s\00"
@"nl_.80" = internal constant [2 x i8] c"\0a\00"
@"str_.81" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.82" = internal constant [4 x i8] c"%s \00"
@"fmt_.83" = internal constant [3 x i8] c"%d\00"
@"nl_.84" = internal constant [2 x i8] c"\0a\00"
@"str_.85" = internal constant [26 x i8] c"Depois (esperado 1/true):\00"
@"fmt_.86" = internal constant [4 x i8] c"%s \00"
@"fmt_.87" = internal constant [3 x i8] c"%d\00"
@"nl_.88" = internal constant [2 x i8] c"\0a\00"
@"str_.89" = internal constant [42 x i8] c"\5cn4. Teste Array - Conteudo (Referencia):\00"
@"fmt_.90" = internal constant [3 x i8] c"%s\00"
@"nl_.91" = internal constant [2 x i8] c"\0a\00"
@"str_.92" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.93" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.94" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.95" = internal constant [6 x i8] c"%.14g\00"
@"nl_.96" = internal constant [2 x i8] c"\0a\00"
@"str_.97" = internal constant [23 x i8] c"Depois (esperado 999):\00"
@"fmt_.98" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.99" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.100" = internal constant [6 x i8] c"%.14g\00"
@"nl_.101" = internal constant [2 x i8] c"\0a\00"
@"str_.102" = internal constant [53 x i8] c"\5cn5. Teste Array - Reatribuicao (Valor do Ponteiro):\00"
@"fmt_.103" = internal constant [3 x i8] c"%s\00"
@"nl_.104" = internal constant [2 x i8] c"\0a\00"
@"str_.105" = internal constant [7 x i8] c"Antes:\00"
@"fmt_.106" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.107" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.108" = internal constant [6 x i8] c"%.14g\00"
@"nl_.109" = internal constant [2 x i8] c"\0a\00"
@"str_.110" = internal constant [22 x i8] c"Depois (esperado 50):\00"
@"fmt_.111" = internal constant [4 x i8] c"%s \00"
@"fmt_int_.112" = internal constant [5 x i8] c"%lld\00"
@"fmt_flt_.113" = internal constant [6 x i8] c"%.14g\00"
@"nl_.114" = internal constant [2 x i8] c"\0a\00"
@"str_.115" = internal constant [13 x i8] c"\5cnConclusao:\00"
@"fmt_.116" = internal constant [3 x i8] c"%s\00"
@"nl_.117" = internal constant [2 x i8] c"\0a\00"
@"str_.118" = internal constant [71 x i8] c"- Tipos primitivos (int, number, bool) sao passados por VALOR (copia).\00"
@"fmt_.119" = internal constant [3 x i8] c"%s\00"
@"nl_.120" = internal constant [2 x i8] c"\0a\00"
@"str_.121" = internal constant [80 x i8] c"- Arrays sao passados por REFERENCIA (ponteiro), permitindo alterar o conteudo.\00"
@"fmt_.122" = internal constant [3 x i8] c"%s\00"
@"nl_.123" = internal constant [2 x i8] c"\0a\00"
@"str_.124" = internal constant [82 x i8] c"- Mas a variavel do array em si e local, entao reatribuir o array nao afeta fora.\00"
@"fmt_.125" = internal constant [3 x i8] c"%s\00"
@"nl_.126" = internal constant [2 x i8] c"\0a\00"