; ModuleID = 'builtins.cl'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-a0:0:64-f80:32:32"
target triple = "amdil-pc-unknown-amdopencl"

define i32 @get_global_offset(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_global_offset(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_global_offset(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_global_offset(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_global_offset(i32) nounwind readonly

define i32 @get_global_id(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %id = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %dummylabel
  %tmp6 = load i32* %retval, align 4
  ret i32 %tmp6

switch.default:                                   ; preds = %entry
  store i32 0, i32* %id, align 4
  br label %dummylabel

dummylabel:                                       ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %id, align 4
  store i32 %tmp5, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_global_id(i32 0) nounwind
  store i32 %call, i32* %id, align 4
  br label %dummylabel

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_global_id(i32 1) nounwind
  store i32 %call2, i32* %id, align 4
  br label %dummylabel

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_global_id(i32 2) nounwind
  store i32 %call4, i32* %id, align 4
  br label %dummylabel
}

declare i32 @__hsail_get_global_id(i32) nounwind readonly

define i32 @get_local_id(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_local_id(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_local_id(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_local_id(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_local_id(i32) nounwind readonly

define i32 @get_group_id(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_group_id(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_group_id(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_group_id(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_group_id(i32) nounwind readonly

define i32 @get_global_size(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_global_size(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_global_size(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_global_size(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_global_size(i32) nounwind readonly

define i32 @get_local_size(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_local_size(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_local_size(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_local_size(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_local_size(i32) nounwind readonly

define i32 @get_enqueue_local_size(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_local_size(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_local_size(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_local_size(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

define i32 @get_num_groups(i32 %d) nounwind {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %tmp = load i32* %d.addr, align 4
  switch i32 %tmp, label %switch.default [
    i32 0, label %switch.case
    i32 1, label %switch.case1
    i32 2, label %switch.case3
  ]

return:                                           ; preds = %switch.case3, %switch.case1, %switch.case, %switch.default
  %tmp5 = load i32* %retval, align 4
  ret i32 %tmp5

switch.default:                                   ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

switch.case:                                      ; preds = %entry
  %call = call i32 @__hsail_get_num_groups(i32 0) nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

switch.case1:                                     ; preds = %entry
  %call2 = call i32 @__hsail_get_num_groups(i32 1) nounwind
  store i32 %call2, i32* %retval, align 4
  br label %return

switch.case3:                                     ; preds = %entry
  %call4 = call i32 @__hsail_get_num_groups(i32 2) nounwind
  store i32 %call4, i32* %retval, align 4
  br label %return
}

declare i32 @__hsail_get_num_groups(i32) nounwind readonly

define i32 @get_work_dim() nounwind {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @__hsail_get_work_dim() nounwind
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %entry
  %tmp = load i32* %retval, align 4
  ret i32 %tmp
}

declare i32 @__hsail_get_work_dim() nounwind readonly
