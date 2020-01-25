declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)

@.format_char = private unnamed_addr constant [3 x i8] c"%d\00"       , align 1
@.format_ans  = private unnamed_addr constant [8 x i8] c"%c=>%c\0A\00", align 1

define void @hanoi(i32 %n, i8 %x, i8 %y, i8 %z) {
  %next = sub nsw i32 %n, 1
  %cond = icmp sgt i32 %n, 1

  br i1 %cond, label %true_1, label %false_1
  true_1:
    call void @hanoi(i32 %next, i8 %x, i8 %z, i8 %y)
    br label %false_1
  false_1:

  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.format_ans, i64 0, i64 0), i8 %x, i8 %y)

  br i1 %cond, label %true_2, label %false_2
  true_2:
    call void @hanoi(i32 %next, i8 %z, i8 %y, i8 %x)
    br label %false_2
  false_2:

  ret void
}

define i32 @main() {
  %n_ = alloca i32, align 4
  call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.format_char, i64 0, i64 0), i32* %n_)
  %n = load i32, i32* %n_, align 4

  call void @hanoi(i32 %n, i8 97, i8 98, i8 99)

  ret i32 0
}
