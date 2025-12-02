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

define i32 @"main"()
{
entry:
  %"b" = alloca i1
  store i1 0, i1* %"b"
  %".3" = bitcast [19 x i8]* @"str_.1" to i8*
  %"b.1" = load i1, i1* %"b"
  %".4" = bitcast [4 x i8]* @"fmt_.2" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4", i8* %".3")
  %".6" = bitcast [3 x i8]* @"fmt_.3" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6", i1 %"b.1")
  %".8" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"b.2" = load i1, i1* %"b"
  br i1 %"b.2", label %"then_0", label %"else_0"
if_merge:
  %"b.3" = load i1, i1* %"b"
  %"nottmp" = xor i1 %"b.3", 1
  %".23" = uitofp i1 %"nottmp" to double
  %".24" = fcmp one double %".23",              0x0
  br i1 %".24", label %"then_0.1", label %"else_0.1"
then_0:
  %".11" = bitcast [23 x i8]* @"str_.5" to i8*
  %".12" = bitcast [3 x i8]* @"fmt_.6" to i8*
  %".13" = call i32 (i8*, ...) @"printf"(i8* %".12", i8* %".11")
  %".14" = bitcast [2 x i8]* @"nl_.7" to i8*
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14")
  br label %"if_merge"
else_0:
  %".17" = bitcast [16 x i8]* @"str_.8" to i8*
  %".18" = bitcast [3 x i8]* @"fmt_.9" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18", i8* %".17")
  %".20" = bitcast [2 x i8]* @"nl_.10" to i8*
  %".21" = call i32 (i8*, ...) @"printf"(i8* %".20")
  br label %"if_merge"
if_merge.1:
  store i1 1, i1* %"b"
  %".39" = bitcast [28 x i8]* @"str_.17" to i8*
  %"b.4" = load i1, i1* %"b"
  %".40" = bitcast [4 x i8]* @"fmt_.18" to i8*
  %".41" = call i32 (i8*, ...) @"printf"(i8* %".40", i8* %".39")
  %".42" = bitcast [3 x i8]* @"fmt_.19" to i8*
  %".43" = call i32 (i8*, ...) @"printf"(i8* %".42", i1 %"b.4")
  %".44" = bitcast [2 x i8]* @"nl_.20" to i8*
  %".45" = call i32 (i8*, ...) @"printf"(i8* %".44")
  %"b.5" = load i1, i1* %"b"
  br i1 %"b.5", label %"then_0.2", label %"else_0.2"
then_0.1:
  %".26" = bitcast [25 x i8]* @"str_.11" to i8*
  %".27" = bitcast [3 x i8]* @"fmt_.12" to i8*
  %".28" = call i32 (i8*, ...) @"printf"(i8* %".27", i8* %".26")
  %".29" = bitcast [2 x i8]* @"nl_.13" to i8*
  %".30" = call i32 (i8*, ...) @"printf"(i8* %".29")
  br label %"if_merge.1"
else_0.1:
  %".32" = bitcast [22 x i8]* @"str_.14" to i8*
  %".33" = bitcast [3 x i8]* @"fmt_.15" to i8*
  %".34" = call i32 (i8*, ...) @"printf"(i8* %".33", i8* %".32")
  %".35" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".36" = call i32 (i8*, ...) @"printf"(i8* %".35")
  br label %"if_merge.1"
if_merge.2:
  ret i32 0
then_0.2:
  %".47" = bitcast [21 x i8]* @"str_.21" to i8*
  %".48" = bitcast [3 x i8]* @"fmt_.22" to i8*
  %".49" = call i32 (i8*, ...) @"printf"(i8* %".48", i8* %".47")
  %".50" = bitcast [2 x i8]* @"nl_.23" to i8*
  %".51" = call i32 (i8*, ...) @"printf"(i8* %".50")
  br label %"if_merge.2"
else_0.2:
  br label %"if_merge.2"
}

@"str_.1" = internal constant [19 x i8] c"Valor padrao de b:\00"
@"fmt_.2" = internal constant [4 x i8] c"%s \00"
@"fmt_.3" = internal constant [3 x i8] c"%d\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [23 x i8] c"b eh verdadeiro (ERRO)\00"
@"fmt_.6" = internal constant [3 x i8] c"%s\00"
@"nl_.7" = internal constant [2 x i8] c"\0a\00"
@"str_.8" = internal constant [16 x i8] c"b eh falso (OK)\00"
@"fmt_.9" = internal constant [3 x i8] c"%s\00"
@"nl_.10" = internal constant [2 x i8] c"\0a\00"
@"str_.11" = internal constant [25 x i8] c"not b eh verdadeiro (OK)\00"
@"fmt_.12" = internal constant [3 x i8] c"%s\00"
@"nl_.13" = internal constant [2 x i8] c"\0a\00"
@"str_.14" = internal constant [22 x i8] c"not b eh falso (ERRO)\00"
@"fmt_.15" = internal constant [3 x i8] c"%s\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"
@"str_.17" = internal constant [28 x i8] c"Valor de b apos atribuicao:\00"
@"fmt_.18" = internal constant [4 x i8] c"%s \00"
@"fmt_.19" = internal constant [3 x i8] c"%d\00"
@"nl_.20" = internal constant [2 x i8] c"\0a\00"
@"str_.21" = internal constant [21 x i8] c"b eh verdadeiro (OK)\00"
@"fmt_.22" = internal constant [3 x i8] c"%s\00"
@"nl_.23" = internal constant [2 x i8] c"\0a\00"