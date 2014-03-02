; ModuleID = 'test_code.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv4t-none-linux-gnueabi"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list = type { i8* }

@libiberty_concat_ptr = common global i8* null, align 4
@.str = private unnamed_addr constant [11 x i8] c"\22\22 = \22%s\22\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"\22a\22 = \22%s\22\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"\22ab\22 = \22%s\22\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"\22abc\22 = \22%s\22\0A\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"\22abcd\22 = \22%s\22\0A\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"\22abcde\22 = \22%s\22\0A\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"\22abcdef\22 = \22%s\22\0A\00", align 1
@.str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str14 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@_xexit_cleanup = common global void ()* null, align 4
@name = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8]* @.str218, i32 0, i32 0), align 4
@stderr = external global %struct._IO_FILE*
@.str16 = private unnamed_addr constant [32 x i8] c"\0A%s%sCannot allocate %lu bytes\0A\00", align 1
@.str117 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str218 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define i32 @concat_length(i8* readonly %first, ...) #0 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args1 = bitcast %struct.__va_list* %args to i8*
  call void @llvm.va_start(i8* %args1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %.fca.0.gep = bitcast %struct.__va_list* %args to i32*
  %.fca.0.load = load i32* %.fca.0.gep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %arg.06.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %3, %for.body.i ]
  %length.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %args.sroa.0.04.i = phi i32 [ %.fca.0.load, %for.body.lr.ph.i ], [ %1, %for.body.i ]
  %call.i = call i32 @strlen(i8* %arg.06.i) #4
  %add.i = add i32 %call.i, %length.05.i
  %0 = inttoptr i32 %args.sroa.0.04.i to i8*
  %ap.next.i = getelementptr i8* %0, i32 4
  %1 = ptrtoint i8* %ap.next.i to i32
  %2 = inttoptr i32 %args.sroa.0.04.i to i8**
  %3 = load i8** %2, align 4
  %tobool.i = icmp eq i8* %3, null
  br i1 %tobool.i, label %vconcat_length.exit, label %for.body.i

vconcat_length.exit:                              ; preds = %for.body.i, %entry
  %length.0.lcssa.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i ]
  call void @llvm.va_end(i8* %args1)
  ret i32 %length.0.lcssa.i
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
define i8* @concat_copy(i8* %dst, i8* readonly %first, ...) #0 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args1 = bitcast %struct.__va_list* %args to i8*
  call void @llvm.va_start(i8* %args1)
  %tobool1.i = icmp eq i8* %first, null
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %.fca.0.gep = bitcast %struct.__va_list* %args to i32*
  %.fca.0.load = load i32* %.fca.0.gep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %args.sroa.0.04.i = phi i32 [ %.fca.0.load, %for.body.lr.ph.i ], [ %1, %for.body.i ]
  %arg.03.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %3, %for.body.i ]
  %end.02.i = phi i8* [ %dst, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %call.i = call i32 @strlen(i8* %arg.03.i) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %end.02.i, i8* %arg.03.i, i32 %call.i, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.02.i, i32 %call.i
  %0 = inttoptr i32 %args.sroa.0.04.i to i8*
  %ap.next.i = getelementptr i8* %0, i32 4
  %1 = ptrtoint i8* %ap.next.i to i32
  %2 = inttoptr i32 %args.sroa.0.04.i to i8**
  %3 = load i8** %2, align 4
  %tobool.i = icmp eq i8* %3, null
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i

vconcat_copy.exit:                                ; preds = %for.body.i, %entry
  %end.0.lcssa.i = phi i8* [ %dst, %entry ], [ %add.ptr.i, %for.body.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1
  call void @llvm.va_end(i8* %args1)
  ret i8* %dst
}

; Function Attrs: nounwind
define i8* @concat_copy2(i8* readonly %first, ...) #0 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args1 = bitcast %struct.__va_list* %args to i8*
  call void @llvm.va_start(i8* %args1)
  %0 = load i8** @libiberty_concat_ptr, align 4
  %tobool1.i = icmp eq i8* %first, null
  br i1 %tobool1.i, label %vconcat_copy.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %.fca.0.gep = bitcast %struct.__va_list* %args to i32*
  %.fca.0.load = load i32* %.fca.0.gep, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %args.sroa.0.04.i = phi i32 [ %.fca.0.load, %for.body.lr.ph.i ], [ %2, %for.body.i ]
  %arg.03.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %4, %for.body.i ]
  %end.02.i = phi i8* [ %0, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %call.i = call i32 @strlen(i8* %arg.03.i) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %end.02.i, i8* %arg.03.i, i32 %call.i, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.02.i, i32 %call.i
  %1 = inttoptr i32 %args.sroa.0.04.i to i8*
  %ap.next.i = getelementptr i8* %1, i32 4
  %2 = ptrtoint i8* %ap.next.i to i32
  %3 = inttoptr i32 %args.sroa.0.04.i to i8**
  %4 = load i8** %3, align 4
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %vconcat_copy.exit, label %for.body.i

vconcat_copy.exit:                                ; preds = %for.body.i, %entry
  %end.0.lcssa.i = phi i8* [ %0, %entry ], [ %add.ptr.i, %for.body.i ]
  store i8 0, i8* %end.0.lcssa.i, align 1
  call void @llvm.va_end(i8* %args1)
  %5 = load i8** @libiberty_concat_ptr, align 4
  ret i8* %5
}

