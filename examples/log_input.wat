(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32) (result i32)))
  (import "env" "__ursa_log" (func $__ursa_log (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $log_input (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__ursa_log
    i32.const 0)
  (table (;0;) 1 1 anyfunc)
  (memory (;0;) 16)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "log_input" (func $log_input)))
