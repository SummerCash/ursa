(module
  (type $t0 (func (result i32)))
  (func $main (type $t0) (result i32)
    i32.const 42
    return)
  (func $main2 (type $t0) (result i32)
    i32.const 128
    return)
  (export "main" (func $main))
  (export "main2" (func $main2))
)