; Function Attrs: nounwind
define noalias i8* @concat(i8* readonly %first, ...) #0 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args4 = alloca %struct.__va_list, align 4
  %args1 = bitcast %struct.__va_list* %args to i8*
  call void @llvm.va_start(i8* %args1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %.fca.0.gep8 = bitcast %struct.__va_list* %args to i32*
  %.fca.0.load9 = load i32* %.fca.0.gep8, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %arg.06.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %3, %for.body.i ]
  %length.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %args.sroa.0.04.i = phi i32 [ %.fca.0.load9, %for.body.lr.ph.i ], [ %1, %for.body.i ]
  %call.i = call i32 @strlen(i8* %arg.06.i) #4
  %add.i = add i32 %call.i, %length.05.i
  %0 = inttoptr i32 %args.sroa.0.04.i to i8*
  %ap.next.i = getelementptr i8* %0, i32 4
  %1 = ptrtoint i8* %ap.next.i to i32
  %2 = inttoptr i32 %args.sroa.0.04.i to i8**
  %3 = load i8** %2, align 4
  %tobool.i = icmp eq i8* %3, null
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i

vconcat_length.exit.loopexit:                     ; preds = %for.body.i
  %phitmp = add i32 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i32 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call2 = call noalias i8* @xmalloc(i32 %length.0.lcssa.i) #1
  call void @llvm.va_end(i8* %args1)
  %args45 = bitcast %struct.__va_list* %args4 to i8*
  call void @llvm.va_start(i8* %args45)
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i14

for.body.lr.ph.i14:                               ; preds = %vconcat_length.exit
  %.fca.0.gep = bitcast %struct.__va_list* %args4 to i32*
  %.fca.0.load = load i32* %.fca.0.gep, align 4
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.body.i19, %for.body.lr.ph.i14
  %args.sroa.0.04.i15 = phi i32 [ %.fca.0.load, %for.body.lr.ph.i14 ], [ %5, %for.body.i19 ]
  %arg.03.i = phi i8* [ %first, %for.body.lr.ph.i14 ], [ %7, %for.body.i19 ]
  %end.02.i = phi i8* [ %call2, %for.body.lr.ph.i14 ], [ %add.ptr.i, %for.body.i19 ]
  %call.i16 = call i32 @strlen(i8* %arg.03.i) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %end.02.i, i8* %arg.03.i, i32 %call.i16, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.02.i, i32 %call.i16
  %4 = inttoptr i32 %args.sroa.0.04.i15 to i8*
  %ap.next.i17 = getelementptr i8* %4, i32 4
  %5 = ptrtoint i8* %ap.next.i17 to i32
  %6 = inttoptr i32 %args.sroa.0.04.i15 to i8**
  %7 = load i8** %6, align 4
  %tobool.i18 = icmp eq i8* %7, null
  br i1 %tobool.i18, label %vconcat_copy.exit, label %for.body.i19

