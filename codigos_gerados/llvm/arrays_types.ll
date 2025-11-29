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

define i32 @"main"()
{
entry:
  %"arrInt" = alloca double*
  store double* null, double** %"arrInt"
  %".3" = call i8* @"malloc"(i32 800)
  %".4" = bitcast i8* %".3" to double*
  store double* %".4", double** %"arrInt"
  %"arr_ptr" = load double*, double** %"arrInt"
  %".6" = fptosi double              0x0 to i32
  %"elem_ptr" = getelementptr double, double* %"arr_ptr", i32 %".6"
  store double 0x4024000000000000, double* %"elem_ptr"
  %"arr_ptr.1" = load double*, double** %"arrInt"
  %".8" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.1" = getelementptr double, double* %"arr_ptr.1", i32 %".8"
  store double 0x4034000000000000, double* %"elem_ptr.1"
  %"arr_ptr.2" = load double*, double** %"arrInt"
  %".10" = fptosi double              0x0 to i32
  %"elem_ptr.2" = getelementptr double, double* %"arr_ptr.2", i32 %".10"
  %"elem_val" = load double, double* %"elem_ptr.2"
  %".11" = bitcast [5 x i8]* @"fmt_.1" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", double %"elem_val")
  %".13" = bitcast [2 x i8]* @"nl_.2" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  %"arr_ptr.3" = load double*, double** %"arrInt"
  %".15" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.3" = getelementptr double, double* %"arr_ptr.3", i32 %".15"
  %"elem_val.1" = load double, double* %"elem_ptr.3"
  %".16" = bitcast [5 x i8]* @"fmt_.3" to i8*
  %".17" = call i32 (i8*, ...) @"printf"(i8* %".16", double %"elem_val.1")
  %".18" = bitcast [2 x i8]* @"nl_.4" to i8*
  %".19" = call i32 (i8*, ...) @"printf"(i8* %".18")
  %"arrStr" = alloca i8**
  store i8** null, i8*** %"arrStr"
  %".21" = call i8* @"malloc"(i32 400)
  %".22" = bitcast i8* %".21" to i8**
  store i8** %".22", i8*** %"arrStr"
  %".24" = bitcast [6 x i8]* @"str_.5" to i8*
  %"arr_ptr.4" = load i8**, i8*** %"arrStr"
  %".25" = fptosi double              0x0 to i32
  %"elem_ptr.4" = getelementptr i8*, i8** %"arr_ptr.4", i32 %".25"
  store i8* %".24", i8** %"elem_ptr.4"
  %".27" = bitcast [6 x i8]* @"str_.6" to i8*
  %"arr_ptr.5" = load i8**, i8*** %"arrStr"
  %".28" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.5" = getelementptr i8*, i8** %"arr_ptr.5", i32 %".28"
  store i8* %".27", i8** %"elem_ptr.5"
  %"arr_ptr.6" = load i8**, i8*** %"arrStr"
  %".30" = fptosi double              0x0 to i32
  %"elem_ptr.6" = getelementptr i8*, i8** %"arr_ptr.6", i32 %".30"
  %"elem_val.2" = load i8*, i8** %"elem_ptr.6"
  %".31" = bitcast [2 x i8]* @"str_.7" to i8*
  %"len1" = call i32 @"strlen"(i8* %"elem_val.2")
  %"len2" = call i32 @"strlen"(i8* %".31")
  %"total_len" = add i32 %"len1", %"len2"
  %".32" = add i32 %"total_len", 1
  %"new_str_void" = call i8* @"malloc"(i32 %".32")
  %".33" = call i8* @"strcpy"(i8* %"new_str_void", i8* %"elem_val.2")
  %".34" = call i8* @"strcat"(i8* %"new_str_void", i8* %".31")
  %"arr_ptr.7" = load i8**, i8*** %"arrStr"
  %".35" = fptosi double 0x3ff0000000000000 to i32
  %"elem_ptr.7" = getelementptr i8*, i8** %"arr_ptr.7", i32 %".35"
  %"elem_val.3" = load i8*, i8** %"elem_ptr.7"
  %"len1.1" = call i32 @"strlen"(i8* %"new_str_void")
  %"len2.1" = call i32 @"strlen"(i8* %"elem_val.3")
  %"total_len.1" = add i32 %"len1.1", %"len2.1"
  %".36" = add i32 %"total_len.1", 1
  %"new_str_void.1" = call i8* @"malloc"(i32 %".36")
  %".37" = call i8* @"strcpy"(i8* %"new_str_void.1", i8* %"new_str_void")
  %".38" = call i8* @"strcat"(i8* %"new_str_void.1", i8* %"elem_val.3")
  %".39" = bitcast [3 x i8]* @"fmt_.8" to i8*
  %".40" = call i32 (i8*, ...) @"printf"(i8* %".39", i8* %"new_str_void.1")
  %".41" = bitcast [2 x i8]* @"nl_.9" to i8*
  %".42" = call i32 (i8*, ...) @"printf"(i8* %".41")
  %"s" = alloca i8*
  %".43" = bitcast [8 x i8]* @"str_.10" to i8*
  store i8* %".43", i8** %"s"
  %"l" = alloca double
  %"s.1" = load i8*, i8** %"s"
  %"len" = call i32 @"strlen"(i8* %"s.1")
  %".45" = sitofp i32 %"len" to double
  store double %".45", double* %"l"
  %"l.1" = load double, double* %"l"
  %".47" = bitcast [5 x i8]* @"fmt_.11" to i8*
  %".48" = call i32 (i8*, ...) @"printf"(i8* %".47", double %"l.1")
  %".49" = bitcast [2 x i8]* @"nl_.12" to i8*
  %".50" = call i32 (i8*, ...) @"printf"(i8* %".49")
  %"n" = alloca double
  store double 0x4024000000000000, double* %"n"
  %"n.1" = load double, double* %"n"
  %".52" = bitcast [5 x i8]* @"fmt_.13" to i8*
  %".53" = call i32 (i8*, ...) @"printf"(i8* %".52", double %"n.1")
  %".54" = bitcast [2 x i8]* @"nl_.14" to i8*
  %".55" = call i32 (i8*, ...) @"printf"(i8* %".54")
  %"i" = alloca double
  store double 0x4014000000000000, double* %"i"
  %"f" = alloca double
  store double 0x4016000000000000, double* %"f"
  %"res" = alloca double
  %"i.1" = load double, double* %"i"
  %"f.1" = load double, double* %"f"
  %"addtmp" = fadd double %"i.1", %"f.1"
  store double %"addtmp", double* %"res"
  %"res.1" = load double, double* %"res"
  %".59" = bitcast [5 x i8]* @"fmt_.15" to i8*
  %".60" = call i32 (i8*, ...) @"printf"(i8* %".59", double %"res.1")
  %".61" = bitcast [2 x i8]* @"nl_.16" to i8*
  %".62" = call i32 (i8*, ...) @"printf"(i8* %".61")
  ret i32 0
}

@"fmt_.1" = internal constant [5 x i8] c"%.2f\00"
@"nl_.2" = internal constant [2 x i8] c"\0a\00"
@"fmt_.3" = internal constant [5 x i8] c"%.2f\00"
@"nl_.4" = internal constant [2 x i8] c"\0a\00"
@"str_.5" = internal constant [6 x i8] c"Hello\00"
@"str_.6" = internal constant [6 x i8] c"World\00"
@"str_.7" = internal constant [2 x i8] c" \00"
@"fmt_.8" = internal constant [3 x i8] c"%s\00"
@"nl_.9" = internal constant [2 x i8] c"\0a\00"
@"str_.10" = internal constant [8 x i8] c"Tamanho\00"
@"fmt_.11" = internal constant [5 x i8] c"%.2f\00"
@"nl_.12" = internal constant [2 x i8] c"\0a\00"
@"fmt_.13" = internal constant [5 x i8] c"%.2f\00"
@"nl_.14" = internal constant [2 x i8] c"\0a\00"
@"fmt_.15" = internal constant [5 x i8] c"%.2f\00"
@"nl_.16" = internal constant [2 x i8] c"\0a\00"