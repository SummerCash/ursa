(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (import "./rustc_h_lxff646npkb" "__wbg_f_alert_alert_n" (func $__wbg_f_alert_alert_n (type 2)))
  (import "./rustc_h_lxff646npkb" "__wbindgen_throw" (func $__wbindgen_throw (type 2)))
  (func $greet (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=20
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        i32.const 16
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.store offset=24
        local.get 2
        i64.const 16
        i64.store offset=28 align=4
        local.get 2
        local.get 2
        i32.const 24
        i32.add
        i32.store offset=36
        local.get 2
        i32.const 52
        i32.add
        i32.const 1
        i32.store
        local.get 2
        i32.const 60
        i32.add
        i32.const 1
        i32.store
        local.get 2
        i32.const 2
        i32.store offset=44
        local.get 2
        i32.const 1664
        i32.store offset=40
        local.get 2
        i32.const 1064
        i32.store offset=48
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 2
        i32.const 36
        i32.add
        i32.const 1680
        local.get 2
        i32.const 40
        i32.add
        call $core::fmt::write::h533d40856339be39
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=28
        local.set 0
        local.get 2
        i32.load offset=24
        local.tee 1
        local.get 2
        i32.load offset=32
        call $__wbg_f_alert_alert_n
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
        end
        local.get 2
        i32.const 64
        i32.add
        global.set 0
        return
      end
      i32.const 16
      i32.const 1
      call $rust_oom
      unreachable
    end
    call $core::result::unwrap_failed::ha655e72972fab217
    unreachable)
  (func $<&'a_T_as_core::fmt::Display>::fmt::hdb27d061969da417 (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              local.get 0
                                                                              i32.const 244
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              i32.const 0
                                                                              i32.load offset=1948
                                                                              local.tee 1
                                                                              i32.const 16
                                                                              local.get 0
                                                                              i32.const 11
                                                                              i32.add
                                                                              i32.const -8
                                                                              i32.and
                                                                              local.get 0
                                                                              i32.const 11
                                                                              i32.lt_u
                                                                              select
                                                                              local.tee 2
                                                                              i32.const 3
                                                                              i32.shr_u
                                                                              local.tee 3
                                                                              i32.const 31
                                                                              i32.and
                                                                              local.tee 4
                                                                              i32.shr_u
                                                                              local.tee 0
                                                                              i32.const 3
                                                                              i32.and
                                                                              i32.eqz
                                                                              br_if 1 (;@36;)
                                                                              local.get 0
                                                                              i32.const -1
                                                                              i32.xor
                                                                              i32.const 1
                                                                              i32.and
                                                                              local.get 3
                                                                              i32.add
                                                                              local.tee 2
                                                                              i32.const 3
                                                                              i32.shl
                                                                              local.tee 4
                                                                              i32.const 1964
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 0
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.set 5
                                                                              local.get 0
                                                                              i32.load offset=8
                                                                              local.tee 3
                                                                              local.get 4
                                                                              i32.const 1956
                                                                              i32.add
                                                                              local.tee 4
                                                                              i32.eq
                                                                              br_if 2 (;@35;)
                                                                              local.get 3
                                                                              local.get 4
                                                                              i32.store offset=12
                                                                              local.get 4
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.get 3
                                                                              i32.store
                                                                              br 3 (;@34;)
                                                                            end
                                                                            i32.const 0
                                                                            local.set 3
                                                                            local.get 0
                                                                            i32.const -64
                                                                            i32.ge_u
                                                                            br_if 28 (;@8;)
                                                                            local.get 0
                                                                            i32.const 11
                                                                            i32.add
                                                                            local.tee 0
                                                                            i32.const -8
                                                                            i32.and
                                                                            local.set 2
                                                                            i32.const 0
                                                                            i32.load offset=1952
                                                                            local.tee 6
                                                                            i32.eqz
                                                                            br_if 9 (;@27;)
                                                                            i32.const 0
                                                                            local.set 7
                                                                            block  ;; label = @37
                                                                              local.get 0
                                                                              i32.const 8
                                                                              i32.shr_u
                                                                              local.tee 0
                                                                              i32.eqz
                                                                              br_if 0 (;@37;)
                                                                              i32.const 31
                                                                              local.set 7
                                                                              local.get 2
                                                                              i32.const 16777215
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              local.get 2
                                                                              i32.const 38
                                                                              local.get 0
                                                                              i32.clz
                                                                              local.tee 0
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              i32.shr_u
                                                                              i32.const 1
                                                                              i32.and
                                                                              i32.const 31
                                                                              local.get 0
                                                                              i32.sub
                                                                              i32.const 1
                                                                              i32.shl
                                                                              i32.or
                                                                              local.set 7
                                                                            end
                                                                            i32.const 0
                                                                            local.get 2
                                                                            i32.sub
                                                                            local.set 3
                                                                            local.get 7
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.const 2220
                                                                            i32.add
                                                                            i32.load
                                                                            local.tee 0
                                                                            i32.eqz
                                                                            br_if 6 (;@30;)
                                                                            i32.const 0
                                                                            local.set 4
                                                                            local.get 2
                                                                            i32.const 0
                                                                            i32.const 25
                                                                            local.get 7
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.sub
                                                                            i32.const 31
                                                                            i32.and
                                                                            local.get 7
                                                                            i32.const 31
                                                                            i32.eq
                                                                            select
                                                                            i32.shl
                                                                            local.set 1
                                                                            i32.const 0
                                                                            local.set 5
                                                                            loop  ;; label = @37
                                                                              block  ;; label = @38
                                                                                local.get 0
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                local.tee 8
                                                                                local.get 2
                                                                                i32.lt_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 8
                                                                                local.get 2
                                                                                i32.sub
                                                                                local.tee 8
                                                                                local.get 3
                                                                                i32.ge_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 8
                                                                                local.set 3
                                                                                local.get 0
                                                                                local.set 5
                                                                                local.get 8
                                                                                i32.eqz
                                                                                br_if 6 (;@32;)
                                                                              end
                                                                              local.get 0
                                                                              i32.const 20
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 8
                                                                              local.get 4
                                                                              local.get 8
                                                                              local.get 0
                                                                              local.get 1
                                                                              i32.const 29
                                                                              i32.shr_u
                                                                              i32.const 4
                                                                              i32.and
                                                                              i32.add
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 0
                                                                              i32.ne
                                                                              select
                                                                              local.get 4
                                                                              local.get 8
                                                                              select
                                                                              local.set 4
                                                                              local.get 1
                                                                              i32.const 1
                                                                              i32.shl
                                                                              local.set 1
                                                                              local.get 0
                                                                              br_if 0 (;@37;)
                                                                            end
                                                                            local.get 4
                                                                            i32.eqz
                                                                            br_if 5 (;@31;)
                                                                            local.get 4
                                                                            local.set 0
                                                                            br 7 (;@29;)
                                                                          end
                                                                          local.get 2
                                                                          i32.const 0
                                                                          i32.load offset=2348
                                                                          i32.le_u
                                                                          br_if 8 (;@27;)
                                                                          local.get 0
                                                                          i32.eqz
                                                                          br_if 2 (;@33;)
                                                                          local.get 0
                                                                          local.get 4
                                                                          i32.shl
                                                                          i32.const 2
                                                                          local.get 4
                                                                          i32.shl
                                                                          local.tee 0
                                                                          i32.const 0
                                                                          local.get 0
                                                                          i32.sub
                                                                          i32.or
                                                                          i32.and
                                                                          local.tee 0
                                                                          i32.const 0
                                                                          local.get 0
                                                                          i32.sub
                                                                          i32.and
                                                                          i32.ctz
                                                                          local.tee 3
                                                                          i32.const 3
                                                                          i32.shl
                                                                          local.tee 5
                                                                          i32.const 1964
                                                                          i32.add
                                                                          i32.load
                                                                          local.tee 0
                                                                          i32.load offset=8
                                                                          local.tee 4
                                                                          local.get 5
                                                                          i32.const 1956
                                                                          i32.add
                                                                          local.tee 5
                                                                          i32.eq
                                                                          br_if 10 (;@25;)
                                                                          local.get 4
                                                                          local.get 5
                                                                          i32.store offset=12
                                                                          local.get 5
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.get 4
                                                                          i32.store
                                                                          br 11 (;@24;)
                                                                        end
                                                                        i32.const 0
                                                                        local.get 1
                                                                        i32.const -2
                                                                        local.get 2
                                                                        i32.rotl
                                                                        i32.and
                                                                        i32.store offset=1948
                                                                      end
                                                                      local.get 0
                                                                      local.get 2
                                                                      i32.const 3
                                                                      i32.shl
                                                                      local.tee 2
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 0
                                                                      local.get 2
                                                                      i32.add
                                                                      local.tee 0
                                                                      local.get 0
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 5
                                                                      return
                                                                    end
                                                                    i32.const 0
                                                                    i32.load offset=1952
                                                                    local.tee 0
                                                                    i32.eqz
                                                                    br_if 5 (;@27;)
                                                                    local.get 0
                                                                    i32.const 0
                                                                    local.get 0
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.ctz
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.const 2220
                                                                    i32.add
                                                                    i32.load
                                                                    local.tee 1
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    local.get 2
                                                                    i32.sub
                                                                    local.set 3
                                                                    local.get 1
                                                                    local.set 4
                                                                    local.get 1
                                                                    i32.load offset=16
                                                                    local.tee 0
                                                                    i32.eqz
                                                                    br_if 20 (;@12;)
                                                                    i32.const 0
                                                                    local.set 9
                                                                    br 21 (;@11;)
                                                                  end
                                                                  i32.const 0
                                                                  local.set 3
                                                                  local.get 0
                                                                  local.set 5
                                                                  br 2 (;@29;)
                                                                end
                                                                local.get 5
                                                                br_if 2 (;@28;)
                                                              end
                                                              i32.const 0
                                                              local.set 5
                                                              i32.const 2
                                                              local.get 7
                                                              i32.const 31
                                                              i32.and
                                                              i32.shl
                                                              local.tee 0
                                                              i32.const 0
                                                              local.get 0
                                                              i32.sub
                                                              i32.or
                                                              local.get 6
                                                              i32.and
                                                              local.tee 0
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              local.get 0
                                                              i32.const 0
                                                              local.get 0
                                                              i32.sub
                                                              i32.and
                                                              i32.ctz
                                                              i32.const 2
                                                              i32.shl
                                                              i32.const 2220
                                                              i32.add
                                                              i32.load
                                                              local.tee 0
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                            end
                                                            loop  ;; label = @29
                                                              local.get 0
                                                              i32.load offset=4
                                                              i32.const -8
                                                              i32.and
                                                              local.tee 4
                                                              local.get 2
                                                              i32.ge_u
                                                              local.get 4
                                                              local.get 2
                                                              i32.sub
                                                              local.tee 8
                                                              local.get 3
                                                              i32.lt_u
                                                              i32.and
                                                              local.set 1
                                                              block  ;; label = @30
                                                                local.get 0
                                                                i32.load offset=16
                                                                local.tee 4
                                                                br_if 0 (;@30;)
                                                                local.get 0
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                local.set 4
                                                              end
                                                              local.get 0
                                                              local.get 5
                                                              local.get 1
                                                              select
                                                              local.set 5
                                                              local.get 8
                                                              local.get 3
                                                              local.get 1
                                                              select
                                                              local.set 3
                                                              local.get 4
                                                              local.set 0
                                                              local.get 4
                                                              br_if 0 (;@29;)
                                                            end
                                                            local.get 5
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                          end
                                                          i32.const 0
                                                          i32.load offset=2348
                                                          local.tee 0
                                                          local.get 2
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                          local.get 3
                                                          local.get 0
                                                          local.get 2
                                                          i32.sub
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                i32.const 0
                                                                i32.load offset=2348
                                                                local.tee 3
                                                                local.get 2
                                                                i32.ge_u
                                                                br_if 0 (;@30;)
                                                                i32.const 0
                                                                i32.load offset=2352
                                                                local.tee 0
                                                                local.get 2
                                                                i32.le_u
                                                                br_if 1 (;@29;)
                                                                i32.const 0
                                                                local.get 0
                                                                local.get 2
                                                                i32.sub
                                                                local.tee 3
                                                                i32.store offset=2352
                                                                i32.const 0
                                                                i32.const 0
                                                                i32.load offset=2360
                                                                local.tee 0
                                                                local.get 2
                                                                i32.add
                                                                local.tee 4
                                                                i32.store offset=2360
                                                                local.get 4
                                                                local.get 3
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 0
                                                                local.get 2
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 0
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              i32.const 0
                                                              i32.load offset=2356
                                                              local.set 0
                                                              local.get 3
                                                              local.get 2
                                                              i32.sub
                                                              local.tee 4
                                                              i32.const 16
                                                              i32.ge_u
                                                              br_if 1 (;@28;)
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.store offset=2356
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.store offset=2348
                                                              local.get 0
                                                              local.get 3
                                                              i32.const 3
                                                              i32.or
                                                              i32.store offset=4
                                                              local.get 0
                                                              local.get 3
                                                              i32.add
                                                              local.tee 3
                                                              i32.const 4
                                                              i32.add
                                                              local.set 2
                                                              local.get 3
                                                              i32.load offset=4
                                                              i32.const 1
                                                              i32.or
                                                              local.set 3
                                                              br 2 (;@27;)
                                                            end
                                                            i32.const 0
                                                            local.set 3
                                                            local.get 2
                                                            i32.const 65583
                                                            i32.add
                                                            local.tee 4
                                                            i32.const 16
                                                            i32.shr_u
                                                            memory.grow
                                                            local.tee 0
                                                            i32.const -1
                                                            i32.eq
                                                            br_if 20 (;@8;)
                                                            local.get 0
                                                            i32.const 16
                                                            i32.shl
                                                            local.tee 1
                                                            i32.eqz
                                                            br_if 20 (;@8;)
                                                            i32.const 0
                                                            i32.const 0
                                                            i32.load offset=2364
                                                            local.get 4
                                                            i32.const -65536
                                                            i32.and
                                                            local.tee 8
                                                            i32.add
                                                            local.tee 0
                                                            i32.store offset=2364
                                                            i32.const 0
                                                            i32.const 0
                                                            i32.load offset=2368
                                                            local.tee 3
                                                            local.get 0
                                                            local.get 0
                                                            local.get 3
                                                            i32.lt_u
                                                            select
                                                            i32.store offset=2368
                                                            i32.const 0
                                                            i32.load offset=2360
                                                            local.tee 3
                                                            i32.eqz
                                                            br_if 9 (;@19;)
                                                            i32.const 2372
                                                            local.set 0
                                                            loop  ;; label = @29
                                                              local.get 0
                                                              i32.load
                                                              local.tee 4
                                                              local.get 0
                                                              i32.load offset=4
                                                              local.tee 5
                                                              i32.add
                                                              local.get 1
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              local.get 0
                                                              i32.load offset=8
                                                              local.tee 0
                                                              br_if 0 (;@29;)
                                                              br 19 (;@10;)
                                                            end
                                                          end
                                                          i32.const 0
                                                          local.get 4
                                                          i32.store offset=2348
                                                          i32.const 0
                                                          local.get 0
                                                          local.get 2
                                                          i32.add
                                                          local.tee 1
                                                          i32.store offset=2356
                                                          local.get 1
                                                          local.get 4
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          local.get 0
                                                          local.get 3
                                                          i32.add
                                                          local.get 4
                                                          i32.store
                                                          local.get 2
                                                          i32.const 3
                                                          i32.or
                                                          local.set 3
                                                          local.get 0
                                                          i32.const 4
                                                          i32.add
                                                          local.set 2
                                                        end
                                                        local.get 2
                                                        local.get 3
                                                        i32.store
                                                        local.get 0
                                                        i32.const 8
                                                        i32.add
                                                        return
                                                      end
                                                      local.get 5
                                                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                                                      local.get 3
                                                      i32.const 15
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                      local.get 5
                                                      local.get 3
                                                      local.get 2
                                                      i32.add
                                                      local.tee 0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 5
                                                      local.get 0
                                                      i32.add
                                                      local.tee 0
                                                      local.get 0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 12 (;@13;)
                                                    end
                                                    i32.const 0
                                                    local.get 1
                                                    i32.const -2
                                                    local.get 3
                                                    i32.rotl
                                                    i32.and
                                                    i32.store offset=1948
                                                  end
                                                  local.get 0
                                                  i32.const 8
                                                  i32.add
                                                  local.set 4
                                                  local.get 0
                                                  local.get 2
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 0
                                                  local.get 2
                                                  i32.add
                                                  local.tee 1
                                                  local.get 3
                                                  i32.const 3
                                                  i32.shl
                                                  local.tee 3
                                                  local.get 2
                                                  i32.sub
                                                  local.tee 2
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 0
                                                  local.get 3
                                                  i32.add
                                                  local.get 2
                                                  i32.store
                                                  i32.const 0
                                                  i32.load offset=2348
                                                  local.tee 0
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 0
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 5
                                                  i32.const 3
                                                  i32.shl
                                                  i32.const 1956
                                                  i32.add
                                                  local.set 3
                                                  i32.const 0
                                                  i32.load offset=2356
                                                  local.set 0
                                                  i32.const 0
                                                  i32.load offset=1948
                                                  local.tee 8
                                                  i32.const 1
                                                  local.get 5
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 5
                                                  i32.and
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  local.get 3
                                                  i32.load offset=8
                                                  local.set 5
                                                  br 2 (;@21;)
                                                end
                                                local.get 5
                                                local.get 2
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                local.get 5
                                                local.get 2
                                                i32.add
                                                local.tee 0
                                                local.get 3
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 0
                                                local.get 3
                                                i32.add
                                                local.get 3
                                                i32.store
                                                local.get 3
                                                i32.const 255
                                                i32.gt_u
                                                br_if 5 (;@17;)
                                                local.get 3
                                                i32.const 3
                                                i32.shr_u
                                                local.tee 3
                                                i32.const 3
                                                i32.shl
                                                i32.const 1956
                                                i32.add
                                                local.set 2
                                                i32.const 0
                                                i32.load offset=1948
                                                local.tee 4
                                                i32.const 1
                                                local.get 3
                                                i32.const 31
                                                i32.and
                                                i32.shl
                                                local.tee 3
                                                i32.and
                                                i32.eqz
                                                br_if 7 (;@15;)
                                                local.get 2
                                                i32.const 8
                                                i32.add
                                                local.set 4
                                                local.get 2
                                                i32.load offset=8
                                                local.set 3
                                                br 8 (;@14;)
                                              end
                                              i32.const 0
                                              local.get 8
                                              local.get 5
                                              i32.or
                                              i32.store offset=1948
                                              local.get 3
                                              local.set 5
                                            end
                                            local.get 3
                                            i32.const 8
                                            i32.add
                                            local.get 0
                                            i32.store
                                            local.get 5
                                            local.get 0
                                            i32.store offset=12
                                            local.get 0
                                            local.get 3
                                            i32.store offset=12
                                            local.get 0
                                            local.get 5
                                            i32.store offset=8
                                          end
                                          i32.const 0
                                          local.get 1
                                          i32.store offset=2356
                                          i32.const 0
                                          local.get 2
                                          i32.store offset=2348
                                          local.get 4
                                          return
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            i32.const 0
                                            i32.load offset=2392
                                            local.tee 0
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 0
                                            local.get 1
                                            i32.le_u
                                            br_if 1 (;@19;)
                                          end
                                          i32.const 0
                                          local.get 1
                                          i32.store offset=2392
                                        end
                                        i32.const 0
                                        local.set 0
                                        i32.const 0
                                        local.get 8
                                        i32.store offset=2376
                                        i32.const 0
                                        local.get 1
                                        i32.store offset=2372
                                        i32.const 0
                                        i32.const 4095
                                        i32.store offset=2396
                                        i32.const 0
                                        i32.const 0
                                        i32.store offset=2384
                                        loop  ;; label = @19
                                          local.get 0
                                          i32.const 1964
                                          i32.add
                                          local.get 0
                                          i32.const 1956
                                          i32.add
                                          local.tee 3
                                          i32.store
                                          local.get 0
                                          i32.const 1968
                                          i32.add
                                          local.get 3
                                          i32.store
                                          local.get 0
                                          i32.const 8
                                          i32.add
                                          local.tee 0
                                          i32.const 256
                                          i32.ne
                                          br_if 0 (;@19;)
                                        end
                                        local.get 1
                                        local.get 8
                                        i32.const -40
                                        i32.add
                                        local.tee 0
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        i32.const 0
                                        local.get 1
                                        i32.store offset=2360
                                        i32.const 0
                                        i32.const 2097152
                                        i32.store offset=2388
                                        i32.const 0
                                        local.get 0
                                        i32.store offset=2352
                                        local.get 1
                                        local.get 0
                                        i32.add
                                        i32.const 40
                                        i32.store offset=4
                                        br 9 (;@9;)
                                      end
                                      local.get 0
                                      i32.load offset=12
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      br 7 (;@10;)
                                    end
                                    local.get 0
                                    local.get 3
                                    call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
                                    br 3 (;@13;)
                                  end
                                  local.get 1
                                  local.get 3
                                  i32.le_u
                                  br_if 5 (;@10;)
                                  local.get 4
                                  local.get 3
                                  i32.gt_u
                                  br_if 5 (;@10;)
                                  local.get 0
                                  i32.const 4
                                  i32.add
                                  local.get 5
                                  local.get 8
                                  i32.add
                                  i32.store
                                  i32.const 0
                                  i32.load offset=2360
                                  local.tee 0
                                  i32.const 15
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  local.tee 3
                                  i32.const -8
                                  i32.add
                                  local.tee 4
                                  i32.const 0
                                  i32.load offset=2352
                                  local.get 8
                                  i32.add
                                  local.tee 1
                                  local.get 3
                                  local.get 0
                                  i32.const 8
                                  i32.add
                                  i32.sub
                                  i32.sub
                                  local.tee 3
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 0
                                  i32.const 2097152
                                  i32.store offset=2388
                                  i32.const 0
                                  local.get 4
                                  i32.store offset=2360
                                  i32.const 0
                                  local.get 3
                                  i32.store offset=2352
                                  local.get 0
                                  local.get 1
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  br 6 (;@9;)
                                end
                                i32.const 0
                                local.get 4
                                local.get 3
                                i32.or
                                i32.store offset=1948
                                local.get 2
                                i32.const 8
                                i32.add
                                local.set 4
                                local.get 2
                                local.set 3
                              end
                              local.get 4
                              local.get 0
                              i32.store
                              local.get 3
                              local.get 0
                              i32.store offset=12
                              local.get 0
                              local.get 2
                              i32.store offset=12
                              local.get 0
                              local.get 3
                              i32.store offset=8
                            end
                            local.get 5
                            i32.const 8
                            i32.add
                            local.set 3
                            br 4 (;@8;)
                          end
                          i32.const 1
                          local.set 9
                        end
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              local.get 9
                                                              br_table 0 (;@29;) 1 (;@28;) 2 (;@27;) 4 (;@25;) 5 (;@24;) 6 (;@23;) 8 (;@21;) 9 (;@20;) 10 (;@19;) 7 (;@22;) 3 (;@26;) 3 (;@26;)
                                                            end
                                                            local.get 0
                                                            i32.load offset=4
                                                            i32.const -8
                                                            i32.and
                                                            local.get 2
                                                            i32.sub
                                                            local.tee 1
                                                            local.get 3
                                                            local.get 1
                                                            local.get 3
                                                            i32.lt_u
                                                            local.tee 1
                                                            select
                                                            local.set 3
                                                            local.get 0
                                                            local.get 4
                                                            local.get 1
                                                            select
                                                            local.set 4
                                                            local.get 0
                                                            local.tee 1
                                                            i32.load offset=16
                                                            local.tee 0
                                                            br_if 10 (;@18;)
                                                            i32.const 1
                                                            local.set 9
                                                            br 17 (;@11;)
                                                          end
                                                          local.get 1
                                                          i32.const 20
                                                          i32.add
                                                          i32.load
                                                          local.tee 0
                                                          br_if 10 (;@17;)
                                                          i32.const 2
                                                          local.set 9
                                                          br 16 (;@11;)
                                                        end
                                                        local.get 4
                                                        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                                                        local.get 3
                                                        i32.const 16
                                                        i32.ge_u
                                                        br_if 10 (;@16;)
                                                        i32.const 10
                                                        local.set 9
                                                        br 15 (;@11;)
                                                      end
                                                      local.get 4
                                                      local.get 3
                                                      local.get 2
                                                      i32.add
                                                      local.tee 0
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 4
                                                      local.get 0
                                                      i32.add
                                                      local.tee 0
                                                      local.get 0
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 13 (;@12;)
                                                    end
                                                    local.get 4
                                                    local.get 2
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 4
                                                    local.get 2
                                                    i32.add
                                                    local.tee 2
                                                    local.get 3
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 2
                                                    local.get 3
                                                    i32.add
                                                    local.get 3
                                                    i32.store
                                                    i32.const 0
                                                    i32.load offset=2348
                                                    local.tee 0
                                                    i32.eqz
                                                    br_if 9 (;@15;)
                                                    i32.const 4
                                                    local.set 9
                                                    br 13 (;@11;)
                                                  end
                                                  local.get 0
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 5
                                                  i32.const 3
                                                  i32.shl
                                                  i32.const 1956
                                                  i32.add
                                                  local.set 1
                                                  i32.const 0
                                                  i32.load offset=2356
                                                  local.set 0
                                                  i32.const 0
                                                  i32.load offset=1948
                                                  local.tee 8
                                                  i32.const 1
                                                  local.get 5
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 5
                                                  i32.and
                                                  i32.eqz
                                                  br_if 9 (;@14;)
                                                  i32.const 5
                                                  local.set 9
                                                  br 12 (;@11;)
                                                end
                                                local.get 1
                                                i32.load offset=8
                                                local.set 5
                                                br 9 (;@13;)
                                              end
                                              i32.const 0
                                              local.get 8
                                              local.get 5
                                              i32.or
                                              i32.store offset=1948
                                              local.get 1
                                              local.set 5
                                              i32.const 6
                                              local.set 9
                                              br 10 (;@11;)
                                            end
                                            local.get 1
                                            i32.const 8
                                            i32.add
                                            local.get 0
                                            i32.store
                                            local.get 5
                                            local.get 0
                                            i32.store offset=12
                                            local.get 0
                                            local.get 1
                                            i32.store offset=12
                                            local.get 0
                                            local.get 5
                                            i32.store offset=8
                                            i32.const 7
                                            local.set 9
                                            br 9 (;@11;)
                                          end
                                          i32.const 0
                                          local.get 2
                                          i32.store offset=2356
                                          i32.const 0
                                          local.get 3
                                          i32.store offset=2348
                                          i32.const 8
                                          local.set 9
                                          br 8 (;@11;)
                                        end
                                        local.get 4
                                        i32.const 8
                                        i32.add
                                        return
                                      end
                                      i32.const 0
                                      local.set 9
                                      br 6 (;@11;)
                                    end
                                    i32.const 0
                                    local.set 9
                                    br 5 (;@11;)
                                  end
                                  i32.const 3
                                  local.set 9
                                  br 4 (;@11;)
                                end
                                i32.const 7
                                local.set 9
                                br 3 (;@11;)
                              end
                              i32.const 9
                              local.set 9
                              br 2 (;@11;)
                            end
                            i32.const 6
                            local.set 9
                            br 1 (;@11;)
                          end
                          i32.const 8
                          local.set 9
                          br 0 (;@11;)
                        end
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=2392
                      local.tee 0
                      local.get 1
                      local.get 0
                      local.get 1
                      i32.lt_u
                      select
                      i32.store offset=2392
                      local.get 1
                      local.get 8
                      i32.add
                      local.set 4
                      i32.const 2372
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.get 4
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 0
                              i32.load offset=12
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            i32.const 2372
                            local.set 0
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 4
                                  local.get 3
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.tee 4
                                  local.get 3
                                  i32.gt_u
                                  br_if 2 (;@13;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.set 0
                                br 0 (;@14;)
                              end
                            end
                            local.get 1
                            local.get 8
                            i32.const -40
                            i32.add
                            local.tee 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 1
                            local.get 0
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            local.get 3
                            local.get 4
                            i32.const -32
                            i32.add
                            i32.const -8
                            i32.and
                            i32.const -8
                            i32.add
                            local.tee 5
                            local.get 5
                            local.get 3
                            i32.const 16
                            i32.add
                            i32.lt_u
                            select
                            local.tee 5
                            i32.const 27
                            i32.store offset=4
                            i32.const 0
                            local.get 1
                            i32.store offset=2360
                            i32.const 0
                            i32.const 2097152
                            i32.store offset=2388
                            i32.const 0
                            local.get 0
                            i32.store offset=2352
                            i32.const 0
                            i64.load offset=2372 align=4
                            local.set 10
                            local.get 5
                            i32.const 16
                            i32.add
                            i32.const 0
                            i64.load offset=2380 align=4
                            i64.store align=4
                            local.get 5
                            local.get 10
                            i64.store offset=8 align=4
                            i32.const 0
                            local.get 8
                            i32.store offset=2376
                            i32.const 0
                            local.get 1
                            i32.store offset=2372
                            i32.const 0
                            local.get 5
                            i32.const 8
                            i32.add
                            i32.store offset=2380
                            i32.const 0
                            i32.const 0
                            i32.store offset=2384
                            local.get 5
                            i32.const 28
                            i32.add
                            local.set 0
                            loop  ;; label = @13
                              local.get 0
                              i32.const 7
                              i32.store
                              local.get 4
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 0
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                            local.get 5
                            local.get 3
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 5
                            local.get 5
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            local.get 3
                            local.get 5
                            local.get 3
                            i32.sub
                            local.tee 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 5
                            local.get 0
                            i32.store
                            block  ;; label = @13
                              local.get 0
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.const 3
                              i32.shl
                              i32.const 1956
                              i32.add
                              local.set 0
                              i32.const 0
                              i32.load offset=1948
                              local.tee 1
                              i32.const 1
                              local.get 4
                              i32.const 31
                              i32.and
                              i32.shl
                              local.tee 4
                              i32.and
                              i32.eqz
                              br_if 2 (;@11;)
                              local.get 0
                              i32.load offset=8
                              local.set 4
                              br 3 (;@10;)
                            end
                            local.get 3
                            local.get 0
                            call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
                            br 3 (;@9;)
                          end
                          local.get 0
                          local.get 1
                          i32.store
                          local.get 0
                          local.get 0
                          i32.load offset=4
                          local.get 8
                          i32.add
                          i32.store offset=4
                          local.get 1
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 2
                          i32.add
                          local.set 0
                          local.get 4
                          local.get 1
                          i32.sub
                          local.get 2
                          i32.sub
                          local.set 2
                          i32.const 0
                          i32.load offset=2360
                          local.get 4
                          i32.eq
                          br_if 4 (;@7;)
                          i32.const 0
                          i32.load offset=2356
                          local.get 4
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 4
                          i32.load offset=4
                          local.tee 3
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 9 (;@2;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.tee 5
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 4
                          i32.load offset=12
                          local.tee 8
                          local.get 4
                          i32.load offset=8
                          local.tee 7
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 7
                          local.get 8
                          i32.store offset=12
                          local.get 8
                          local.get 7
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        i32.const 0
                        local.get 1
                        local.get 4
                        i32.or
                        i32.store offset=1948
                        local.get 0
                        local.set 4
                      end
                      local.get 0
                      i32.const 8
                      i32.add
                      local.get 3
                      i32.store
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 0
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                    end
                    i32.const 0
                    local.set 3
                    i32.const 0
                    i32.load offset=2352
                    local.tee 0
                    local.get 2
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 3
                    i32.store offset=2352
                    i32.const 0
                    i32.const 0
                    i32.load offset=2360
                    local.tee 0
                    local.get 2
                    i32.add
                    local.tee 4
                    i32.store offset=2360
                    local.get 4
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 0
                    i32.const 8
                    i32.add
                    return
                  end
                  local.get 3
                  return
                end
                i32.const 0
                local.get 0
                i32.store offset=2360
                i32.const 0
                i32.const 0
                i32.load offset=2352
                local.get 2
                i32.add
                local.tee 2
                i32.store offset=2352
                local.get 0
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 0
              i32.const 0
              i32.load offset=2348
              local.get 2
              i32.add
              local.tee 2
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 0
              i32.store offset=2356
              i32.const 0
              local.get 2
              i32.store offset=2348
              local.get 0
              local.get 2
              i32.add
              local.get 2
              i32.store
              br 4 (;@1;)
            end
            local.get 4
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
            br 1 (;@3;)
          end
          i32.const 0
          i32.const 0
          i32.load offset=1948
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1948
        end
        local.get 5
        local.get 2
        i32.add
        local.set 2
        local.get 4
        local.get 5
        i32.add
        local.set 4
      end
      local.get 4
      local.get 4
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 0
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.get 2
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 3
            i32.const 3
            i32.shl
            i32.const 1956
            i32.add
            local.set 2
            i32.const 0
            i32.load offset=1948
            local.tee 4
            i32.const 1
            local.get 3
            i32.const 31
            i32.and
            i32.shl
            local.tee 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.const 8
            i32.add
            local.set 4
            local.get 2
            i32.load offset=8
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 2
          call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
          br 2 (;@1;)
        end
        i32.const 0
        local.get 4
        local.get 3
        i32.or
        i32.store offset=1948
        local.get 2
        i32.const 8
        i32.add
        local.set 4
        local.get 2
        local.set 3
      end
      local.get 4
      local.get 0
      i32.store
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
    end
    local.get 1
    i32.const 8
    i32.add)
  (func $core::fmt::write::h533d40856339be39 (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.tee 4
    local.get 1
    i32.store
    local.get 3
    i32.const 52
    i32.add
    local.tee 5
    local.get 2
    i32.const 20
    i32.add
    i32.load
    local.tee 6
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=56
    local.get 3
    i32.const 8
    i32.add
    i32.const 36
    i32.add
    local.tee 7
    local.get 2
    i32.load offset=16
    local.tee 1
    local.get 6
    i32.const 3
    i32.shl
    local.tee 6
    i32.add
    i32.store
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    local.get 1
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=48
    local.get 2
    i32.load offset=4
    local.tee 8
    i32.const 3
    i32.shl
    local.set 9
    local.get 2
    i32.load
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load offset=8
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 20
                      i32.add
                      local.set 1
                      local.get 0
                      local.get 2
                      i32.const 12
                      i32.add
                      i32.load
                      i32.const 36
                      i32.mul
                      i32.add
                      local.set 11
                      local.get 3
                      i32.const 32
                      i32.add
                      local.set 12
                      local.get 3
                      i32.const 56
                      i32.add
                      local.set 13
                      local.get 3
                      i32.const 48
                      i32.add
                      local.set 14
                      local.get 3
                      i32.const 24
                      i32.add
                      local.set 15
                      local.get 3
                      i32.const 40
                      i32.add
                      local.set 16
                      local.get 9
                      local.set 8
                      local.get 10
                      local.set 2
                      loop  ;; label = @10
                        local.get 0
                        local.get 11
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 8
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 12
                        i32.load
                        local.get 2
                        i32.load
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.load
                        local.get 4
                        i32.load
                        i32.load offset=12
                        call_indirect (type 5)
                        br_if 3 (;@7;)
                        local.get 13
                        local.get 0
                        i32.load8_u offset=32
                        i32.store8
                        local.get 3
                        local.get 0
                        i32.load offset=8
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.load offset=12
                        i32.store offset=8
                        i32.const 0
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=24
                                local.tee 17
                                i32.const 1
                                i32.eq
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 17
                                  i32.const 3
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 17
                                  i32.const 2
                                  i32.ne
                                  br_if 2 (;@13;)
                                  local.get 16
                                  i32.load
                                  local.tee 18
                                  local.get 7
                                  i32.load
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 16
                                  local.get 18
                                  i32.const 8
                                  i32.add
                                  i32.store
                                  local.get 18
                                  i32.load offset=4
                                  i32.const 5
                                  i32.ne
                                  br_if 4 (;@11;)
                                  local.get 18
                                  i32.load
                                  i32.load
                                  local.set 17
                                  br 3 (;@12;)
                                end
                                br 3 (;@11;)
                              end
                              local.get 1
                              i32.const 8
                              i32.add
                              i32.load
                              local.tee 18
                              local.get 5
                              i32.load
                              local.tee 17
                              i32.ge_u
                              br_if 11 (;@2;)
                              local.get 14
                              i32.load
                              local.get 18
                              i32.const 3
                              i32.shl
                              i32.add
                              local.tee 18
                              i32.load offset=4
                              i32.const 5
                              i32.ne
                              br_if 2 (;@11;)
                              local.get 18
                              i32.load
                              i32.load
                              local.set 17
                              br 1 (;@12;)
                            end
                            local.get 1
                            i32.const 8
                            i32.add
                            i32.load
                            local.set 17
                          end
                          i32.const 1
                          local.set 6
                        end
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 12
                        i32.add
                        local.get 17
                        i32.store
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 6
                        i32.store
                        i32.const 0
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=16
                                local.tee 17
                                i32.const 1
                                i32.eq
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 17
                                  i32.const 3
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 17
                                  i32.const 2
                                  i32.ne
                                  br_if 2 (;@13;)
                                  local.get 16
                                  i32.load
                                  local.tee 18
                                  local.get 7
                                  i32.load
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 16
                                  local.get 18
                                  i32.const 8
                                  i32.add
                                  i32.store
                                  local.get 18
                                  i32.load offset=4
                                  i32.const 5
                                  i32.ne
                                  br_if 4 (;@11;)
                                  local.get 18
                                  i32.load
                                  i32.load
                                  local.set 17
                                  br 3 (;@12;)
                                end
                                br 3 (;@11;)
                              end
                              local.get 1
                              i32.load
                              local.tee 18
                              local.get 5
                              i32.load
                              local.tee 17
                              i32.ge_u
                              br_if 12 (;@1;)
                              local.get 14
                              i32.load
                              local.get 18
                              i32.const 3
                              i32.shl
                              i32.add
                              local.tee 18
                              i32.load offset=4
                              i32.const 5
                              i32.ne
                              br_if 2 (;@11;)
                              local.get 18
                              i32.load
                              i32.load
                              local.set 17
                              br 1 (;@12;)
                            end
                            local.get 1
                            i32.load
                            local.set 17
                          end
                          i32.const 1
                          local.set 6
                        end
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 20
                        i32.add
                        local.get 17
                        i32.store
                        local.get 15
                        local.get 6
                        i32.store
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const -16
                            i32.add
                            i32.load
                            local.tee 6
                            local.get 5
                            i32.load
                            local.tee 17
                            i32.ge_u
                            br_if 8 (;@4;)
                            local.get 14
                            i32.load
                            local.get 6
                            i32.const 3
                            i32.shl
                            i32.add
                            local.set 6
                            br 1 (;@11;)
                          end
                          local.get 16
                          i32.load
                          local.tee 6
                          local.get 7
                          i32.load
                          i32.eq
                          br_if 8 (;@3;)
                          local.get 16
                          local.get 6
                          i32.const 8
                          i32.add
                          i32.store
                        end
                        local.get 0
                        i32.const 36
                        i32.add
                        local.set 0
                        local.get 2
                        i32.const 8
                        i32.add
                        local.set 2
                        local.get 1
                        i32.const 36
                        i32.add
                        local.set 1
                        local.get 8
                        i32.const -8
                        i32.add
                        local.set 8
                        local.get 6
                        i32.load
                        local.get 3
                        i32.const 8
                        i32.add
                        local.get 6
                        i32.const 4
                        i32.add
                        i32.load
                        call_indirect (type 3)
                        i32.eqz
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    local.get 8
                    i32.const 3
                    i32.shl
                    local.set 0
                    local.get 3
                    i32.const 32
                    i32.add
                    local.set 16
                    local.get 10
                    local.set 2
                    loop  ;; label = @9
                      local.get 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 0
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 16
                      i32.load
                      local.get 2
                      i32.load
                      local.get 2
                      i32.const 4
                      i32.add
                      i32.load
                      local.get 4
                      i32.load
                      i32.load offset=12
                      call_indirect (type 5)
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const -8
                      i32.add
                      local.set 6
                      local.get 0
                      i32.const -8
                      i32.add
                      local.set 0
                      local.get 2
                      i32.const 8
                      i32.add
                      local.set 2
                      local.get 1
                      i32.load
                      local.set 8
                      local.get 1
                      i32.load offset=4
                      local.set 17
                      local.get 1
                      i32.const 8
                      i32.add
                      local.set 1
                      local.get 8
                      local.get 3
                      i32.const 8
                      i32.add
                      local.get 17
                      call_indirect (type 3)
                      i32.eqz
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 2
                  local.get 10
                  local.get 9
                  i32.add
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 32
                  i32.add
                  i32.load
                  local.get 2
                  i32.load
                  local.get 2
                  i32.load offset=4
                  local.get 3
                  i32.const 36
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type 5)
                  i32.eqz
                  br_if 1 (;@6;)
                end
                i32.const 1
                local.set 0
                br 1 (;@5;)
              end
              i32.const 0
              local.set 0
            end
            local.get 3
            i32.const 64
            i32.add
            global.set 0
            local.get 0
            return
          end
          i32.const 1840
          local.get 6
          local.get 17
          call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
          unreachable
        end
        i32.const 1816
        call $core::panicking::panic::haf7d7779169c0743
        unreachable
      end
      i32.const 1800
      local.get 18
      local.get 17
      call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
      unreachable
    end
    i32.const 1800
    local.get 18
    local.get 17
    call $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8 (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 2
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=2356
              local.get 1
              local.get 2
              i32.sub
              local.tee 1
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=12
              local.tee 4
              local.get 1
              i32.load offset=8
              local.tee 5
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 5
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 3
            i32.load offset=4
            local.tee 2
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            i32.const 0
            local.get 0
            i32.store offset=2348
            local.get 3
            i32.const 4
            i32.add
            local.get 2
            i32.const -2
            i32.and
            i32.store
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 1
          call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 0
        i32.load offset=1948
        i32.const -2
        local.get 2
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1948
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.load offset=4
                        local.tee 2
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=2360
                        local.get 3
                        i32.eq
                        br_if 1 (;@9;)
                        i32.const 0
                        i32.load offset=2356
                        local.get 3
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const -8
                        i32.and
                        local.tee 4
                        local.get 0
                        i32.add
                        local.set 0
                        local.get 4
                        i32.const 255
                        i32.gt_u
                        br_if 3 (;@7;)
                        local.get 3
                        i32.load offset=12
                        local.tee 4
                        local.get 3
                        i32.load offset=8
                        local.tee 3
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        br 5 (;@5;)
                      end
                      local.get 3
                      i32.const 4
                      i32.add
                      local.get 2
                      i32.const -2
                      i32.and
                      i32.store
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 0
                      i32.add
                      local.get 0
                      i32.store
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.get 1
                    i32.store offset=2360
                    i32.const 0
                    i32.const 0
                    i32.load offset=2352
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store offset=2352
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 1
                      i32.const 0
                      i32.load offset=2356
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      i32.store offset=2348
                      i32.const 0
                      i32.const 0
                      i32.store offset=2356
                    end
                    i32.const 0
                    i32.load offset=2388
                    local.get 0
                    i32.ge_u
                    br_if 7 (;@1;)
                    block  ;; label = @9
                      local.get 0
                      i32.const 41
                      i32.lt_u
                      br_if 0 (;@9;)
                      i32.const 2372
                      local.set 0
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load
                          local.tee 3
                          local.get 1
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 0
                          i32.load offset=4
                          i32.add
                          local.get 1
                          i32.gt_u
                          br_if 2 (;@9;)
                        end
                        local.get 0
                        i32.load offset=8
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                    end
                    i32.const 0
                    local.set 1
                    i32.const 0
                    i32.load offset=2380
                    local.tee 0
                    i32.eqz
                    br_if 4 (;@4;)
                    loop  ;; label = @9
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    local.get 1
                    i32.const 4095
                    local.get 1
                    i32.const 4095
                    i32.gt_u
                    select
                    local.set 1
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.get 1
                  i32.store offset=2356
                  i32.const 0
                  i32.const 0
                  i32.load offset=2348
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=2348
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 3
                call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                br 1 (;@5;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1948
              i32.const -2
              local.get 2
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1948
            end
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            local.get 1
            i32.const 0
            i32.load offset=2356
            i32.ne
            br_if 2 (;@2;)
            i32.const 0
            local.get 0
            i32.store offset=2348
            return
          end
          i32.const 4095
          local.set 1
        end
        i32.const 0
        i32.const -1
        i32.store offset=2388
        i32.const 0
        local.get 1
        i32.store offset=2396
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 3
                i32.shr_u
                local.tee 3
                i32.const 3
                i32.shl
                i32.const 1956
                i32.add
                local.set 0
                i32.const 0
                i32.load offset=1948
                local.tee 2
                i32.const 1
                local.get 3
                i32.const 31
                i32.and
                i32.shl
                local.tee 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                i32.const 8
                i32.add
                local.set 2
                local.get 0
                i32.load offset=8
                local.set 3
                br 2 (;@4;)
              end
              local.get 1
              local.get 0
              call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
              i32.const 0
              i32.const 0
              i32.load offset=2396
              i32.const -1
              i32.add
              local.tee 1
              i32.store offset=2396
              local.get 1
              br_if 4 (;@1;)
              i32.const 0
              i32.load offset=2380
              local.tee 0
              i32.eqz
              br_if 2 (;@3;)
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 0
                i32.load offset=8
                local.tee 0
                br_if 0 (;@6;)
              end
              local.get 1
              i32.const 4095
              local.get 1
              i32.const 4095
              i32.gt_u
              select
              local.set 1
              br 3 (;@2;)
            end
            i32.const 0
            local.get 2
            local.get 3
            i32.or
            i32.store offset=1948
            local.get 0
            i32.const 8
            i32.add
            local.set 2
            local.get 0
            local.set 3
          end
          local.get 2
          local.get 1
          i32.store
          local.get 3
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 1
          local.get 3
          i32.store offset=8
          return
        end
        i32.const 4095
        local.set 1
      end
      i32.const 0
      local.get 1
      i32.store offset=2396
    end)
  (func $rust_oom (type 2) (param i32 i32)
    unreachable
    unreachable)
  (func $core::result::unwrap_failed::ha655e72972fab217 (type 0)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 51
    i32.store offset=12
    local.get 0
    i32.const 1176
    i32.store offset=8
    local.get 0
    i32.const 40
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    local.get 0
    i32.const 16
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    local.get 0
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 0
    i32.const 3
    i32.store offset=44
    local.get 0
    i32.const 1752
    i32.store offset=16
    local.get 0
    i32.const 2
    i32.store offset=20
    local.get 0
    i32.const 1248
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 0
    i32.const 16
    i32.add
    i32.const 1768
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $wasm_bindgen::throw::hb552665eadbe0155 (type 0)
    i32.const 1032
    i32.const 22
    call $__wbindgen_throw
    unreachable)
  (func $__wbindgen_malloc (type 4) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 0
        call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        return
      end
      i32.const 1
      return
    end
    call $wasm_bindgen::throw::hb552665eadbe0155
    unreachable)
  (func $__wbindgen_free (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
    end)
  (func $std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2 (type 1) (param i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1928
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.load offset=1932
          i32.const 1
          i32.add
          local.tee 1
          i32.store offset=1932
          local.get 1
          i32.const 3
          i32.lt_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        i64.const 4294967297
        i64.store offset=1928
      end
      i32.const 0
      i32.load offset=1940
      local.tee 2
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.store offset=1940
      local.get 1
      i32.const 2
      i32.lt_u
      drop
    end
    unreachable
    unreachable)
  (func $rust_begin_unwind (type 6) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 10
    global.set 0
    local.get 10
    i32.const 20
    i32.add
    local.get 3
    i32.store
    local.get 10
    i32.const 28
    i32.add
    local.get 5
    i32.store
    local.get 10
    local.get 1
    i32.store offset=12
    local.get 10
    local.get 0
    i32.store offset=8
    local.get 10
    local.get 2
    i32.store offset=16
    local.get 10
    local.get 4
    i32.store offset=24
    local.get 10
    local.get 7
    i32.store offset=36
    local.get 10
    local.get 6
    i32.store offset=32
    local.get 10
    local.get 8
    i32.store offset=40
    local.get 10
    local.get 9
    i32.store offset=44
    local.get 10
    i32.const 8
    i32.add
    local.get 10
    i32.const 32
    i32.add
    call $std::panicking::begin_panic_fmt::h29d4906ca23d78a0
    unreachable)
  (func $std::panicking::begin_panic_fmt::h29d4906ca23d78a0 (type 2) (param i32 i32)
    local.get 1
    call $std::panicking::rust_panic_with_hook::h9b1c029d1ceaded2
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651 (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 2
            local.get 0
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 3
            i32.store offset=8
            local.get 1
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 20
            i32.add
            local.tee 3
            local.get 0
            i32.const 16
            i32.add
            local.get 3
            i32.load
            select
            local.tee 4
            i32.load
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                local.set 5
                block  ;; label = @7
                  local.get 3
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 2
                i32.const 16
                i32.add
                local.set 4
                local.get 2
                i32.load offset=16
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 5
            i32.const 0
            i32.store
            local.get 1
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 2220
            i32.add
            local.tee 3
            i32.load
            local.get 0
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 16
            i32.add
            local.get 1
            i32.const 20
            i32.add
            local.get 1
            i32.load offset=16
            local.get 0
            i32.eq
            select
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 3
          local.get 2
          i32.store
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 2
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 2
        i32.store offset=24
      end
      return
    end
    i32.const 0
    i32.const 0
    i32.load offset=1952
    i32.const -2
    local.get 4
    i32.rotl
    i32.and
    i32.store offset=1952)
  (func $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 8
      i32.shr_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      i32.const 31
      local.set 2
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 38
      local.get 3
      i32.clz
      local.tee 2
      i32.sub
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.const 31
      local.get 2
      i32.sub
      i32.const 1
      i32.shl
      i32.or
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 2
    i32.const 2
    i32.shl
    i32.const 2220
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1952
            local.tee 4
            i32.const 1
            local.get 2
            i32.const 31
            i32.and
            i32.shl
            local.tee 5
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.ne
            br_if 1 (;@3;)
            local.get 4
            local.set 2
            br 2 (;@2;)
          end
          local.get 3
          local.get 0
          i32.store
          i32.const 0
          local.get 4
          local.get 5
          i32.or
          i32.store offset=1952
          local.get 0
          local.get 3
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 0
          i32.store offset=12
          return
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        i32.const 31
        i32.and
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 5
          i32.load
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      return
    end
    local.get 5
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755 (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=4
                    local.tee 3
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    i32.load
                    local.tee 3
                    local.get 1
                    i32.add
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=2356
                          local.get 0
                          local.get 3
                          i32.sub
                          local.tee 0
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 255
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 0
                          i32.load offset=12
                          local.tee 4
                          local.get 0
                          i32.load offset=8
                          local.tee 5
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 5
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 5
                          i32.store offset=8
                          br 3 (;@8;)
                        end
                        local.get 2
                        i32.load offset=4
                        local.tee 3
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        i32.const 0
                        local.get 1
                        i32.store offset=2348
                        local.get 2
                        i32.const 4
                        i32.add
                        local.get 3
                        i32.const -2
                        i32.and
                        i32.store
                        local.get 0
                        local.get 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.store
                        return
                      end
                      local.get 0
                      call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
                      br 1 (;@8;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1948
                    i32.const -2
                    local.get 3
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1948
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load offset=4
                      local.tee 3
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=2360
                      local.get 2
                      i32.eq
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.load offset=2356
                      local.get 2
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const -8
                      i32.and
                      local.tee 4
                      local.get 1
                      i32.add
                      local.set 1
                      local.get 4
                      i32.const 255
                      i32.gt_u
                      br_if 4 (;@5;)
                      local.get 2
                      i32.load offset=12
                      local.tee 4
                      local.get 2
                      i32.load offset=8
                      local.tee 2
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 2
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 2
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 2
                    i32.const 4
                    i32.add
                    local.get 3
                    i32.const -2
                    i32.and
                    i32.store
                    local.get 0
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 1
                    i32.store
                    br 7 (;@1;)
                  end
                  i32.const 0
                  local.get 0
                  i32.store offset=2360
                  i32.const 0
                  i32.const 0
                  i32.load offset=2352
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=2352
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=2356
                  i32.eq
                  br_if 3 (;@4;)
                end
                return
              end
              i32.const 0
              local.get 0
              i32.store offset=2356
              i32.const 0
              i32.const 0
              i32.load offset=2348
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=2348
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 2
            call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
            br 2 (;@2;)
          end
          i32.const 0
          i32.const 0
          i32.store offset=2348
          i32.const 0
          i32.const 0
          i32.store offset=2356
          return
        end
        i32.const 0
        i32.const 0
        i32.load offset=1948
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1948
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
      local.get 0
      i32.const 0
      i32.load offset=2356
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.store offset=2348
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.shr_u
          local.tee 2
          i32.const 3
          i32.shl
          i32.const 1956
          i32.add
          local.set 1
          i32.const 0
          i32.load offset=1948
          local.tee 3
          i32.const 1
          local.get 2
          i32.const 31
          i32.and
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=8
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        call $dlmalloc::dlmalloc::Dlmalloc::insert_large_chunk::hfbbc13dfd26ec0ad
        return
      end
      i32.const 0
      local.get 3
      local.get 2
      i32.or
      i32.store offset=1948
      local.get 1
      local.set 2
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8)
  (func $core::ptr::drop_in_place::h2745c3a200e8c575 (type 1) (param i32))
  (func $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2 (type 0)
    i32.const 1728
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $core::panicking::panic::haf7d7779169c0743 (type 1) (param i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load offset=16 align=4
    local.set 2
    local.get 0
    i64.load offset=8 align=4
    local.set 3
    local.get 0
    i64.load align=4
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=24
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    i32.const 1460
    i32.store offset=16
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store
    local.get 1
    local.get 3
    i64.store offset=32
    local.get 1
    local.get 2
    i64.store offset=40
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 2
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 4
      local.get 1
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      local.get 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 2
      local.get 2
      local.get 1
      i32.lt_u
      select
      local.tee 1
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.get 1
            call $__rust_realloc
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 1
          call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
          local.tee 3
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 1
        call $rust_oom
        unreachable
      end
      local.get 0
      local.get 3
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
      i32.const 2
      local.set 3
    end
    local.get 3)
  (func $__rust_realloc (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const -65
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 16
              local.get 1
              i32.const 11
              i32.add
              i32.const -8
              i32.and
              local.get 1
              i32.const 11
              i32.lt_u
              select
              local.set 3
              local.get 0
              i32.const -4
              i32.add
              local.tee 4
              i32.load
              local.tee 5
              i32.const -8
              i32.and
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        i32.const 3
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const -8
                        i32.add
                        local.tee 7
                        local.get 6
                        i32.add
                        local.set 8
                        local.get 6
                        local.get 3
                        i32.ge_u
                        br_if 1 (;@9;)
                        i32.const 0
                        i32.load offset=2360
                        local.get 8
                        i32.eq
                        br_if 2 (;@8;)
                        i32.const 0
                        i32.load offset=2356
                        local.get 8
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 8
                        i32.load offset=4
                        local.tee 5
                        i32.const 2
                        i32.and
                        br_if 4 (;@6;)
                        local.get 5
                        i32.const -8
                        i32.and
                        local.tee 9
                        local.get 6
                        i32.add
                        local.tee 6
                        local.get 3
                        i32.lt_u
                        br_if 4 (;@6;)
                        local.get 6
                        local.get 3
                        i32.sub
                        local.set 1
                        local.get 9
                        i32.const 255
                        i32.gt_u
                        br_if 7 (;@3;)
                        local.get 8
                        i32.load offset=12
                        local.tee 2
                        local.get 8
                        i32.load offset=8
                        local.tee 8
                        i32.eq
                        br_if 8 (;@2;)
                        local.get 8
                        local.get 2
                        i32.store offset=12
                        local.get 2
                        local.get 8
                        i32.store offset=8
                        br 9 (;@1;)
                      end
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 3 (;@6;)
                      local.get 6
                      local.get 3
                      i32.const 4
                      i32.or
                      i32.lt_u
                      br_if 3 (;@6;)
                      local.get 6
                      local.get 3
                      i32.sub
                      i32.const 131073
                      i32.ge_u
                      br_if 3 (;@6;)
                      local.get 0
                      return
                    end
                    block  ;; label = @9
                      local.get 6
                      local.get 3
                      i32.sub
                      local.tee 1
                      i32.const 16
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 0
                      return
                    end
                    local.get 4
                    local.get 3
                    local.get 5
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 7
                    local.get 3
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    local.get 1
                    call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755
                    local.get 0
                    return
                  end
                  i32.const 0
                  i32.load offset=2352
                  local.get 6
                  i32.add
                  local.tee 6
                  local.get 3
                  i32.le_u
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 3
                  local.get 5
                  i32.const 1
                  i32.and
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  i32.const 0
                  local.get 7
                  local.get 3
                  i32.add
                  local.tee 1
                  i32.store offset=2360
                  i32.const 0
                  local.get 6
                  local.get 3
                  i32.sub
                  local.tee 2
                  i32.store offset=2352
                  local.get 1
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  return
                end
                i32.const 0
                i32.load offset=2348
                local.get 6
                i32.add
                local.tee 6
                local.get 3
                i32.ge_u
                br_if 2 (;@4;)
              end
              local.get 1
              call $dlmalloc::dlmalloc::Dlmalloc::malloc::hce1b00d5aca5677c
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              local.get 1
              local.get 4
              i32.load
              local.tee 2
              i32.const -8
              i32.and
              i32.const 4
              i32.const 8
              local.get 2
              i32.const 3
              i32.and
              select
              i32.sub
              local.tee 2
              local.get 2
              local.get 1
              i32.gt_u
              select
              call $memcpy
              local.set 1
              local.get 0
              call $dlmalloc::dlmalloc::Dlmalloc::free::h4c32f8306a59a4b8
              local.get 1
              local.set 2
            end
            local.get 2
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              local.get 3
              i32.sub
              local.tee 1
              i32.const 16
              i32.ge_u
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.const 1
              i32.and
              local.get 6
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 7
              local.get 6
              i32.add
              local.tee 1
              local.get 1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.set 1
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 4
            local.get 3
            local.get 5
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 7
            local.get 3
            i32.add
            local.tee 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 7
            local.get 6
            i32.add
            local.tee 3
            local.get 1
            i32.store
            local.get 3
            local.get 3
            i32.load offset=4
            i32.const -2
            i32.and
            i32.store offset=4
          end
          i32.const 0
          local.get 2
          i32.store offset=2356
          i32.const 0
          local.get 1
          i32.store offset=2348
          local.get 0
          return
        end
        local.get 8
        call $dlmalloc::dlmalloc::Dlmalloc::unlink_large_chunk::hf712b91716024651
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      i32.load offset=1948
      i32.const -2
      local.get 5
      i32.const 3
      i32.shr_u
      i32.rotl
      i32.and
      i32.store offset=1948
    end
    block  ;; label = @1
      local.get 1
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 6
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 7
      local.get 6
      i32.add
      local.tee 1
      local.get 1
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      return
    end
    local.get 4
    local.get 3
    local.get 4
    i32.load
    i32.const 1
    i32.and
    i32.or
    i32.const 2
    i32.or
    i32.store
    local.get 7
    local.get 3
    i32.add
    local.tee 2
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 7
    local.get 6
    i32.add
    local.tee 3
    local.get 3
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 2
    local.get 1
    call $dlmalloc::dlmalloc::Dlmalloc::dispose_chunk::hb606175ffa022755
    local.get 0)
  (func $<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2 (type 3) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 1454
    i32.const 5
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 5))
  (func $<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26 (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8)
  (func $core::panicking::panic_fmt::h29e5105b4d53bc05 (type 2) (param i32 i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.get 0
    i32.load offset=16
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $rust_begin_unwind
    unreachable)
  (func $<str_as_core::fmt::Display>::fmt::h46b69ad9cae344d8 (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 2
    i32.load offset=16
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 2
                                        i32.load offset=8
                                        local.tee 5
                                        i32.const 1
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 4
                                        br_if 1 (;@17;)
                                        br 13 (;@5;)
                                      end
                                      local.get 4
                                      i32.eqz
                                      br_if 1 (;@16;)
                                    end
                                    local.get 0
                                    local.get 1
                                    i32.add
                                    local.set 6
                                    local.get 2
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 7
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 1
                                    i32.eqz
                                    br_if 10 (;@6;)
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    local.set 8
                                    i32.const 0
                                    local.set 9
                                    local.get 0
                                    i32.load8_s
                                    local.tee 4
                                    i32.const 0
                                    i32.lt_s
                                    br_if 2 (;@14;)
                                    local.get 4
                                    i32.const 255
                                    i32.and
                                    local.set 10
                                    br 7 (;@9;)
                                  end
                                  local.get 2
                                  i32.load offset=24
                                  local.get 0
                                  local.get 1
                                  local.get 2
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.load offset=12
                                  call_indirect (type 5)
                                  local.set 4
                                  br 14 (;@1;)
                                end
                                local.get 1
                                i32.eqz
                                br_if 1 (;@13;)
                                i32.const 0
                                local.set 11
                                local.get 0
                                i32.load8_s
                                local.tee 4
                                i32.const -1
                                i32.gt_s
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 11
                                local.get 6
                                local.set 8
                                i32.const 0
                                local.set 7
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 1
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 0
                                  i32.const 2
                                  i32.add
                                  local.set 8
                                  local.get 0
                                  i32.const 1
                                  i32.add
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  local.set 7
                                end
                                local.get 4
                                i32.const 255
                                i32.and
                                i32.const 224
                                i32.lt_u
                                br_if 6 (;@8;)
                                i32.const 0
                                local.set 11
                                local.get 6
                                local.set 9
                                i32.const 0
                                local.set 10
                                block  ;; label = @15
                                  local.get 8
                                  local.get 6
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.const 1
                                  i32.add
                                  local.set 9
                                  local.get 8
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  local.set 10
                                end
                                local.get 4
                                i32.const 255
                                i32.and
                                i32.const 240
                                i32.lt_u
                                br_if 6 (;@8;)
                                local.get 4
                                i32.const 31
                                i32.and
                                local.set 8
                                local.get 7
                                i32.const 255
                                i32.and
                                i32.const 6
                                i32.shl
                                local.get 10
                                i32.const 255
                                i32.and
                                i32.or
                                local.set 7
                                i32.const 0
                                local.set 11
                                i32.const 0
                                local.set 4
                                block  ;; label = @15
                                  local.get 9
                                  local.get 6
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  local.set 4
                                end
                                local.get 7
                                i32.const 6
                                i32.shl
                                local.get 8
                                i32.const 18
                                i32.shl
                                i32.const 1835008
                                i32.and
                                i32.or
                                local.get 4
                                i32.const 255
                                i32.and
                                i32.or
                                i32.const 1114112
                                i32.ne
                                br_if 6 (;@8;)
                                br 8 (;@6;)
                              end
                              local.get 6
                              local.set 11
                              block  ;; label = @14
                                local.get 1
                                i32.const 1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 1
                                i32.add
                                i32.load8_u
                                i32.const 63
                                i32.and
                                local.set 9
                                local.get 0
                                i32.const 2
                                i32.add
                                local.tee 8
                                local.set 11
                              end
                              local.get 4
                              i32.const 31
                              i32.and
                              local.set 10
                              local.get 9
                              i32.const 255
                              i32.and
                              local.set 9
                              local.get 4
                              i32.const 255
                              i32.and
                              i32.const 224
                              i32.lt_u
                              br_if 1 (;@12;)
                              local.get 11
                              local.get 6
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 11
                              i32.load8_u
                              i32.const 63
                              i32.and
                              local.set 12
                              local.get 11
                              i32.const 1
                              i32.add
                              local.tee 8
                              local.set 11
                              br 3 (;@10;)
                            end
                            i32.const 0
                            local.set 1
                            local.get 5
                            br_if 7 (;@5;)
                            br 8 (;@4;)
                          end
                          local.get 10
                          i32.const 6
                          i32.shl
                          local.get 9
                          i32.or
                          local.set 10
                          br 2 (;@9;)
                        end
                        i32.const 0
                        local.set 12
                        local.get 6
                        local.set 11
                      end
                      local.get 9
                      i32.const 6
                      i32.shl
                      local.get 12
                      i32.const 255
                      i32.and
                      i32.or
                      local.set 9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.and
                            i32.const 240
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 11
                            local.get 6
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 11
                            i32.const 1
                            i32.add
                            local.set 8
                            local.get 11
                            i32.load8_u
                            i32.const 63
                            i32.and
                            local.set 4
                            br 2 (;@10;)
                          end
                          local.get 9
                          local.get 10
                          i32.const 12
                          i32.shl
                          i32.or
                          local.set 10
                          br 2 (;@9;)
                        end
                        i32.const 0
                        local.set 4
                      end
                      local.get 9
                      i32.const 6
                      i32.shl
                      local.get 10
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      i32.or
                      local.get 4
                      i32.const 255
                      i32.and
                      i32.or
                      local.tee 10
                      i32.const 1114112
                      i32.eq
                      br_if 3 (;@6;)
                    end
                    local.get 8
                    local.get 0
                    i32.sub
                    local.set 4
                    i32.const 0
                    local.set 9
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 9
                        local.set 11
                        local.get 4
                        local.set 9
                        local.get 8
                        local.set 4
                        local.get 7
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        local.get 4
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 4
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 8
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.load8_s
                            local.tee 11
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                            local.get 11
                            i32.const 255
                            i32.and
                            local.set 10
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 8
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              i32.load8_u
                              i32.const 63
                              i32.and
                              local.set 12
                              local.get 4
                              i32.const 2
                              i32.add
                              local.tee 10
                              local.set 8
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 12
                            local.get 6
                            local.set 10
                          end
                          local.get 11
                          i32.const 31
                          i32.and
                          local.set 13
                          local.get 12
                          i32.const 255
                          i32.and
                          local.set 12
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                i32.const 255
                                i32.and
                                local.tee 11
                                i32.const 224
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 10
                                local.get 6
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 10
                                i32.load8_u
                                i32.const 63
                                i32.and
                                local.set 14
                                local.get 10
                                i32.const 1
                                i32.add
                                local.tee 8
                                local.set 10
                                br 2 (;@12;)
                              end
                              local.get 13
                              i32.const 6
                              i32.shl
                              local.get 12
                              i32.or
                              local.set 10
                              br 2 (;@11;)
                            end
                            i32.const 0
                            local.set 14
                            local.get 6
                            local.set 10
                          end
                          local.get 12
                          i32.const 6
                          i32.shl
                          local.get 14
                          i32.const 255
                          i32.and
                          i32.or
                          local.set 12
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                i32.const 240
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 10
                                local.get 6
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 10
                                i32.const 1
                                i32.add
                                local.set 8
                                local.get 10
                                i32.load8_u
                                i32.const 63
                                i32.and
                                local.set 11
                                br 2 (;@12;)
                              end
                              local.get 12
                              local.get 13
                              i32.const 12
                              i32.shl
                              i32.or
                              local.set 10
                              br 2 (;@11;)
                            end
                            i32.const 0
                            local.set 11
                          end
                          local.get 12
                          i32.const 6
                          i32.shl
                          local.get 13
                          i32.const 18
                          i32.shl
                          i32.const 1835008
                          i32.and
                          i32.or
                          local.get 11
                          i32.const 255
                          i32.and
                          i32.or
                          local.tee 10
                          i32.const 1114112
                          i32.eq
                          br_if 5 (;@6;)
                        end
                        local.get 7
                        i32.const -1
                        i32.add
                        local.set 7
                        local.get 8
                        local.get 4
                        i32.sub
                        local.get 9
                        i32.add
                        local.set 4
                        br 0 (;@10;)
                      end
                    end
                    local.get 10
                    i32.const 1114112
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 11
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 1
                    i32.eq
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 4
                    local.get 11
                    local.get 1
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 11
                    i32.add
                    i32.load8_s
                    i32.const -64
                    i32.lt_s
                    br_if 1 (;@7;)
                  end
                  local.get 0
                  local.set 4
                end
                local.get 11
                local.get 1
                local.get 4
                select
                local.set 1
                local.get 4
                local.get 0
                local.get 4
                select
                local.set 0
              end
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 2
            i32.const 12
            i32.add
            i32.load
            local.set 9
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 8
            local.get 1
            local.set 7
            local.get 0
            local.set 4
            loop  ;; label = @5
              local.get 8
              local.get 4
              i32.load8_u
              i32.const 192
              i32.and
              i32.const 128
              i32.eq
              i32.add
              local.set 8
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              local.get 7
              i32.const -1
              i32.add
              local.tee 7
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          local.get 2
          i32.load offset=24
          local.get 0
          local.get 1
          local.get 2
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 5)
          local.set 4
          br 2 (;@1;)
        end
        i32.const 0
        local.set 8
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 8
              i32.sub
              local.get 9
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 8
              block  ;; label = @6
                local.get 1
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 8
                local.get 1
                local.set 7
                local.get 0
                local.set 4
                loop  ;; label = @7
                  local.get 8
                  local.get 4
                  i32.load8_u
                  i32.const 192
                  i32.and
                  i32.const 128
                  i32.eq
                  i32.add
                  local.set 8
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  local.get 7
                  i32.const -1
                  i32.add
                  local.tee 7
                  br_if 0 (;@7;)
                end
              end
              local.get 8
              local.get 1
              i32.sub
              local.get 9
              i32.add
              local.set 9
              i32.const 0
              local.get 2
              i32.load8_u offset=48
              local.tee 4
              local.get 4
              i32.const 3
              i32.eq
              select
              i32.const 3
              i32.and
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              local.get 4
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              i32.const 0
              local.set 11
              br 3 (;@2;)
            end
            local.get 2
            i32.load offset=24
            local.get 0
            local.get 1
            local.get 2
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 5)
            local.set 4
            br 3 (;@1;)
          end
          local.get 9
          local.set 11
          i32.const 0
          local.set 9
          br 1 (;@2;)
        end
        local.get 9
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 11
        local.get 9
        i32.const 1
        i32.shr_u
        local.set 9
      end
      local.get 3
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 4
          i32.const 127
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store8 offset=12
          i32.const 1
          local.set 7
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 2047
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 3
          local.get 4
          i32.const 6
          i32.shr_u
          i32.const 31
          i32.and
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 7
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 3
          local.get 4
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 3
          local.get 4
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 7
          br 1 (;@2;)
        end
        local.get 3
        local.get 4
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 3
        local.get 4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 3
        local.get 4
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 3
        local.get 4
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        i32.const 4
        local.set 7
      end
      local.get 2
      i32.load offset=24
      local.set 8
      i32.const -1
      local.set 4
      local.get 2
      i32.const 28
      i32.add
      i32.load
      local.tee 6
      i32.const 12
      i32.add
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              local.get 9
              i32.ge_u
              br_if 1 (;@4;)
              local.get 8
              local.get 3
              i32.const 12
              i32.add
              local.get 7
              local.get 2
              i32.load
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 8
          local.get 0
          local.get 1
          local.get 6
          i32.const 12
          i32.add
          i32.load
          local.tee 2
          call_indirect (type 5)
          br_if 0 (;@3;)
          i32.const -1
          local.set 4
          loop  ;; label = @4
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            local.get 11
            i32.ge_u
            br_if 2 (;@2;)
            local.get 8
            local.get 3
            i32.const 12
            i32.add
            local.get 7
            local.get 2
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 128
                i32.ge_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  local.get 0
                  i32.load offset=4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 3
                  i32.const 1
                  call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
                  local.tee 3
                  i32.const 255
                  i32.and
                  i32.const 2
                  i32.ne
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.load
                  local.set 3
                end
                local.get 0
                i32.load
                local.get 3
                i32.add
                local.get 1
                i32.store8
                local.get 0
                i32.const 8
                i32.add
                local.tee 0
                local.get 0
                i32.load
                i32.const 1
                i32.add
                i32.store
                br 1 (;@5;)
              end
              local.get 2
              i32.const 0
              i32.store offset=12
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 31
                  i32.and
                  i32.const 192
                  i32.or
                  i32.store8 offset=12
                  i32.const 2
                  local.set 1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 65535
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=14
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=13
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 15
                  i32.and
                  i32.const 224
                  i32.or
                  i32.store8 offset=12
                  i32.const 3
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 2
                local.get 1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=12
                local.get 2
                local.get 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=15
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=13
                local.get 2
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=14
                i32.const 4
                local.set 1
              end
              local.get 0
              local.get 0
              i32.load offset=8
              local.get 1
              call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
              local.tee 3
              i32.const 255
              i32.and
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
              local.get 0
              i32.const 8
              i32.add
              local.tee 3
              local.get 3
              i32.load
              local.tee 3
              local.get 1
              i32.add
              i32.store
              local.get 3
              local.get 0
              i32.load
              i32.add
              local.get 2
              i32.const 12
              i32.add
              local.get 1
              call $memcpy
              drop
            end
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            i32.const 0
            return
          end
          local.get 3
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1704
          call $core::panicking::panic::haf7d7779169c0743
          unreachable
        end
        local.get 3
        i32.const 1
        i32.and
        br_if 1 (;@1;)
      end
      call $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2
      unreachable
    end
    i32.const 1704
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1680
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::h533d40856339be39
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23 (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      local.get 0
      i32.load offset=8
      local.get 2
      call $<alloc::raw_vec::RawVec<T__A>>::reserve_internal::hd482a5eb753c5a7b
      local.tee 3
      i32.const 255
      i32.and
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.tee 3
      local.get 3
      i32.load
      local.tee 3
      local.get 2
      i32.add
      i32.store
      local.get 3
      local.get 0
      i32.load
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      call $alloc::raw_vec::capacity_overflow::h034ca36241ac64a2
      unreachable
    end
    i32.const 1704
    call $core::panicking::panic::haf7d7779169c0743
    unreachable)
  (func $core::panicking::panic_bounds_check::h5e0d682eeeb4ea02 (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 4
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 4
    i32.store offset=36
    local.get 3
    i32.const 1784
    i32.store offset=8
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1248
    i32.store offset=16
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $core::panicking::panic_fmt::h29e5105b4d53bc05
    unreachable)
  (func $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01 (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.const 10000
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 39
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 9
          i32.add
          local.get 3
          i32.add
          local.tee 4
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i32.const 10000
          i32.div_u
          local.tee 5
          i32.const -10000
          i32.mul
          i32.add
          local.tee 6
          i32.const 100
          i32.div_u
          local.tee 7
          i32.const 1
          i32.shl
          i32.const 1461
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -2
          i32.add
          local.get 6
          local.get 7
          i32.const -100
          i32.mul
          i32.add
          i32.const 1
          i32.shl
          i32.const 1461
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const -4
          i32.add
          local.set 3
          local.get 0
          i32.const 99999999
          i32.gt_u
          local.set 4
          local.get 5
          local.set 0
          local.get 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 0
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 100
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 5
        local.get 5
        i32.const 100
        i32.div_u
        local.tee 0
        i32.const -100
        i32.mul
        i32.add
        i32.const 1
        i32.shl
        i32.const 1461
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 5
      local.set 0
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        i32.add
        local.tee 8
        local.get 0
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.tee 8
      local.get 0
      i32.const 1
      i32.shl
      i32.const 1461
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 2
    i32.const 0
    i32.store offset=52
    local.get 2
    i32.const 1460
    i32.store offset=48
    local.get 2
    i32.const 1114112
    i32.store offset=56
    i32.const 39
    local.get 3
    i32.sub
    local.tee 7
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 43
      i32.store offset=56
      local.get 7
      i32.const 1
      i32.add
      local.set 3
    end
    local.get 2
    local.get 0
    i32.const 2
    i32.shr_u
    i32.const 1
    i32.and
    i32.store8 offset=63
    local.get 1
    i32.load offset=8
    local.set 5
    local.get 2
    local.get 2
    i32.const 63
    i32.add
    i32.store offset=68
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=64
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=72
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 5
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.load
                            local.tee 5
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 0
                            i32.const 8
                            i32.and
                            br_if 2 (;@10;)
                            local.get 5
                            local.get 3
                            i32.sub
                            local.set 4
                            i32.const 1
                            local.get 1
                            i32.load8_u offset=48
                            local.tee 0
                            local.get 0
                            i32.const 3
                            i32.eq
                            select
                            i32.const 3
                            i32.and
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 0
                            i32.const 2
                            i32.eq
                            br_if 4 (;@8;)
                            i32.const 0
                            local.set 9
                            br 5 (;@7;)
                          end
                          local.get 2
                          i32.const 64
                          i32.add
                          local.get 1
                          call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                          br_if 8 (;@3;)
                          local.get 1
                          i32.load offset=24
                          local.get 8
                          local.get 7
                          local.get 1
                          i32.const 28
                          i32.add
                          i32.load
                          i32.load offset=12
                          call_indirect (type 5)
                          local.set 0
                          br 10 (;@1;)
                        end
                        local.get 2
                        i32.const 64
                        i32.add
                        local.get 1
                        call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                        br_if 7 (;@3;)
                        local.get 1
                        i32.load offset=24
                        local.get 8
                        local.get 7
                        local.get 1
                        i32.const 28
                        i32.add
                        i32.load
                        i32.load offset=12
                        call_indirect (type 5)
                        local.set 0
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.const 1
                      i32.store8 offset=48
                      local.get 1
                      i32.const 48
                      i32.store offset=4
                      local.get 2
                      i32.const 64
                      i32.add
                      local.get 1
                      call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
                      br_if 6 (;@3;)
                      local.get 2
                      i32.const 48
                      i32.store offset=76
                      local.get 5
                      local.get 3
                      i32.sub
                      local.set 3
                      local.get 1
                      i32.load offset=24
                      local.set 5
                      i32.const -1
                      local.set 0
                      local.get 1
                      i32.const 28
                      i32.add
                      i32.load
                      local.tee 6
                      i32.const 12
                      i32.add
                      local.set 4
                      loop  ;; label = @10
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        local.get 3
                        i32.ge_u
                        br_if 4 (;@6;)
                        local.get 5
                        local.get 2
                        i32.const 76
                        i32.add
                        i32.const 1
                        local.get 4
                        i32.load
                        call_indirect (type 5)
                        i32.eqz
                        br_if 0 (;@10;)
                        br 7 (;@3;)
                      end
                    end
                    local.get 4
                    local.set 9
                    i32.const 0
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.const 1
                  i32.add
                  i32.const 1
                  i32.shr_u
                  local.set 9
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  local.set 4
                end
                local.get 2
                i32.const 0
                i32.store offset=76
                block  ;; label = @7
                  local.get 1
                  i32.load offset=4
                  local.tee 0
                  i32.const 127
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 0
                  i32.store8 offset=76
                  i32.const 1
                  local.set 5
                  br 3 (;@4;)
                end
                local.get 0
                i32.const 2047
                i32.gt_u
                br_if 1 (;@5;)
                local.get 2
                local.get 0
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=77
                local.get 2
                local.get 0
                i32.const 6
                i32.shr_u
                i32.const 31
                i32.and
                i32.const 192
                i32.or
                i32.store8 offset=76
                i32.const 2
                local.set 5
                br 2 (;@4;)
              end
              local.get 5
              local.get 8
              local.get 7
              local.get 6
              i32.const 12
              i32.add
              i32.load
              call_indirect (type 5)
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 65535
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=78
              local.get 2
              local.get 0
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=77
              local.get 2
              local.get 0
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=76
              i32.const 3
              local.set 5
              br 1 (;@4;)
            end
            local.get 2
            local.get 0
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=76
            local.get 2
            local.get 0
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=79
            local.get 2
            local.get 0
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=77
            local.get 2
            local.get 0
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=78
            i32.const 4
            local.set 5
          end
          local.get 1
          i32.load offset=24
          local.set 3
          i32.const -1
          local.set 0
          local.get 1
          i32.const 28
          i32.add
          i32.load
          local.tee 10
          i32.const 12
          i32.add
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              local.get 4
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              local.get 2
              i32.const 76
              i32.add
              local.get 5
              local.get 6
              i32.load
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 2
          i32.const 64
          i32.add
          local.get 1
          call $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92
          br_if 0 (;@3;)
          local.get 3
          local.get 8
          local.get 7
          local.get 10
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          call_indirect (type 5)
          br_if 0 (;@3;)
          i32.const -1
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 9
            i32.ge_u
            br_if 2 (;@2;)
            local.get 3
            local.get 2
            i32.const 76
            i32.add
            local.get 5
            local.get 4
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 80
    i32.add
    global.set 0
    local.get 0)
  (func $core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9 (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01)
  (func $core::fmt::Formatter::pad_integral::__closure__::h94fc5aab011b1f92 (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        i32.load
        local.tee 3
        i32.const 1114112
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 28
        i32.add
        i32.load
        local.set 4
        local.get 1
        i32.load offset=24
        local.set 5
        local.get 2
        i32.const 0
        i32.store offset=12
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 127
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.store8 offset=12
            i32.const 1
            local.set 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 3
            i32.const 6
            i32.shr_u
            i32.const 31
            i32.and
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            local.set 6
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 65535
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 3
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 3
            i32.const 12
            i32.shr_u
            i32.const 15
            i32.and
            i32.const 224
            i32.or
            i32.store8 offset=12
            i32.const 3
            local.set 6
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=12
          local.get 2
          local.get 3
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 3
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 3
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          i32.const 4
          local.set 6
        end
        i32.const 1
        local.set 3
        local.get 5
        local.get 2
        i32.const 12
        i32.add
        local.get 6
        local.get 4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        local.get 0
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 5)
        local.set 3
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 10 10 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1050992))
  (export "memory" (memory 0))
  (export "greet" (func $greet))
  (export "__wbindgen_malloc" (func $__wbindgen_malloc))
  (export "__wbindgen_free" (func $__wbindgen_free))
  (elem (;0;) (i32.const 1) $<&'a_T_as_core::fmt::Display>::fmt::hdb27d061969da417 $<core::fmt::Error_as_core::fmt::Debug>::fmt::h1e2fd851a36a17f2 $<&'a_T_as_core::fmt::Display>::fmt::hdc0ef8ca37056d26 $core::fmt::num::<impl_core::fmt::Display_for_usize>::fmt::h31ff92112cdfbd01 $core::fmt::ArgumentV1::show_usize::h31ed957c3096bec9 $core::ptr::drop_in_place::h2745c3a200e8c575 $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_str::hc67b7914ad867b23 $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_char::h7ce04ba63be07a5d $<core::fmt::Write::write_fmt::Adapter<'a__T>_as_core::fmt::Write>::write_fmt::h366fb92f1c6d804e)
  (data (;0;) (i32.const 1024) "Hello, !invalid malloc request\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00internal error: entered unreachable codeliballoc/raw_vec.rscapacity overflowa formatting trait implementation returned an errorlibcore/result.rs: \00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00index out of bounds: the len is  but the index is \00\00\00\00\00\00libcore/fmt/mod.rscalled `Option::unwrap()` on a `None` valuelibcore/option.rsError\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
  (data (;1;) (i32.const 1664) "\00\04\00\00\07\00\00\00\07\04\00\00\01\00\00\00\06\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00L\04\00\00(\00\00\00t\04\00\00\13\00\00\00\f3\01\00\00\1e\00\00\00\87\04\00\00\11\00\00\00t\04\00\00\13\00\00\00\ee\02\00\00\05\00\00\00\b4\05\00\00\00\00\00\00\dc\04\00\00\02\00\00\00\cb\04\00\00\11\00\00\00\b1\03\00\00\05\00\00\00(\05\00\00 \00\00\00H\05\00\00\12\00\00\00`\05\00\00\12\00\00\00W\04\00\00\11\00\00\00r\05\00\00+\00\00\00\9d\05\00\00\11\00\00\00Y\01\00\00\15\00\00\00`\05\00\00\12\00\00\00K\04\00\00(\00\00\00")
  (data (;2;) (i32.const 1856) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