vconcat_copy.exit:                                ; preds = %for.body.i19, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call2, %vconcat_length.exit ], [ %add.ptr.i, %for.body.i19 ]
  store i8 0, i8* %end.0.lcssa.i, align 1
  call void @llvm.va_end(i8* %args45)
  ret i8* %call2
}

; Function Attrs: nounwind
define noalias i8* @reconcat(i8* %optr, i8* readonly %first, ...) #0 {
entry:
  %args = alloca %struct.__va_list, align 4
  %args4 = alloca %struct.__va_list, align 4
  %args1 = bitcast %struct.__va_list* %args to i8*
  call void @llvm.va_start(i8* %args1)
  %tobool3.i = icmp eq i8* %first, null
  br i1 %tobool3.i, label %vconcat_length.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %.fca.0.gep8 = bitcast %struct.__va_list* %args to i32*
  %.fca.0.load9 = load i32* %.fca.0.gep8, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %arg.06.i = phi i8* [ %first, %for.body.lr.ph.i ], [ %3, %for.body.i ]
  %length.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %args.sroa.0.04.i = phi i32 [ %.fca.0.load9, %for.body.lr.ph.i ], [ %1, %for.body.i ]
  %call.i = call i32 @strlen(i8* %arg.06.i) #4
  %add.i = add i32 %call.i, %length.05.i
  %0 = inttoptr i32 %args.sroa.0.04.i to i8*
  %ap.next.i = getelementptr i8* %0, i32 4
  %1 = ptrtoint i8* %ap.next.i to i32
  %2 = inttoptr i32 %args.sroa.0.04.i to i8**
  %3 = load i8** %2, align 4
  %tobool.i = icmp eq i8* %3, null
  br i1 %tobool.i, label %vconcat_length.exit.loopexit, label %for.body.i

vconcat_length.exit.loopexit:                     ; preds = %for.body.i
  %phitmp = add i32 %add.i, 1
  br label %vconcat_length.exit

vconcat_length.exit:                              ; preds = %vconcat_length.exit.loopexit, %entry
  %length.0.lcssa.i = phi i32 [ 1, %entry ], [ %phitmp, %vconcat_length.exit.loopexit ]
  %call2 = call noalias i8* @xmalloc(i32 %length.0.lcssa.i) #1
  call void @llvm.va_end(i8* %args1)
  %args45 = bitcast %struct.__va_list* %args4 to i8*
  call void @llvm.va_start(i8* %args45)
  br i1 %tobool3.i, label %vconcat_copy.exit, label %for.body.lr.ph.i15

for.body.lr.ph.i15:                               ; preds = %vconcat_length.exit
  %.fca.0.gep = bitcast %struct.__va_list* %args4 to i32*
  %.fca.0.load = load i32* %.fca.0.gep, align 4
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20, %for.body.lr.ph.i15
  %args.sroa.0.04.i16 = phi i32 [ %.fca.0.load, %for.body.lr.ph.i15 ], [ %5, %for.body.i20 ]
  %arg.03.i = phi i8* [ %first, %for.body.lr.ph.i15 ], [ %7, %for.body.i20 ]
  %end.02.i = phi i8* [ %call2, %for.body.lr.ph.i15 ], [ %add.ptr.i, %for.body.i20 ]
  %call.i17 = call i32 @strlen(i8* %arg.03.i) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %end.02.i, i8* %arg.03.i, i32 %call.i17, i32 1, i1 false) #1
  %add.ptr.i = getelementptr inbounds i8* %end.02.i, i32 %call.i17
  %4 = inttoptr i32 %args.sroa.0.04.i16 to i8*
  %ap.next.i18 = getelementptr i8* %4, i32 4
  %5 = ptrtoint i8* %ap.next.i18 to i32
  %6 = inttoptr i32 %args.sroa.0.04.i16 to i8**
  %7 = load i8** %6, align 4
  %tobool.i19 = icmp eq i8* %7, null
  br i1 %tobool.i19, label %vconcat_copy.exit, label %for.body.i20

vconcat_copy.exit:                                ; preds = %for.body.i20, %vconcat_length.exit
  %end.0.lcssa.i = phi i8* [ %call2, %vconcat_length.exit ], [ %add.ptr.i, %for.body.i20 ]
  store i8 0, i8* %end.0.lcssa.i, align 1
  %tobool = icmp eq i8* %optr, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %vconcat_copy.exit
  call void @free(i8* %optr) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %vconcat_copy.exit
  call void @llvm.va_end(i8* %args45)
  ret i8* %call2
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #0

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %call = tail call noalias i8* (i8*, ...)* @concat(i8* null)
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i8* %call) #1
  %call2 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* null)
  %call3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i8* %call2) #1
  %call4 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* null)
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i8* %call4) #1
  %call6 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* null)
  %call7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i8* %call6) #1
  %call8 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8* null)
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i8* %call8) #1
  %call10 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8* null)
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i8* %call10) #1
  %call12 = tail call noalias i8* (i8*, ...)* @concat(i8* getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i8* null)
  %call13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str12, i32 0, i32 0), i8* %call12) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

; Function Attrs: nounwind readonly
declare i32 @strlen(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: noreturn nounwind
define void @xexit(i32 %code) #3 {
entry:
  %0 = load void ()** @_xexit_cleanup, align 4
  %cmp = icmp eq void ()* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void %0() #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @exit(i32 %code) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
define void @xmalloc_set_program_name(i8* %s) #0 {
entry:
  store i8* %s, i8** @name, align 4
  ret void
}

; Function Attrs: noreturn nounwind
define void @xmalloc_failed(i32 %size) #3 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 4
  %1 = load i8** @name, align 4
  %2 = load i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str218, i32 0, i32 0)
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8]* @.str16, i32 0, i32 0), i8* %1, i8* %cond, i32 %size) #1
  tail call void @xexit(i32 1) #5
  unreachable
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #0

; Function Attrs: nounwind
define noalias i8* @xmalloc(i32 %size) #0 {
entry:
  %cmp = icmp eq i32 %size, 0
  %.size = select i1 %cmp, i32 1, i32 %size
  %call = tail call i8* @malloc(i32 %.size) #1
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  tail call void @xmalloc_failed(i32 %.size) #6
  unreachable

if.end2:                                          ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nounwind
define noalias i8* @xcalloc(i32 %nelem, i32 %elsize) #0 {
entry:
  %cmp = icmp eq i32 %nelem, 0
  %cmp1 = icmp eq i32 %elsize, 0
  %or.cond = or i1 %cmp, %cmp1
  %elsize.addr.0 = select i1 %or.cond, i32 1, i32 %elsize
  %nelem.addr.0 = select i1 %or.cond, i32 1, i32 %nelem
  %call = tail call i8* @calloc(i32 %nelem.addr.0, i32 %elsize.addr.0) #1
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  %mul = mul i32 %nelem.addr.0, %elsize.addr.0
  tail call void @xmalloc_failed(i32 %mul) #6
  unreachable

if.end3:                                          ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i32, i32) #0

; Function Attrs: nounwind
define i8* @xrealloc(i8* %oldmem, i32 %size) #0 {
entry:
  %cmp = icmp eq i32 %size, 0
  %.size = select i1 %cmp, i32 1, i32 %size
  %tobool = icmp eq i8* %oldmem, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  %call = tail call i8* @malloc(i32 %.size) #1
  br label %if.end3

if.else:                                          ; preds = %entry
  %call2 = tail call i8* @realloc(i8* %oldmem, i32 %.size) #1
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %newmem.0 = phi i8* [ %call2, %if.else ], [ %call, %if.then1 ]
  %tobool4 = icmp eq i8* %newmem.0, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @xmalloc_failed(i32 %.size) #6
  unreachable

if.end6:                                          ; preds = %if.end3
  ret i8* %newmem.0
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i32) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }
