(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i64) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 8)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 1)))
  (import "index" "_registerHook" (func $~lib/matchstick-as/assembly/index/_registerHook (type 2)))
  (import "datasource" "dataSource.create" (func $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.create (type 2)))
  (import "assert" "_assert.dataSourceCount" (func $~lib/matchstick-as/assembly/assert/_assert.dataSourceCount (type 3)))
  (import "assert" "_assert.dataSourceExists" (func $~lib/matchstick-as/assembly/assert/_assert.dataSourceExists (type 3)))
  (import "store" "logDataSources" (func $~lib/matchstick-as/assembly/store/logDataSources (type 4)))
  (import "data_source_mock" "dataSourceMock.setReturnValues" (func $~lib/matchstick-as/assembly/data_source_mock/dataSourceMock.setReturnValues (type 5)))
  (import "index" "readFile" (func $~lib/matchstick-as/assembly/index/readFile (type 0)))
  (import "datasource" "dataSource.address" (func $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.address (type 7)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 3)))
  (import "conversion" "typeConversion.bytesToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToString (type 0)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 5)))
  (import "assert" "_assert.equals" (func $~lib/matchstick-as/assembly/assert/_assert.equals (type 3)))
  (import "index" "log.log" (func $~lib/@graphprotocol/graph-ts/index/log.log (type 2)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 5)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 2)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 10)))
  (import "log" "log.log" (func $~lib/matchstick-as/assembly/log/log.log (type 2)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/assembly/index/mockFunction (type 11)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "store" "countEntities" (func $~lib/matchstick-as/assembly/store/countEntities (type 0)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 2) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 5
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 7
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 3) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 12
            i32.const 12
            call $~lib/rt/stub/__new
            local.set 0
          end
          local.get 0
        end
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1760
      i32.const 1968
      i32.const 18
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 5) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2032
      i32.const 2096
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/util/memory/memcpy (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 5) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/rt/__newArray (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    local.set 5
    local.get 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 5
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/matchstick-as/defaults/newMockEvent (type 7) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 7
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 3
    i32.const 60
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 7
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=28
    local.get 2
    local.get 3
    i32.store offset=32
    local.get 2
    local.get 3
    i32.store offset=36
    local.get 2
    local.get 3
    i32.store offset=40
    local.get 2
    local.get 3
    i32.store offset=44
    local.get 2
    local.get 3
    i32.store offset=48
    local.get 2
    local.get 3
    i32.store offset=52
    local.get 2
    local.get 3
    i32.store offset=56
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 1
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 4
    i32.const 36
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 5
    local.get 4
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=16
    local.get 5
    local.get 0
    i32.store offset=20
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 4
    i32.store offset=28
    local.get 5
    local.get 0
    i32.store offset=32
    i32.const 0
    i32.const 21
    i32.const 2832
    call $~lib/rt/__newArray
    local.set 12
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 8
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 1
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 13
    i32.const 1
    i32.const 26
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 9
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 14
    i32.const 1
    i32.const 24
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 10
    i32.load offset=4
    drop
    local.get 10
    i32.load offset=4
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 4
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultIntBytes
    local.set 15
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 6
    i32.const 1
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee 11
    i32.const 0
    i32.store8
    local.get 11
    i32.const 0
    i32.store8
    i32.const 44
    i32.const 23
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 14
    i32.store
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 15
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=24
    local.get 0
    local.get 6
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 2160
    i32.store offset=36
    local.get 0
    local.get 11
    i32.store offset=40
    local.get 9
    i32.load offset=4
    local.get 0
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 6
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 4
    i32.const 44
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 13
    i32.store offset=24
    local.get 0
    local.get 9
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    local.get 4
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=40
    i32.const 32
    i32.const 16
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 7
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store offset=8
    local.get 1
    i32.const 2160
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 1
    local.get 5
    i32.store offset=20
    local.get 1
    local.get 12
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor (type 7) (result i32)
    (local i32 i32)
    i32.const 16
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 32
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 2896
      i32.const 2992
      i32.const 293
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/rt/stub/__renew (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 99
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    local.set 3
    local.get 0
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 15
    i32.and
    i32.const 1
    local.get 0
    select
    if  ;; label = @1
      i32.const 0
      i32.const 1120
      i32.const 45
      i32.const 3
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.get 0
    local.get 0
    i32.const 4
    i32.sub
    local.tee 6
    i32.load
    local.tee 5
    i32.add
    i32.eq
    local.set 4
    local.get 3
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.set 2
    local.get 3
    local.get 5
    i32.gt_u
    if  ;; label = @1
      local.get 4
      if  ;; label = @2
        local.get 3
        i32.const 1073741820
        i32.gt_u
        if  ;; label = @3
          i32.const 1056
          i32.const 1120
          i32.const 52
          i32.const 33
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        local.get 2
        i32.add
        local.tee 3
        memory.size
        local.tee 5
        i32.const 16
        i32.shl
        i32.const 15
        i32.add
        i32.const -16
        i32.and
        local.tee 4
        i32.gt_u
        if  ;; label = @3
          local.get 5
          local.get 3
          local.get 4
          i32.sub
          i32.const 65535
          i32.add
          i32.const -65536
          i32.and
          i32.const 16
          i32.shr_u
          local.tee 4
          local.get 4
          local.get 5
          i32.lt_s
          select
          memory.grow
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            local.get 4
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              unreachable
            end
          end
        end
        local.get 3
        global.set $~lib/rt/stub/offset
        local.get 6
        local.get 2
        i32.store
      else
        local.get 2
        local.get 5
        i32.const 1
        i32.shl
        local.tee 3
        local.get 2
        local.get 3
        i32.gt_u
        select
        call $~lib/rt/stub/__alloc
        local.tee 2
        local.get 0
        local.get 5
        call $~lib/memory/memory.copy
        local.get 2
        local.set 0
      end
    else
      local.get 4
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.add
        global.set $~lib/rt/stub/offset
        local.get 6
        local.get 2
        i32.store
      end
    end
    local.get 0
    i32.const 4
    i32.sub
    local.get 1
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add)
  (func $~lib/array/ensureCapacity (type 2) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.const 2
    i32.shr_u
    i32.gt_u
    if  ;; label = @1
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1760
        i32.const 1808
        i32.const 17
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i32.load
      local.tee 4
      local.get 3
      i32.const 1
      i32.shl
      local.tee 2
      i32.const 1073741820
      local.get 2
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 2
      local.get 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_u
      select
      local.tee 1
      call $~lib/rt/stub/__renew
      local.tee 2
      local.get 3
      i32.add
      local.get 1
      local.get 3
      i32.sub
      call $~lib/memory/memory.fill
      local.get 2
      local.get 4
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
      end
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push (type 2) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.const 1
    i32.add
    local.tee 3
    call $~lib/array/ensureCapacity
    local.get 0
    i32.load offset=4
    local.get 2
    i32.const 2
    i32.shl
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=12)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.eqz
    i32.eqz
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 5
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $tests/animal-nft-utils/createApprovalForAllEvent (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 4
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 5
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2864
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 4
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=24
    local.set 4
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3200
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=24
    local.set 1
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    local.set 2
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3104
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3)
  (func $tests/animal-nft-utils/createTransferEvent (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 4
    i32.load offset=24
    local.set 3
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 5
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3424
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 3
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 4
    i32.load offset=24
    local.set 3
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3456
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 4
    i32.load offset=24
    local.set 3
    local.get 2
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3152
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 4)
  (func $start:tests/animal-nft.test~anonymous|0~anonymous|0 (type 1)
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $generated/templates/nftMetadata.create (type 4) (param i32)
    (local i32)
    i32.const 1
    i32.const 3
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store
    i32.const 3840
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.create)
  (func $~lib/string/String.UTF8.decode (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 0
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    local.tee 2
    i32.add
    local.tee 3
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      i32.const 4112
      i32.const 767
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 5
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.get 3
      i32.lt_u
      if  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 128
          i32.and
          if  ;; label = @4
            local.get 0
            local.get 3
            i32.eq
            br_if 1 (;@3;)
            local.get 0
            i32.load8_u
            i32.const 63
            i32.and
            local.set 4
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 224
            i32.and
            i32.const 192
            i32.eq
            if  ;; label = @5
              local.get 2
              local.get 4
              local.get 1
              i32.const 31
              i32.and
              i32.const 6
              i32.shl
              i32.or
              i32.store16
            else
              local.get 0
              local.get 3
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              i32.load8_u
              i32.const 63
              i32.and
              local.set 6
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              i32.const 240
              i32.and
              i32.const 224
              i32.eq
              if  ;; label = @6
                local.get 6
                local.get 1
                i32.const 15
                i32.and
                i32.const 12
                i32.shl
                local.get 4
                i32.const 6
                i32.shl
                i32.or
                i32.or
                local.set 1
              else
                local.get 0
                local.get 3
                i32.eq
                br_if 3 (;@3;)
                local.get 0
                i32.load8_u
                i32.const 63
                i32.and
                local.get 1
                i32.const 7
                i32.and
                i32.const 18
                i32.shl
                local.get 4
                i32.const 12
                i32.shl
                i32.or
                local.get 6
                i32.const 6
                i32.shl
                i32.or
                i32.or
                local.set 1
                local.get 0
                i32.const 1
                i32.add
                local.set 0
              end
              local.get 1
              i32.const 65536
              i32.lt_u
              if  ;; label = @6
                local.get 2
                local.get 1
                i32.store16
              else
                local.get 2
                local.get 1
                i32.const 65536
                i32.sub
                local.tee 1
                i32.const 10
                i32.shr_u
                i32.const 55296
                i32.or
                local.get 1
                i32.const 1023
                i32.and
                i32.const 56320
                i32.or
                i32.const 16
                i32.shl
                i32.or
                i32.store
                local.get 2
                i32.const 2
                i32.add
                local.set 2
              end
            end
          else
            local.get 2
            local.get 1
            i32.store16
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          br 2 (;@1;)
        end
      end
    end
    local.get 5
    local.get 2
    local.get 5
    i32.sub
    call $~lib/rt/stub/__renew)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get (type 3) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 2032
      i32.const 1808
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4192
      i32.const 1808
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/string/String.__eq (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 4
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 5) (param i32 i32 i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.load
          local.get 4
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 3
            i32.load
            local.get 4
            call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.get 3
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 3) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 4832
      i32.const 4896
      i32.const 83
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/util/number/utoa32_dec_lut (type 5) (param i32 i32 i32)
    (local i32)
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 3
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 0
        local.get 2
        i32.const 4
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        i32.add
        local.get 3
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 5276
        i32.add
        i64.load32_u
        local.get 3
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 5276
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 2
          i32.const 2
          i32.sub
          local.tee 2
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 5276
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 100
          i32.div_u
        end
        local.set 1
      end
      local.get 1
    end
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 5276
      i32.add
      i32.load
      i32.store
    else
      local.get 0
      local.get 2
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 5264
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 1
    select
    local.tee 2
    local.tee 0
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 0
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 0
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 0
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 0
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 1
    i32.add
    local.tee 3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 2
    local.get 3
    call $~lib/util/number/utoa32_dec_lut
    local.get 1
    if  ;; label = @1
      local.get 0
      i32.const 45
      i32.store16
    end
    local.get 0)
  (func $~lib/util/number/itoa64 (type 9) (param i64) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i64.eqz
    if  ;; label = @1
      i32.const 5264
      return
    end
    i64.const 0
    local.get 0
    i64.sub
    local.get 0
    local.get 0
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.tee 3
    select
    local.tee 0
    i64.const 4294967295
    i64.le_u
    if  ;; label = @1
      local.get 0
      i32.wrap_i64
      local.tee 2
      local.tee 1
      i32.const 100000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 100
        i32.lt_u
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 10
          i32.ge_u
          i32.const 1
          i32.add
        else
          local.get 1
          i32.const 10000
          i32.ge_u
          i32.const 3
          i32.add
          local.get 1
          i32.const 1000
          i32.ge_u
          i32.add
        end
      else
        local.get 1
        i32.const 10000000
        i32.lt_u
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 1000000
          i32.ge_u
          i32.const 6
          i32.add
        else
          local.get 1
          i32.const 1000000000
          i32.ge_u
          i32.const 8
          i32.add
          local.get 1
          i32.const 100000000
          i32.ge_u
          i32.add
        end
      end
      local.get 3
      i32.add
      local.tee 1
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee 4
      local.get 2
      local.get 1
      call $~lib/util/number/utoa32_dec_lut
    else
      local.get 0
      i64.const 1000000000000000
      i64.lt_u
      if (result i32)  ;; label = @2
        local.get 0
        i64.const 1000000000000
        i64.lt_u
        if (result i32)  ;; label = @3
          local.get 0
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get 0
          i64.const 10000000000
          i64.ge_u
          i32.add
        else
          local.get 0
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get 0
          i64.const 10000000000000
          i64.ge_u
          i32.add
        end
      else
        local.get 0
        i64.const 100000000000000000
        i64.lt_u
        if (result i32)  ;; label = @3
          local.get 0
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
        else
          local.get 0
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get 0
          i64.const 1000000000000000000
          i64.ge_u
          i32.add
        end
      end
      local.get 3
      i32.add
      local.tee 1
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee 4
      local.set 2
      loop  ;; label = @2
        local.get 0
        i64.const 100000000
        i64.ge_u
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.const 4
          i32.sub
          local.tee 1
          i32.const 1
          i32.shl
          i32.add
          local.get 0
          local.get 0
          i64.const 100000000
          i64.div_u
          local.tee 0
          i64.const 100000000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 5
          i32.const 10000
          i32.rem_u
          local.tee 6
          i32.const 100
          i32.div_u
          i32.const 2
          i32.shl
          i32.const 5276
          i32.add
          i64.load32_u
          local.get 6
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 5276
          i32.add
          i64.load32_u
          i64.const 32
          i64.shl
          i64.or
          i64.store
          local.get 2
          local.get 1
          i32.const 4
          i32.sub
          local.tee 1
          i32.const 1
          i32.shl
          i32.add
          local.get 5
          i32.const 10000
          i32.div_u
          local.tee 5
          i32.const 100
          i32.div_u
          i32.const 2
          i32.shl
          i32.const 5276
          i32.add
          i64.load32_u
          local.get 5
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 5276
          i32.add
          i64.load32_u
          i64.const 32
          i64.shl
          i64.or
          i64.store
          br 1 (;@2;)
        end
      end
      local.get 2
      local.get 0
      i32.wrap_i64
      local.get 1
      call $~lib/util/number/utoa32_dec_lut
    end
    local.get 3
    if  ;; label = @1
      local.get 4
      i32.const 45
      i32.store16
    end
    local.get 4)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toArray (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 4
    i32.ne
    if  ;; label = @1
      i32.const 7136
      i32.const 4896
      i32.const 98
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/util/string/joinStringArray (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 4752
      return
    end
    local.get 7
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      if (result i32)  ;; label = @2
        local.get 0
      else
        i32.const 4752
      end
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          local.get 4
          local.get 6
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 7
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    i32.mul
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 6
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 6
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 6
            i32.add
          end
          local.set 3
        end
        local.get 4
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 2
            local.get 4
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 4
            i32.add
          end
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.const 1
      i32.shl
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/string/String#concat (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 4752
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 7328
      i32.const 4896
      i32.const 62
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
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
                        local.get 0
                        i32.load
                        br_table 0 (;@10;) 1 (;@9;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 6 (;@4;) 7 (;@3;) 8 (;@2;) 2 (;@8;) 9 (;@1;)
                      end
                      local.get 0
                      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
                      return
                    end
                    local.get 0
                    i32.load
                    i32.const 5
                    i32.eq
                    if (result i32)  ;; label = @9
                      i32.const 0
                    else
                      local.get 0
                      i32.load
                      i32.const 1
                      i32.ne
                      if  ;; label = @10
                        i32.const 5008
                        i32.const 4896
                        i32.const 70
                        i32.const 5
                        call $~lib/builtins/abort
                        unreachable
                      end
                      local.get 0
                      i64.load offset=8
                      i32.wrap_i64
                    end
                    call $~lib/util/number/itoa32
                    return
                  end
                  local.get 0
                  i32.load
                  i32.const 5
                  i32.eq
                  if (result i64)  ;; label = @8
                    i64.const 0
                  else
                    local.get 0
                    i32.load
                    i32.const 8
                    i32.ne
                    if  ;; label = @9
                      i32.const 6848
                      i32.const 4896
                      i32.const 78
                      i32.const 5
                      call $~lib/builtins/abort
                      unreachable
                    end
                    local.get 0
                    i64.load offset=8
                  end
                  call $~lib/util/number/itoa64
                  return
                end
                local.get 0
                i32.load
                i32.const 2
                i32.ne
                if  ;; label = @7
                  i32.const 6912
                  i32.const 4896
                  i32.const 93
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i32.wrap_i64
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 7072
              i32.const 7104
              local.get 0
              i32.load
              i32.const 5
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 0
              else
                local.get 0
                i32.load
                i32.const 3
                i32.ne
                if  ;; label = @7
                  i32.const 6992
                  i32.const 4896
                  i32.const 57
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i64.const 0
                i64.ne
              end
              select
              return
            end
            local.get 0
            call $~lib/@graphprotocol/graph-ts/common/value/Value#toArray
            local.set 1
            i32.const 0
            local.set 0
            local.get 1
            i32.load offset=12
            local.tee 3
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 4
            i32.load offset=4
            local.set 5
            loop  ;; label = @5
              local.get 0
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 2
              local.get 3
              i32.gt_s
              select
              i32.lt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 2
                local.get 1
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 1
                i32.const 7232
                i32.load
                call_indirect $0 (type 6)
                local.set 6
                local.get 2
                local.get 5
                i32.add
                local.get 6
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 7200
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.const 7264
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 7296
            call $~lib/string/String#concat
            return
          end
          i32.const 1360
          return
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      i32.load
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 7408
        i32.const 4896
        i32.const 88
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i64.load offset=8
      i32.wrap_i64
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 7572
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 7568
    i32.const 7564
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1564
    i32.load
    i32.ge_s
    if  ;; label = @1
      i32.const 7652
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 7648
      i32.const 7644
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 4752
      call $~lib/util/string/joinStringArray
      return
    end
    i32.const 1552
    local.get 0
    i32.load
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get)
  (func $src/metadata/handlenftMetadata (type 4) (param i32)
    (local i32 i32 i32 i64)
    i32.const 3840
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.address
    i32.load
    call $~lib/string/String.UTF8.decode
    call $~lib/@graphprotocol/graph-ts/index/store.get
    if  ;; label = @1
      return
    end
    call $~lib/@graphprotocol/graph-ts/common/datasource/dataSource.address
    i32.load
    call $~lib/string/String.UTF8.decode
    local.set 1
    i32.const 4
    i32.const 33
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 2
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=8
    local.get 3
    i32.const 4160
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToString
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 2
    i32.const 4320
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 2
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4352
      i32.const 4464
      i32.const 328
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 4788
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 4796
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 4784
        i32.const 4780
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 330
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 3840
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null> (type 4) (param i32)
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    local.get 0
    i32.const 0
    i32.ne
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 7680
      i32.const 3952
      i32.const 176
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/string/String#charAt (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ge_u
    if  ;; label = @1
      i32.const 4752
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get 2)
  (func $start:tests/animal-nft.test~anonymous|0~anonymous|1 (type 1)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 3488
    call $generated/templates/nftMetadata.create
    i32.const 3840
    i32.const 1
    call $~lib/matchstick-as/assembly/assert/_assert.dataSourceCount
    i32.eqz
    if  ;; label = @1
      i32.const 3888
      i32.const 3952
      i32.const 25
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    i32.const 3840
    i32.const 3488
    call $~lib/matchstick-as/assembly/assert/_assert.dataSourceExists
    i32.eqz
    if  ;; label = @1
      i32.const 3888
      i32.const 3952
      i32.const 35
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    i32.const 3840
    call $~lib/matchstick-as/assembly/store/logDataSources
    i32.const 1600
    i32.const 1712
    global.get $~lib/matchstick-as/assembly/data_source_mock/defaultContext
    call $~lib/matchstick-as/assembly/data_source_mock/dataSourceMock.setReturnValues
    i32.const 3488
    i32.const 1712
    global.get $~lib/matchstick-as/assembly/data_source_mock/defaultContext
    call $~lib/matchstick-as/assembly/data_source_mock/dataSourceMock.setReturnValues
    i32.const 4048
    call $~lib/matchstick-as/assembly/index/readFile
    call $src/metadata/handlenftMetadata
    i32.const 3840
    i32.const 3488
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 5
    call $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null>
    local.get 5
    if  ;; label = @1
      local.get 5
      i32.const 4320
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 5
      if (result i32)  ;; label = @2
        local.get 5
        i32.load
        i32.const 5
        i32.eq
      else
        i32.const 1
      end
      if  ;; label = @2
        i32.const 7776
        i32.const 4464
        i32.const 364
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      else
        local.get 5
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
        drop
      end
      i32.const 0
      i32.const 3
      i32.const 7920
      call $~lib/rt/__newArray
      local.set 3
      i32.const 0
      local.set 5
      i32.const 4752
      local.set 4
      i32.const 7884
      i32.load
      i32.const 1
      i32.shr_u
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.gt_s
        if  ;; label = @3
          local.get 5
          local.get 2
          i32.const 1
          i32.sub
          i32.lt_s
          if (result i32)  ;; label = @4
            local.get 5
            i32.const 7884
            i32.load
            i32.const 1
            i32.shr_u
            i32.ge_u
            if (result i32)  ;; label = @5
              i32.const -1
            else
              local.get 5
              i32.const 1
              i32.shl
              i32.const 7888
              i32.add
              i32.load16_u
            end
            i32.const 123
            i32.eq
          else
            i32.const 0
          end
          if (result i32)  ;; label = @4
            local.get 5
            i32.const 1
            i32.add
            local.tee 0
            i32.const 7884
            i32.load
            i32.const 1
            i32.shr_u
            i32.ge_u
            if (result i32)  ;; label = @5
              i32.const -1
            else
              local.get 0
              i32.const 1
              i32.shl
              i32.const 7888
              i32.add
              i32.load16_u
            end
            i32.const 125
            i32.eq
          else
            i32.const 0
          end
          if  ;; label = @4
            local.get 1
            local.get 3
            i32.load offset=12
            i32.ge_s
            if (result i32)  ;; label = @5
              i32.const 7952
              i32.const 7888
              call $~lib/string/String#concat
              i32.const 8048
              i32.const 73
              i32.const 9
              call $~lib/builtins/abort
              unreachable
            else
              local.get 1
              local.tee 0
              i32.const 1
              i32.add
              local.set 1
              local.get 4
              local.get 3
              local.get 0
              call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
              call $~lib/string/String#concat
              local.set 4
              local.get 5
              i32.const 1
              i32.add
            end
            local.set 5
          else
            local.get 4
            i32.const 7888
            local.get 5
            call $~lib/string/String#charAt
            call $~lib/string/String#concat
            local.set 4
          end
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          br 1 (;@2;)
        end
      end
      i32.const 3
      local.get 4
      call $~lib/@graphprotocol/graph-ts/index/log.log
    end)
  (func $start:tests/animal-nft.test~anonymous|0 (type 1)
    i32.const 3664
    i32.load
    i32.const 3696
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 3744
    i32.const 0
    i32.const 8144
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 8384
      i32.const 2992
      i32.const 56
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/AnimalNftUser#constructor (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 38
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 2
    local.get 0
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
    i32.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 4160
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1)
  (func $generated/schema/AnimalNftUser#save (type 4) (param i32)
    (local i32)
    local.get 0
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8528
      i32.const 4464
      i32.const 383
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 8820
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 8828
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 8816
        i32.const 8812
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 385
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 8480
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/typedarray/Uint8Array#__get (type 3) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2032
      i32.const 2096
      i32.const 164
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    i32.load8_u)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32 (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 255
    i32.const 0
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.gt_s
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 0
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.sub
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.eq
    else
      local.get 1
    end
    select
    local.set 1
    i32.const 4
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load offset=8
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 2
        call $~lib/typedarray/Uint8Array#__get
        local.get 1
        i32.ne
        if  ;; label = @3
          i32.const 8864
          local.get 0
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          call $~lib/string/String#concat
          i32.const 8928
          call $~lib/string/String#concat
          i32.const 8976
          i32.const 150
          i32.const 9
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 2
    i32.const 0
    local.get 1
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 1
    local.get 1
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 2
    local.get 1
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 3
    local.get 1
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    local.get 0
    local.get 2
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.lt_s
    select
    i32.load offset=8
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 3
      i32.gt_s
      if  ;; label = @2
        local.get 2
        local.get 3
        local.get 0
        local.get 3
        call $~lib/typedarray/Uint8Array#__get
        call $~lib/typedarray/Uint8Array#__set
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    local.get 2
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 2
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 2
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.or)
  (func $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray> (type 5) (param i32 i32 i32)
    local.get 2
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 2032
      i32.const 2096
      i32.const 1910
      i32.const 19
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    i32.load offset=8
    i32.add
    i32.lt_s
    if  ;; label = @1
      i32.const 2032
      i32.const 2096
      i32.const 1911
      i32.const 47
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load offset=8
    call $~lib/memory/memory.copy)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Bytes#concatI32 (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 1
    i32.const 0
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load offset=8
    i32.add
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 2
    local.get 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray>
    local.get 2
    local.get 1
    local.get 0
    i32.load offset=8
    call $~lib/typedarray/Uint8Array#set<~lib/@graphprotocol/graph-ts/common/collections/ByteArray>
    local.get 2)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 9104
      i32.const 2992
      i32.const 83
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/nftRequested#set:requestId (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 3248
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/nftRequested#set:blockNumber (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 9200
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/nftRequested#set:blockTimestamp (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 9248
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/nftRequested#set:transactionHash (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 9296
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/animal-nft/handlenftRequested (type 4) (param i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 8480
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 39
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/AnimalNftUser#constructor
      call $generated/schema/AnimalNftUser#save
    end
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/Bytes#concatI32
    local.set 2
    i32.const 4
    i32.const 40
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 1
    local.get 2
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 3
    i64.store offset=8
    local.get 1
    i32.const 4160
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/nftRequested#set:requestId
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 3
    i64.store offset=8
    local.get 1
    i32.const 3296
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $generated/schema/nftRequested#set:blockNumber
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/nftRequested#set:blockTimestamp
    local.get 1
    local.get 0
    i32.load offset=20
    i32.load
    call $generated/schema/nftRequested#set:transactionHash
    local.get 1
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 9360
      i32.const 4464
      i32.const 802
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 9652
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 9660
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 9648
        i32.const 9644
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 804
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 9696
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|1 (type 1)
    (local i32 i32)
    global.get $tests/animal-nft.test/newNftRequestedEvent
    call $src/animal-nft/handlenftRequested
    global.get $tests/animal-nft.test/newNftRequestedEvent
    local.set 1
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    i32.const 8480
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    call $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null>)
  (func $generated/AnimalNft/AnimalNft/ApprovalForAll__Params#get:approved (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    local.tee 0
    i32.load
    i32.const 5
    i32.ne
    if  ;; label = @1
      i32.const 9872
      i32.const 2992
      i32.const 61
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i64.const 0
    i64.ne)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#__set (type 5) (param i32 i32 i32)
    (local i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 2032
        i32.const 1808
        i32.const 122
        i32.const 22
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 3
      call $~lib/array/ensureCapacity
      local.get 0
      local.get 3
      i32.store offset=12
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    local.get 2
    i32.store)
  (func $generated/schema/AnimalNftUser#get:operators (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 9968
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.eq
    else
      i32.const 1
    end
    if  ;; label = @1
      i32.const 0
      local.set 0
    else
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toArray
      local.tee 3
      i32.load offset=12
      local.set 1
      i32.const 16
      i32.const 24
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1760
        i32.const 1808
        i32.const 64
        i32.const 60
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 4
      i32.const 0
      call $~lib/rt/stub/__new
      local.tee 5
      local.get 4
      call $~lib/memory/memory.fill
      local.get 0
      local.get 5
      i32.store
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=12
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 0
          local.get 2
          local.get 3
          local.get 2
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#__set
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 1 (;@2;)
        end
      end
    end
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#indexOf (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.tee 3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get 3
    select
    if  ;; label = @1
      i32.const -1
      return
    end
    local.get 0
    i32.load offset=4
    local.set 5
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_s
      if  ;; label = @2
        block (result i32)  ;; label = @3
          i32.const 0
          local.set 0
          i32.const 0
          local.get 5
          local.get 2
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 4
          i32.load offset=8
          local.get 1
          i32.load offset=8
          i32.ne
          br_if 0 (;@3;)
          drop
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.load offset=8
            i32.lt_s
            if  ;; label = @5
              i32.const 0
              local.get 4
              local.get 0
              call $~lib/typedarray/Uint8Array#__get
              local.get 1
              local.get 0
              call $~lib/typedarray/Uint8Array#__get
              i32.ne
              br_if 2 (;@3;)
              drop
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              br 1 (;@4;)
            end
          end
          i32.const 1
        end
        if  ;; label = @3
          local.get 2
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const -1)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset (type 2) (param i32 i32)
    (local i32)
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 5
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/AnimalNftUser#set:operators (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    local.get 1
    if  ;; label = @1
      local.get 0
      local.set 2
      i32.const 0
      local.set 0
      local.get 1
      i32.load offset=12
      local.set 4
      i32.const 16
      i32.const 36
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      i32.const 0
      i32.store offset=8
      local.get 3
      i32.const 0
      i32.store offset=12
      local.get 4
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1760
        i32.const 1808
        i32.const 64
        i32.const 60
        call $~lib/builtins/abort
        unreachable
      end
      local.get 4
      i32.const 8
      local.get 4
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 5
      i32.const 0
      call $~lib/rt/stub/__new
      local.tee 6
      local.get 5
      call $~lib/memory/memory.fill
      local.get 3
      local.get 6
      i32.store
      local.get 3
      local.get 6
      i32.store offset=4
      local.get 3
      local.get 5
      i32.store offset=8
      local.get 3
      local.get 4
      i32.store offset=12
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 1
          local.get 0
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i64.extend_i32_u
          local.set 7
          i32.const 16
          i32.const 6
          call $~lib/rt/stub/__new
          local.tee 4
          i32.const 6
          i32.store
          local.get 4
          local.get 7
          i64.store offset=8
          local.get 3
          local.get 0
          local.get 4
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#__set
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
      local.get 3
      i64.extend_i32_u
      local.set 7
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 4
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 2
      i32.const 9968
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    else
      local.get 0
      i32.const 9968
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
    end)
  (func $src/animal-nft/handleApprovalForAll (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 0
    i32.store
    i32.const 8480
    local.get 3
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 3
    if  ;; label = @1
      i32.const 4
      i32.const 42
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 2
      call $generated/AnimalNft/AnimalNft/ApprovalForAll__Params#get:approved
      if  ;; label = @2
        local.get 3
        call $generated/schema/AnimalNftUser#get:operators
        local.tee 2
        if (result i32)  ;; label = @3
          i32.const 4
          i32.const 42
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          local.get 0
          i32.store
          local.get 2
          local.get 1
          i32.load
          i32.load offset=24
          i32.const 1
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load offset=4
          call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#indexOf
          i32.const 0
          i32.ge_s
        else
          i32.const 1
        end
        if  ;; label = @3
          local.get 2
          i32.eqz
          if  ;; label = @4
            i32.const 1
            i32.const 24
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 2
            i32.load offset=4
            drop
            i32.const 4
            i32.const 42
            call $~lib/rt/stub/__new
            local.tee 1
            i32.const 0
            i32.store
            local.get 1
            local.get 0
            i32.store
            local.get 1
            i32.load
            i32.load offset=24
            i32.const 1
            call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
            i32.load offset=4
            call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
            local.set 0
            local.get 2
            i32.load offset=4
            local.get 0
            i32.store
            local.get 3
            local.get 2
            call $generated/schema/AnimalNftUser#set:operators
          end
        else
          i32.const 4
          i32.const 42
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          local.get 0
          i32.store
          local.get 2
          local.get 1
          i32.load
          i32.load offset=24
          i32.const 1
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load offset=4
          call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
          local.get 3
          local.get 2
          call $generated/schema/AnimalNftUser#set:operators
        end
      else
        local.get 3
        call $generated/schema/AnimalNftUser#get:operators
        local.tee 2
        if  ;; label = @3
          i32.const 4
          i32.const 42
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          local.get 0
          i32.store
          local.get 2
          local.get 1
          i32.load
          i32.load offset=24
          i32.const 1
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
          i32.load offset=4
          call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
          call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#indexOf
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 2
            i32.load offset=12
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 3
              i32.const 0
              call $generated/schema/AnimalNftUser#set:operators
            else
              i32.const 4
              i32.const 42
              call $~lib/rt/stub/__new
              local.tee 1
              i32.const 0
              i32.store
              local.get 1
              local.get 0
              i32.store
              local.get 2
              local.get 1
              i32.load
              i32.load offset=24
              i32.const 1
              call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
              i32.load offset=4
              call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
              call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>#indexOf
              local.set 0
              i32.const 1
              local.get 2
              i32.load offset=12
              local.tee 1
              local.get 0
              i32.const 0
              i32.lt_s
              if (result i32)  ;; label = @6
                local.get 0
                local.get 1
                i32.add
                local.tee 0
                i32.const 0
                local.get 0
                i32.const 0
                i32.gt_s
                select
              else
                local.get 0
                local.get 1
                local.get 0
                local.get 1
                i32.lt_s
                select
              end
              local.tee 0
              i32.sub
              local.tee 4
              local.get 4
              i32.const 1
              i32.gt_s
              select
              local.tee 4
              i32.const 0
              local.get 4
              i32.const 0
              i32.gt_s
              select
              local.tee 4
              i32.const 24
              i32.const 0
              call $~lib/rt/__newArray
              local.tee 5
              i32.load offset=4
              local.get 2
              i32.load offset=4
              local.tee 6
              local.get 0
              i32.const 2
              i32.shl
              i32.add
              local.tee 7
              local.get 4
              i32.const 2
              i32.shl
              call $~lib/memory/memory.copy
              local.get 1
              local.get 0
              local.get 4
              i32.add
              local.tee 0
              i32.ne
              if  ;; label = @6
                local.get 7
                local.get 6
                local.get 0
                i32.const 2
                i32.shl
                i32.add
                local.get 1
                local.get 0
                i32.sub
                i32.const 2
                i32.shl
                call $~lib/memory/memory.copy
              end
              local.get 2
              local.get 1
              local.get 4
              i32.sub
              i32.store offset=12
              local.get 3
              local.get 5
              call $generated/schema/AnimalNftUser#set:operators
            end
          end
        end
      end
    else
      i32.const 4
      i32.const 42
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.load
      i32.load offset=24
      i32.const 0
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/AnimalNftUser#constructor
      local.set 3
      i32.const 4
      i32.const 42
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 2
      call $generated/AnimalNft/AnimalNft/ApprovalForAll__Params#get:approved
      if  ;; label = @2
        i32.const 1
        i32.const 24
        i32.const 0
        call $~lib/rt/__newArray
        local.tee 2
        i32.load offset=4
        drop
        i32.const 4
        i32.const 42
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 0
        i32.store
        local.get 1
        local.get 0
        i32.store
        local.get 1
        i32.load
        i32.load offset=24
        i32.const 1
        call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
        i32.load offset=4
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
        local.set 0
        local.get 2
        i32.load offset=4
        local.get 0
        i32.store
        local.get 3
        local.get 2
        call $generated/schema/AnimalNftUser#set:operators
      end
    end
    local.get 3
    call $generated/schema/AnimalNftUser#save)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 8) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 10048
      i32.const 3952
      i32.const 45
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|2 (type 1)
    (local i32)
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 10020
    global.get $tests/animal-nft.test/operator1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 8480
    local.get 0
    i32.const 9968
    i32.const 10016
    i32.const 10012
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|3 (type 1)
    (local i32)
    global.get $tests/animal-nft.test/owner
    call $generated/schema/AnimalNftUser#constructor
    call $generated/schema/AnimalNftUser#save
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 10308
    global.get $tests/animal-nft.test/operator1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 8480
    local.get 0
    i32.const 9968
    i32.const 10304
    i32.const 10300
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|4 (type 1)
    (local i32)
    global.get $tests/animal-nft.test/owner
    call $generated/schema/AnimalNftUser#constructor
    call $generated/schema/AnimalNftUser#save
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent2
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 10484
    global.get $tests/animal-nft.test/operator1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 10492
    global.get $tests/animal-nft.test/operator2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 8480
    local.get 0
    i32.const 9968
    i32.const 10480
    i32.const 10476
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|5 (type 1)
    (local i32)
    global.get $tests/animal-nft.test/owner
    call $generated/schema/AnimalNftUser#constructor
    call $generated/schema/AnimalNftUser#save
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 10644
    global.get $tests/animal-nft.test/operator1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 8480
    local.get 0
    i32.const 9968
    i32.const 10640
    i32.const 10636
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $~lib/matchstick-as/assembly/assert/assert.assertNull<~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>|null> (type 4) (param i32)
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    local.get 0
    i32.eqz
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 10800
      i32.const 3952
      i32.const 166
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|6 (type 1)
    (local i32 i32)
    global.get $tests/animal-nft.test/newFalseApprovalForAllEvent
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newFalseApprovalForAllEvent
    local.set 1
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    i32.const 8480
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    call $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null>
    local.get 0
    if  ;; label = @1
      local.get 0
      call $generated/schema/AnimalNftUser#get:operators
      call $~lib/matchstick-as/assembly/assert/assert.assertNull<~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>|null>
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|7 (type 1)
    (local i32 i32)
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newFalseApprovalForAllEvent
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newFalseApprovalForAllEvent
    local.set 1
    i32.const 4
    i32.const 42
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    i32.const 8480
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    call $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null>
    local.get 0
    if  ;; label = @1
      local.get 0
      call $generated/schema/AnimalNftUser#get:operators
      call $~lib/matchstick-as/assembly/assert/assert.assertNull<~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/Bytes>|null>
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|8 (type 1)
    (local i32)
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent1
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newTrueApprovalForAllEvent2
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/newFalseApprovalForAllEvent
    call $src/animal-nft/handleApprovalForAll
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 0
    i32.const 11236
    global.get $tests/animal-nft.test/operator1
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.store
    i32.const 8480
    local.get 0
    i32.const 9968
    i32.const 11232
    i32.const 11228
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 4752
    call $~lib/util/string/joinStringArray
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $generated/schema/animalNft#set:owner (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 2864
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/animalNft#set:approved (type 2) (param i32 i32)
    (local i64)
    local.get 1
    if  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 2
      i64.store offset=8
      local.get 0
      i32.const 3104
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    else
      local.get 0
      i32.const 3104
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
    end)
  (func $generated/schema/animalNft#save (type 4) (param i32)
    (local i32)
    local.get 0
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 11424
      i32.const 4464
      i32.const 460
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 11700
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 11708
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 11696
        i32.const 11692
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 462
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 11376
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $generated/schema/Transfer#set:tokenId (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 3152
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $src/animal-nft/handleTransfer (type 4) (param i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    i32.const 8480
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/AnimalNftUser#constructor
      call $generated/schema/AnimalNftUser#save
    end
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    i32.const 11376
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    if  ;; label = @1
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 2
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/animalNft#set:owner
      local.get 2
      i32.const 0
      call $generated/schema/animalNft#set:approved
    else
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.load
      i32.load offset=24
      i32.const 2
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      local.set 1
      i32.const 4
      i32.const 44
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 2
      local.get 1
      i64.extend_i32_u
      local.set 3
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 3
      i64.store offset=8
      local.get 2
      i32.const 4160
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 4
      i32.const 43
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      local.get 0
      i32.store
      local.get 2
      local.get 1
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/animalNft#set:owner
    end
    local.get 2
    call $generated/schema/animalNft#save
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/Bytes#concatI32
    local.set 1
    i32.const 4
    i32.const 45
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 2
    local.get 1
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 4160
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 3424
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 3456
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/Transfer#set:tokenId
    local.get 2
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $generated/schema/nftRequested#set:blockNumber
    local.get 2
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/nftRequested#set:blockTimestamp
    local.get 2
    local.get 0
    i32.load offset=20
    i32.load
    call $generated/schema/nftRequested#set:transactionHash
    local.get 2
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11744
      i32.const 4464
      i32.const 547
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 12020
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 12028
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 12016
        i32.const 12012
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 549
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 12064
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/animal-nft.test~anonymous|1~anonymous|9 (type 1)
    global.get $tests/animal-nft.test/newTransferEvent
    call $src/animal-nft/handleTransfer
    i32.const 11376
    global.get $tests/animal-nft.test/tokenId
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 2864
    global.get $tests/animal-nft.test/owner
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|1 (type 1)
    i32.const 8304
    i32.load
    i32.const 3696
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 8336
    i32.const 0
    i32.const 9744
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 9776
    i32.const 0
    i32.const 10144
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 10176
    i32.const 0
    i32.const 10336
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 10368
    i32.const 0
    i32.const 10528
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 10560
    i32.const 0
    i32.const 10672
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 10704
    i32.const 0
    i32.const 10896
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 10928
    i32.const 0
    i32.const 11072
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 11104
    i32.const 0
    i32.const 11264
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 11296
    i32.const 0
    i32.const 12112
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $start:tests/animal-nft.test~anonymous|2~anonymous|0 (type 1)
    global.get $tests/animal-nft.test/newTransferEvent
    call $src/animal-nft/handleTransfer)
  (func $~lib/matchstick-as/assembly/log/format (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 4752
    local.set 4
    i32.const 2220
    i32.load
    i32.const 1
    i32.shr_u
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 5
        local.get 3
        i32.const 1
        i32.sub
        i32.lt_s
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 2220
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 5
            i32.const 1
            i32.shl
            i32.const 2224
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 2
          i32.const 2220
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 2
            i32.const 1
            i32.shl
            i32.const 2224
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 1
          local.get 0
          i32.load offset=12
          i32.ge_s
          if (result i32)  ;; label = @4
            i32.const 7952
            i32.const 2224
            call $~lib/string/String#concat
            i32.const 12592
            i32.const 48
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 1
            local.tee 2
            i32.const 1
            i32.add
            local.set 1
            local.get 4
            local.get 0
            local.get 2
            call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
            call $~lib/string/String#concat
            local.set 4
            local.get 5
            i32.const 1
            i32.add
          end
          local.set 5
        else
          local.get 4
          i32.const 2224
          local.get 5
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func $src/animal-nft/handlenftMinted (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i64)
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 11376
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    if  ;; label = @1
      local.get 0
      i32.load
      local.set 3
      block (result i32)  ;; label = @2
        i32.const 8
        i32.const 49
        call $~lib/rt/stub/__new
        local.tee 1
        i32.eqz
        if  ;; label = @3
          i32.const 8
          i32.const 50
          call $~lib/rt/stub/__new
          local.set 1
        end
        local.get 1
      end
      i32.const 0
      i32.store
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      i32.const 12848
      i32.store
      local.get 1
      local.get 3
      i32.store offset=4
      i32.const 4
      i32.const 48
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.load
      i32.load offset=24
      i32.const 0
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
      local.set 4
      i32.const 1
      i32.const 47
      i32.const 0
      call $~lib/rt/__newArray
      local.tee 3
      i32.load offset=4
      drop
      local.get 4
      i64.extend_i32_u
      local.set 6
      i32.const 16
      i32.const 20
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 4
      i32.store
      local.get 4
      local.get 6
      i64.store offset=8
      local.get 3
      i32.load offset=4
      local.get 4
      i32.store
      local.get 1
      i32.load
      local.set 4
      local.get 1
      i32.load offset=4
      local.set 5
      i32.const 20
      i32.const 51
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 0
      i32.store offset=16
      local.get 1
      local.get 4
      i32.store
      local.get 1
      local.get 5
      i32.store offset=4
      local.get 1
      i32.const 12400
      i32.store offset=8
      local.get 1
      i32.const 12448
      i32.store offset=12
      local.get 1
      local.get 3
      i32.store offset=16
      local.get 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 12896
        i32.const 13088
        call $~lib/string/String#concat
        i32.const 12400
        call $~lib/string/String#concat
        i32.const 13152
        call $~lib/string/String#concat
        i32.const 2992
        i32.const 681
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      i32.const 0
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      local.tee 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 13248
        i32.const 2992
        i32.const 91
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 7
      local.get 1
      i64.load offset=8
      i32.wrap_i64
      local.tee 4
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee 1
      local.get 1
      i32.const 7
      i32.gt_s
      select
      local.set 3
      block  ;; label = @2
        local.get 1
        local.get 3
        i32.sub
        local.tee 1
        i32.const 0
        i32.le_s
        if  ;; label = @3
          i32.const 4752
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 1
        i32.shl
        local.tee 5
        i32.const 1
        call $~lib/rt/stub/__new
        local.tee 1
        local.get 4
        local.get 3
        i32.const 1
        i32.shl
        i32.add
        local.get 5
        call $~lib/memory/memory.copy
      end
      local.get 1
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
      else
        i32.const 0
      end
      if  ;; label = @2
        local.get 1
        i32.eqz
        if  ;; label = @3
          i32.const 13392
          i32.const 4464
          i32.const 534
          i32.const 53
          call $~lib/builtins/abort
          unreachable
        end
        local.get 1
        i64.extend_i32_u
        local.set 6
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 0
        i32.store
        local.get 3
        local.get 6
        i64.store offset=8
        local.get 2
        i32.const 13344
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      else
        local.get 2
        i32.const 13344
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
      end
      local.get 1
      call $generated/templates/nftMetadata.create
      local.get 2
      call $generated/schema/animalNft#save
    end
    local.get 0
    i32.load offset=20
    i32.load
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    call $~lib/@graphprotocol/graph-ts/common/collections/Bytes#concatI32
    local.set 2
    i32.const 4
    i32.const 52
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 1
    local.get 2
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 6
    i64.store offset=8
    local.get 1
    i32.const 4160
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/Transfer#set:tokenId
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 6
    i32.store
    local.get 2
    local.get 6
    i64.store offset=8
    local.get 1
    i32.const 3344
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    local.tee 2
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 2
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 9104
      i32.const 2992
      i32.const 74
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    i64.load offset=8
    i32.wrap_i64
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#toI32
    i64.extend_i32_s
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 1
    i32.store
    local.get 2
    local.get 6
    i64.store offset=8
    local.get 1
    i32.const 3376
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/nftRequested#set:requestId
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $generated/schema/nftRequested#set:blockNumber
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/nftRequested#set:blockTimestamp
    local.get 1
    local.get 0
    i32.load offset=20
    i32.load
    call $generated/schema/nftRequested#set:transactionHash
    local.get 1
    i32.const 4160
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 13456
      i32.const 4464
      i32.const 667
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 13732
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 13740
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 13728
        i32.const 13724
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 4752
        call $~lib/util/string/joinStringArray
        i32.const 4464
        i32.const 669
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 12352
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32 (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $start:tests/animal-nft.test~anonymous|2~anonymous|2 (type 1)
    (local i32 i32 i32 i64)
    i32.const 3488
    i32.const 1712
    global.get $~lib/matchstick-as/assembly/data_source_mock/defaultContext
    call $~lib/matchstick-as/assembly/data_source_mock/dataSourceMock.setReturnValues
    i32.const 4048
    call $~lib/matchstick-as/assembly/index/readFile
    call $src/metadata/handlenftMetadata
    global.get $tests/animal-nft.test/newTransferEvent
    i32.load
    local.set 1
    i32.const 20
    i32.const 46
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store8
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.const 47
    i32.const 12528
    call $~lib/rt/__newArray
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 12400
    i32.store offset=8
    local.get 0
    i32.const 12448
    i32.store offset=12
    i32.const 1
    i32.const 47
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    global.get $tests/animal-nft.test/tokenId
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 2
    i32.load offset=4
    local.get 1
    i32.store
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 12560
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 0
      local.get 2
      i32.store offset=16
    end
    i32.const 1
    i32.const 47
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 2
    i32.load offset=4
    drop
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 12688
    i64.store offset=8
    local.get 2
    i32.load offset=4
    local.get 1
    i32.store
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 12816
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=12
      local.get 0
      i32.load offset=16
      local.get 2
      i32.const 0
      call $~lib/matchstick-as/assembly/index/mockFunction
      local.get 0
      i32.const 1
      i32.store8
    end
    global.get $tests/animal-nft.test/newNftMintedEvent
    call $src/animal-nft/handlenftMinted
    i32.const 3840
    i32.const 3488
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.set 0
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    i32.const 3840
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 13776
      i32.const 3952
      i32.const 186
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/matchstick-as/assembly/assert/assert.assertNotNull<generated/schema/nftMetadata|null>
    i32.const 3840
    i32.const 3488
    i32.const 4320
    i32.const 13872
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    global.get $tests/animal-nft.test/newNftMintedEvent
    local.set 0
    i32.const 4
    i32.const 48
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 11376
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 0
    if  ;; label = @1
      local.get 0
      i32.const 13344
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 1
      if (result i32)  ;; label = @2
        local.get 1
        i32.load
        i32.const 5
        i32.eq
      else
        i32.const 1
      end
      if (result i32)  ;; label = @2
        i32.const 0
      else
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      end
      local.set 0
      i32.const 1
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
      local.get 0
      i32.const 0
      call $~lib/string/String.__eq
      i32.eqz
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromBoolean
      call $~lib/matchstick-as/assembly/assert/_assert.equals
      i32.eqz
      if  ;; label = @2
        i32.const 7680
        i32.const 3952
        i32.const 176
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
    end)
  (func $src/animal-nft/handleApproval (type 4) (param i32)
    (local i32 i32)
    i32.const 4
    i32.const 53
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    i32.const 11376
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    if  ;; label = @1
      i32.const 4
      i32.const 53
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 0
      i32.store
      local.get 1
      local.get 2
      i32.load
      i32.load offset=24
      i32.const 1
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
      i32.load offset=4
      call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
      call $generated/schema/animalNft#set:approved
      local.get 1
      call $generated/schema/animalNft#save
    end)
  (func $start:tests/animal-nft.test~anonymous|2~anonymous|3 (type 1)
    (local i32 i32 i32)
    global.get $tests/animal-nft.test/newApprovalEvent
    call $src/animal-nft/handleApproval
    global.get $tests/animal-nft.test/newApprovalEvent
    local.set 1
    i32.const 4
    i32.const 53
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    local.set 1
    global.get $tests/animal-nft.test/newApprovalEvent
    local.set 2
    i32.const 4
    i32.const 53
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 2
    i32.store
    i32.const 11376
    local.get 1
    i32.const 3104
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|2~anonymous|4 (type 1)
    (local i32 i32 i32)
    global.get $tests/animal-nft.test/newTransferEvent2
    call $src/animal-nft/handleTransfer
    global.get $tests/animal-nft.test/newTransferEvent2
    local.set 1
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    local.set 1
    global.get $tests/animal-nft.test/newTransferEvent2
    local.set 2
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 2
    i32.store
    i32.const 11376
    local.get 1
    i32.const 2864
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|2~anonymous|5 (type 1)
    (local i32 i32 i32)
    global.get $tests/animal-nft.test/newApprovalEvent
    call $src/animal-nft/handleApproval
    global.get $tests/animal-nft.test/newTransferEvent2
    call $src/animal-nft/handleTransfer
    global.get $tests/animal-nft.test/newTransferEvent2
    local.set 1
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    local.set 1
    global.get $tests/animal-nft.test/newTransferEvent2
    local.set 2
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 2
    i32.store
    i32.const 11376
    local.get 1
    i32.const 2864
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    global.get $tests/animal-nft.test/newTransferEvent2
    local.set 1
    i32.const 4
    i32.const 43
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i32.store
    i32.const 11376
    local.get 0
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/common/collections/TypedMapEntry<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 3104
    i32.const 1360
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/animal-nft.test~anonymous|2 (type 1)
    i32.const 12240
    i32.load
    i32.const 12272
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 12320
    i32.load
    i32.const 3696
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 12352
    i32.const 0
    i32.const 14304
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 14336
    i32.const 0
    i32.const 14384
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 14416
    i32.const 0
    i32.const 14496
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 14528
    i32.const 0
    i32.const 14624
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $start:tests/animal-nft.test (type 1)
    (local i32 i32 i32 i32 i32 i32 i64)
    i32.const 14780
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    global.set $~lib/matchstick-as/assembly/data_source_mock/defaultContext
    i32.const 1856
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1856
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/defaults/defaultAddress
    global.get $~lib/matchstick-as/defaults/defaultAddress
    global.set $~lib/matchstick-as/defaults/defaultAddressBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultBigInt
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultIntBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $tests/animal-nft.test/tokenId
    i32.const 2384
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/animal-nft.test/owner
    i32.const 2496
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/animal-nft.test/operator1
    i32.const 2608
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/animal-nft.test/operator2
    i32.const 100
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $tests/animal-nft.test/requestId
    i32.const 0
    i32.const 20
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 20
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    global.set $tests/animal-nft.test/from
    i32.const 2720
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/animal-nft.test/to
    global.get $tests/animal-nft.test/owner
    local.set 0
    global.get $tests/animal-nft.test/operator1
    local.set 1
    global.get $tests/animal-nft.test/tokenId
    local.set 3
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    local.set 4
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 5
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 2864
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 4
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 4
    local.get 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3104
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 4
    local.get 3
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3152
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 4
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    global.set $tests/animal-nft.test/newApprovalEvent
    global.get $tests/animal-nft.test/owner
    global.get $tests/animal-nft.test/operator1
    i32.const 1
    call $tests/animal-nft-utils/createApprovalForAllEvent
    global.set $tests/animal-nft.test/newTrueApprovalForAllEvent1
    global.get $tests/animal-nft.test/owner
    global.get $tests/animal-nft.test/operator2
    i32.const 1
    call $tests/animal-nft-utils/createApprovalForAllEvent
    global.set $tests/animal-nft.test/newTrueApprovalForAllEvent2
    global.get $tests/animal-nft.test/owner
    global.get $tests/animal-nft.test/operator1
    i32.const 0
    call $tests/animal-nft-utils/createApprovalForAllEvent
    global.set $tests/animal-nft.test/newFalseApprovalForAllEvent
    global.get $tests/animal-nft.test/requestId
    local.set 0
    global.get $tests/animal-nft.test/owner
    local.set 3
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    local.set 4
    local.get 0
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3248
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 4
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 1
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3296
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    global.set $tests/animal-nft.test/newNftRequestedEvent
    global.get $tests/animal-nft.test/tokenId
    local.set 0
    global.get $tests/animal-nft.test/owner
    local.set 3
    global.get $tests/animal-nft.test/requestId
    local.set 4
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    local.set 5
    local.get 0
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3152
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 1
    local.get 3
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 3
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3344
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 3
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3376
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 3
    local.get 4
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 20
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 3248
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    global.set $tests/animal-nft.test/newNftMintedEvent
    global.get $tests/animal-nft.test/from
    global.get $tests/animal-nft.test/owner
    global.get $tests/animal-nft.test/tokenId
    call $tests/animal-nft-utils/createTransferEvent
    global.set $tests/animal-nft.test/newTransferEvent
    global.get $tests/animal-nft.test/owner
    global.get $tests/animal-nft.test/to
    global.get $tests/animal-nft.test/tokenId
    call $tests/animal-nft-utils/createTransferEvent
    global.set $tests/animal-nft.test/newTransferEvent2
    i32.const 3600
    i32.const 8176
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 8208
    i32.const 12144
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 12176
    i32.const 14656
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
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
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                block  ;; label = @135
                                                                                                                                                                                                                                                                                  block  ;; label = @136
                                                                                                                                                                                                                                                                                    block  ;; label = @137
                                                                                                                                                                                                                                                                                      block  ;; label = @138
                                                                                                                                                                                                                                                                                        block  ;; label = @139
                                                                                                                                                                                                                                                                                          block  ;; label = @140
                                                                                                                                                                                                                                                                                            block  ;; label = @141
                                                                                                                                                                                                                                                                                              block  ;; label = @142
                                                                                                                                                                                                                                                                                                block  ;; label = @143
                                                                                                                                                                                                                                                                                                  block  ;; label = @144
                                                                                                                                                                                                                                                                                                    block  ;; label = @145
                                                                                                                                                                                                                                                                                                      block  ;; label = @146
                                                                                                                                                                                                                                                                                                        block  ;; label = @147
                                                                                                                                                                                                                                                                                                          block  ;; label = @148
                                                                                                                                                                                                                                                                                                            block  ;; label = @149
                                                                                                                                                                                                                                                                                                              block  ;; label = @150
                                                                                                                                                                                                                                                                                                                block  ;; label = @151
                                                                                                                                                                                                                                                                                                                  block  ;; label = @152
                                                                                                                                                                                                                                                                                                                    block  ;; label = @153
                                                                                                                                                                                                                                                                                                                      block  ;; label = @154
                                                                                                                                                                                                                                                                                                                        block  ;; label = @155
                                                                                                                                                                                                                                                                                                                          block  ;; label = @156
                                                                                                                                                                                                                                                                                                                            block  ;; label = @157
                                                                                                                                                                                                                                                                                                                              block  ;; label = @158
                                                                                                                                                                                                                                                                                                                                block  ;; label = @159
                                                                                                                                                                                                                                                                                                                                  block  ;; label = @160
                                                                                                                                                                                                                                                                                                                                    block  ;; label = @161
                                                                                                                                                                                                                                                                                                                                      block  ;; label = @162
                                                                                                                                                                                                                                                                                                                                        block  ;; label = @163
                                                                                                                                                                                                                                                                                                                                          block  ;; label = @164
                                                                                                                                                                                                                                                                                                                                            block  ;; label = @165
                                                                                                                                                                                                                                                                                                                                              block  ;; label = @166
                                                                                                                                                                                                                                                                                                                                                local.get 0
                                                                                                                                                                                                                                                                                                                                                if  ;; label = @167
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 1 (;@166;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 2 (;@165;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 3 (;@164;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 4
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 4 (;@163;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 5
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 5 (;@162;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 6
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 6 (;@161;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 7
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 7 (;@160;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 8
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 8 (;@159;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 9
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 9 (;@158;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 10
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 10 (;@157;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 11
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 11 (;@156;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 12
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 12 (;@155;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 13
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 13 (;@154;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 14
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 14 (;@153;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 15
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 15 (;@152;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 16
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 16 (;@151;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 17
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 17 (;@150;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 18
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 18 (;@149;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 19
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 19 (;@148;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 20
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 20 (;@147;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 21
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 21 (;@146;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 27
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 22 (;@145;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 28
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 23 (;@144;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 29
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 24 (;@143;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 22
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 25 (;@142;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 23
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 26 (;@141;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 24
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 27 (;@140;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 25
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 28 (;@139;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 26
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 29 (;@138;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 30
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 30 (;@137;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 31
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 31 (;@136;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 32
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 32 (;@135;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 33
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 33 (;@134;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 34
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 34 (;@133;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 35
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 35 (;@132;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 36
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 36 (;@131;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 37
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 37 (;@130;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 38
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 38 (;@129;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 39
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 39 (;@128;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 40
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 40 (;@127;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 41
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 41 (;@126;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 42
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 42 (;@125;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 43
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 43 (;@124;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 44
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 44 (;@123;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 45
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 45 (;@122;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 46
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 46 (;@121;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 47
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 47 (;@120;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 48
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 48 (;@119;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 49
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 49 (;@118;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 50
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 50 (;@117;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 51
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 51 (;@116;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 52
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 52 (;@115;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 53
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 53 (;@114;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 54
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 54 (;@113;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 55
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 55 (;@112;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 56
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 56 (;@111;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 57
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 57 (;@110;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 58
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 58 (;@109;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 59
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 59 (;@108;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 60
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 60 (;@107;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 61
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 61 (;@106;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 63
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 62 (;@105;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 64
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 63 (;@104;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 65
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 64 (;@103;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 66
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 65 (;@102;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 67
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 66 (;@101;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 68
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 67 (;@100;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 69
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 68 (;@99;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 70
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 69 (;@98;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 71
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 70 (;@97;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 72
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 71 (;@96;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 73
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 72 (;@95;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 74
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 73 (;@94;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 75
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 74 (;@93;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 76
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 75 (;@92;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 77
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 76 (;@91;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 78
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 77 (;@90;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 79
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 78 (;@89;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 80
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 79 (;@88;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 81
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 80 (;@87;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 82
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 81 (;@86;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 83
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 82 (;@85;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 84
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 83 (;@84;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 85
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 84 (;@83;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 86
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 85 (;@82;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1000
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 86 (;@81;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1001
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 87 (;@80;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1002
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 88 (;@79;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1003
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 89 (;@78;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 90 (;@77;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 91 (;@76;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 92 (;@75;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 93 (;@74;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 94 (;@73;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1505
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 95 (;@72;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1506
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 96 (;@71;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1507
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 97 (;@70;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1508
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 98 (;@69;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1509
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 99 (;@68;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1510
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 100 (;@67;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1511
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 101 (;@66;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1512
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 102 (;@65;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1513
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 103 (;@64;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1514
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 104 (;@63;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1515
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 105 (;@62;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1516
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 106 (;@61;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1517
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 107 (;@60;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1518
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 108 (;@59;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1519
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 109 (;@58;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1520
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 110 (;@57;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1521
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 111 (;@56;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1522
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 112 (;@55;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1523
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 113 (;@54;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1524
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 114 (;@53;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1525
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 115 (;@52;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1526
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 116 (;@51;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1527
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 117 (;@50;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1528
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 118 (;@49;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1529
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 119 (;@48;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1530
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 120 (;@47;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1531
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 121 (;@46;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1532
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 122 (;@45;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1533
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 123 (;@44;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1534
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 124 (;@43;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1535
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 125 (;@42;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1536
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 126 (;@41;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1537
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 127 (;@40;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1538
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 128 (;@39;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1539
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 129 (;@38;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1540
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 130 (;@37;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1541
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 131 (;@36;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1542
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 132 (;@35;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1543
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 133 (;@34;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1544
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 134 (;@33;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1545
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 135 (;@32;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1546
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 136 (;@31;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1547
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 137 (;@30;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1548
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 138 (;@29;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1549
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 139 (;@28;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1550
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 140 (;@27;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1551
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 141 (;@26;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1552
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 142 (;@25;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1553
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 143 (;@24;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1554
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 144 (;@23;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1555
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 145 (;@22;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1556
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 146 (;@21;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1557
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 147 (;@20;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1558
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 148 (;@19;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1559
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 149 (;@18;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1560
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 150 (;@17;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1561
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 151 (;@16;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1562
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 152 (;@15;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 1563
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 153 (;@14;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 154 (;@13;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 155 (;@12;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 156 (;@11;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 157 (;@10;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 158 (;@9;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2505
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 159 (;@8;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 2506
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 160 (;@7;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3500
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 161 (;@6;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3501
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 162 (;@5;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3502
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 163 (;@4;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3503
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 164 (;@3;)
                                                                                                                                                                                                                                                                                                                                                  local.get 0
                                                                                                                                                                                                                                                                                                                                                  i32.const 3504
                                                                                                                                                                                                                                                                                                                                                  i32.eq
                                                                                                                                                                                                                                                                                                                                                  br_if 165 (;@2;)
                                                                                                                                                                                                                                                                                                                                                  br 166 (;@1;)
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                i32.const 1
                                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                              i32.const 0
                                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                            i32.const 54
                                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                          i32.const 55
                                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                        i32.const 56
                                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                      i32.const 57
                                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                    i32.const 13
                                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                  i32.const 58
                                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                i32.const 59
                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                              i32.const 60
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 61
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 62
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 63
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 65
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 66
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 68
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 70
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 72
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 3
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 74
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 76
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 81
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 82
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 83
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 84
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 85
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 73
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 89
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 90
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 91
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 67
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 69
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 71
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 92
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 77
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 97
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 78
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 97
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 98
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 101
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 103
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 104
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 105
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 106
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 107
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 108
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 109
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 27
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 110
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 111
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 112
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 113
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 115
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 95
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 117
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 118
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 123
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 125
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 127
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 129
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 130
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 116
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 122
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 126
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 131
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 132
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 130
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 114
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 133
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 134
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 135
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 136
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 137
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 138
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 140
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 141
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 142
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 143
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 119
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 144
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 124
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 145
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 121
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 128
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 146
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 147
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 93
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 94
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 66
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 96
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 148
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 149
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 95
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 151
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 154
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 158
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 157
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 174
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 179
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 181
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 189
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 173
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 191
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 185
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 192
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 162
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 27
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 197
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 150
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 169
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 152
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 178
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 168
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 196
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 160
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 199
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 155
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 156
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 202
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 161
                                                                                                  return
                                                                                                end
                                                                                                i32.const 159
                                                                                                return
                                                                                              end
                                                                                              i32.const 193
                                                                                              return
                                                                                            end
                                                                                            i32.const 198
                                                                                            return
                                                                                          end
                                                                                          i32.const 186
                                                                                          return
                                                                                        end
                                                                                        i32.const 167
                                                                                        return
                                                                                      end
                                                                                      i32.const 203
                                                                                      return
                                                                                    end
                                                                                    i32.const 165
                                                                                    return
                                                                                  end
                                                                                  i32.const 164
                                                                                  return
                                                                                end
                                                                                i32.const 175
                                                                                return
                                                                              end
                                                                              i32.const 177
                                                                              return
                                                                            end
                                                                            i32.const 176
                                                                            return
                                                                          end
                                                                          i32.const 163
                                                                          return
                                                                        end
                                                                        i32.const 172
                                                                        return
                                                                      end
                                                                      i32.const 194
                                                                      return
                                                                    end
                                                                    i32.const 188
                                                                    return
                                                                  end
                                                                  i32.const 195
                                                                  return
                                                                end
                                                                i32.const 27
                                                                return
                                                              end
                                                              i32.const 166
                                                              return
                                                            end
                                                            i32.const 27
                                                            return
                                                          end
                                                          i32.const 180
                                                          return
                                                        end
                                                        i32.const 153
                                                        return
                                                      end
                                                      i32.const 187
                                                      return
                                                    end
                                                    i32.const 205
                                                    return
                                                  end
                                                  i32.const 183
                                                  return
                                                end
                                                i32.const 184
                                                return
                                              end
                                              i32.const 182
                                              return
                                            end
                                            i32.const 171
                                            return
                                          end
                                          i32.const 200
                                          return
                                        end
                                        i32.const 170
                                        return
                                      end
                                      i32.const 206
                                      return
                                    end
                                    i32.const 190
                                    return
                                  end
                                  i32.const 201
                                  return
                                end
                                i32.const 207
                                return
                              end
                              i32.const 204
                              return
                            end
                            i32.const 208
                            return
                          end
                          i32.const 211
                          return
                        end
                        i32.const 209
                        return
                      end
                      i32.const 210
                      return
                    end
                    i32.const 212
                    return
                  end
                  i32.const 213
                  return
                end
                i32.const 214
                return
              end
              i32.const 215
              return
            end
            i32.const 216
            return
          end
          i32.const 27
          return
        end
        i32.const 217
        return
      end
      i32.const 95
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 1)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    call $start:tests/animal-nft.test
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 23 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/assembly/data_source_mock/defaultContext (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/tokenId (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/owner (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/operator1 (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/operator2 (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/requestId (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/from (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/to (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newApprovalEvent (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newTrueApprovalForAllEvent1 (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newTrueApprovalForAllEvent2 (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newFalseApprovalForAllEvent (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newNftRequestedEvent (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newNftMintedEvent (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newTransferEvent (mut i32) (i32.const 0))
  (global $tests/animal-nft.test/newTransferEvent2 (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TransactionReceipt i32 (i32.const 1000))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Log i32 (i32.const 1001))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayH256 i32 (i32.const 1002))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayLog i32 (i32.const 1003))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAny i32 (i32.const 1500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAnyArray i32 (i32.const 1501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBytesArray i32 (i32.const 1502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoinArray i32 (i32.const 1503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSigArray i32 (i32.const 1504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventArray i32 (i32.const 1505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttributeArray i32 (i32.const 1506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceArray i32 (i32.const 1507))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoArray i32 (i32.const 1508))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfoArray i32 (i32.const 1509))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResultArray i32 (i32.const 1510))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorArray i32 (i32.const 1511))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdateArray i32 (i32.const 1512))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAuthInfo i32 (i32.const 1513))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlock i32 (i32.const 1514))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockId i32 (i32.const 1515))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockIdFlagEnum i32 (i32.const 1516))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockParams i32 (i32.const 1517))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoin i32 (i32.const 1518))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommit i32 (i32.const 1519))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSig i32 (i32.const 1520))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCompactBitArray i32 (i32.const 1521))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensus i32 (i32.const 1522))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensusParams i32 (i32.const 1523))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuplicateVoteEvidence i32 (i32.const 1524))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuration i32 (i32.const 1525))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvent i32 (i32.const 1526))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttribute i32 (i32.const 1527))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventData i32 (i32.const 1528))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventVote i32 (i32.const 1529))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidence i32 (i32.const 1530))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceList i32 (i32.const 1531))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceParams i32 (i32.const 1532))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosFee i32 (i32.const 1533))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeader i32 (i32.const 1534))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeaderOnlyBlock i32 (i32.const 1535))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightBlock i32 (i32.const 1536))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightClientAttackEvidence i32 (i32.const 1537))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfo i32 (i32.const 1538))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoMulti i32 (i32.const 1539))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoSingle i32 (i32.const 1540))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPartSetHeader i32 (i32.const 1541))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPublicKey i32 (i32.const 1542))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseBeginBlock i32 (i32.const 1543))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseDeliverTx i32 (i32.const 1544))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseEndBlock i32 (i32.const 1545))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignModeEnum i32 (i32.const 1546))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedHeader i32 (i32.const 1547))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedMsgTypeEnum i32 (i32.const 1548))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfo i32 (i32.const 1549))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTimestamp i32 (i32.const 1550))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTip i32 (i32.const 1551))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionData i32 (i32.const 1552))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTx i32 (i32.const 1553))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxBody i32 (i32.const 1554))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResult i32 (i32.const 1555))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidator i32 (i32.const 1556))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorParams i32 (i32.const 1557))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSet i32 (i32.const 1558))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSetUpdates i32 (i32.const 1559))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdate i32 (i32.const 1560))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosVersionParams i32 (i32.const 1561))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosMessageData i32 (i32.const 1562))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionContext i32 (i32.const 1563))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveBlock i32 (i32.const 2500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveProofOfAccess i32 (i32.const 2501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTag i32 (i32.const 2502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTagArray i32 (i32.const 2503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransaction i32 (i32.const 2504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionArray i32 (i32.const 2505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionWithBlockPtr i32 (i32.const 2506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetBlock i32 (i32.const 3500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetTransaction i32 (i32.const 3501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetTransactionTypeEnum i32 (i32.const 3502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetEvent i32 (i32.const 3503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StarknetArrayBytes i32 (i32.const 3504))
  (global $~started (mut i32) (i32.const 0))
  (export "handlenftMetadata" (func $src/metadata/handlenftMetadata))
  (export "handlenftMinted" (func $src/animal-nft/handlenftMinted))
  (export "handleApproval" (func $src/animal-nft/handleApproval))
  (export "handleApprovalForAll" (func $src/animal-nft/handleApprovalForAll))
  (export "handleTransfer" (func $src/animal-nft/handleTransfer))
  (export "handlenftRequested" (func $src/animal-nft/handlenftRequested))
  (export "TypeId.String" (global 21))
  (export "TypeId.ArrayBuffer" (global 22))
  (export "TypeId.Int8Array" (global 23))
  (export "TypeId.Int16Array" (global 24))
  (export "TypeId.Int32Array" (global 25))
  (export "TypeId.Int64Array" (global 26))
  (export "TypeId.Uint8Array" (global 27))
  (export "TypeId.Uint16Array" (global 28))
  (export "TypeId.Uint32Array" (global 29))
  (export "TypeId.Uint64Array" (global 30))
  (export "TypeId.Float32Array" (global 31))
  (export "TypeId.Float64Array" (global 32))
  (export "TypeId.BigDecimal" (global 33))
  (export "TypeId.ArrayBool" (global 34))
  (export "TypeId.ArrayUint8Array" (global 35))
  (export "TypeId.ArrayEthereumValue" (global 36))
  (export "TypeId.ArrayStoreValue" (global 37))
  (export "TypeId.ArrayJsonValue" (global 38))
  (export "TypeId.ArrayString" (global 39))
  (export "TypeId.ArrayEventParam" (global 40))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 41))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 42))
  (export "TypeId.SmartContractCall" (global 43))
  (export "TypeId.EventParam" (global 44))
  (export "TypeId.EthereumTransaction" (global 45))
  (export "TypeId.EthereumBlock" (global 46))
  (export "TypeId.EthereumCall" (global 47))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 48))
  (export "TypeId.WrappedBool" (global 49))
  (export "TypeId.WrappedJsonValue" (global 50))
  (export "TypeId.EthereumValue" (global 51))
  (export "TypeId.StoreValue" (global 52))
  (export "TypeId.JsonValue" (global 53))
  (export "TypeId.EthereumEvent" (global 54))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 55))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 56))
  (export "TypeId.TypedMapStringStoreValue" (global 57))
  (export "TypeId.TypedMapStringJsonValue" (global 58))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 59))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 60))
  (export "TypeId.ResultJsonValueBool" (global 61))
  (export "TypeId.ArrayU8" (global 62))
  (export "TypeId.ArrayU16" (global 63))
  (export "TypeId.ArrayU32" (global 64))
  (export "TypeId.ArrayU64" (global 65))
  (export "TypeId.ArrayI8" (global 66))
  (export "TypeId.ArrayI16" (global 67))
  (export "TypeId.ArrayI32" (global 68))
  (export "TypeId.ArrayI64" (global 69))
  (export "TypeId.ArrayF32" (global 70))
  (export "TypeId.ArrayF64" (global 71))
  (export "TypeId.ArrayBigDecimal" (global 72))
  (export "TypeId.NearArrayDataReceiver" (global 73))
  (export "TypeId.NearArrayCryptoHash" (global 74))
  (export "TypeId.NearArrayActionValue" (global 75))
  (export "TypeId.NearMerklePath" (global 76))
  (export "TypeId.NearArrayValidatorStake" (global 77))
  (export "TypeId.NearArraySlashedValidator" (global 78))
  (export "TypeId.NearArraySignature" (global 79))
  (export "TypeId.NearArrayChunkHeader" (global 80))
  (export "TypeId.NearAccessKeyPermissionValue" (global 81))
  (export "TypeId.NearActionValue" (global 82))
  (export "TypeId.NearDirection" (global 83))
  (export "TypeId.NearPublicKey" (global 84))
  (export "TypeId.NearSignature" (global 85))
  (export "TypeId.NearFunctionCallPermission" (global 86))
  (export "TypeId.NearFullAccessPermission" (global 87))
  (export "TypeId.NearAccessKey" (global 88))
  (export "TypeId.NearDataReceiver" (global 89))
  (export "TypeId.NearCreateAccountAction" (global 90))
  (export "TypeId.NearDeployContractAction" (global 91))
  (export "TypeId.NearFunctionCallAction" (global 92))
  (export "TypeId.NearTransferAction" (global 93))
  (export "TypeId.NearStakeAction" (global 94))
  (export "TypeId.NearAddKeyAction" (global 95))
  (export "TypeId.NearDeleteKeyAction" (global 96))
  (export "TypeId.NearDeleteAccountAction" (global 97))
  (export "TypeId.NearActionReceipt" (global 98))
  (export "TypeId.NearSuccessStatus" (global 99))
  (export "TypeId.NearMerklePathItem" (global 100))
  (export "TypeId.NearExecutionOutcome" (global 101))
  (export "TypeId.NearSlashedValidator" (global 102))
  (export "TypeId.NearBlockHeader" (global 103))
  (export "TypeId.NearValidatorStake" (global 104))
  (export "TypeId.NearChunkHeader" (global 105))
  (export "TypeId.NearBlock" (global 106))
  (export "TypeId.NearReceiptWithOutcome" (global 107))
  (export "TypeId.TransactionReceipt" (global 108))
  (export "TypeId.Log" (global 109))
  (export "TypeId.ArrayH256" (global 110))
  (export "TypeId.ArrayLog" (global 111))
  (export "TypeId.CosmosAny" (global 112))
  (export "TypeId.CosmosAnyArray" (global 113))
  (export "TypeId.CosmosBytesArray" (global 114))
  (export "TypeId.CosmosCoinArray" (global 115))
  (export "TypeId.CosmosCommitSigArray" (global 116))
  (export "TypeId.CosmosEventArray" (global 117))
  (export "TypeId.CosmosEventAttributeArray" (global 118))
  (export "TypeId.CosmosEvidenceArray" (global 119))
  (export "TypeId.CosmosModeInfoArray" (global 120))
  (export "TypeId.CosmosSignerInfoArray" (global 121))
  (export "TypeId.CosmosTxResultArray" (global 122))
  (export "TypeId.CosmosValidatorArray" (global 123))
  (export "TypeId.CosmosValidatorUpdateArray" (global 124))
  (export "TypeId.CosmosAuthInfo" (global 125))
  (export "TypeId.CosmosBlock" (global 126))
  (export "TypeId.CosmosBlockId" (global 127))
  (export "TypeId.CosmosBlockIdFlagEnum" (global 128))
  (export "TypeId.CosmosBlockParams" (global 129))
  (export "TypeId.CosmosCoin" (global 130))
  (export "TypeId.CosmosCommit" (global 131))
  (export "TypeId.CosmosCommitSig" (global 132))
  (export "TypeId.CosmosCompactBitArray" (global 133))
  (export "TypeId.CosmosConsensus" (global 134))
  (export "TypeId.CosmosConsensusParams" (global 135))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 136))
  (export "TypeId.CosmosDuration" (global 137))
  (export "TypeId.CosmosEvent" (global 138))
  (export "TypeId.CosmosEventAttribute" (global 139))
  (export "TypeId.CosmosEventData" (global 140))
  (export "TypeId.CosmosEventVote" (global 141))
  (export "TypeId.CosmosEvidence" (global 142))
  (export "TypeId.CosmosEvidenceList" (global 143))
  (export "TypeId.CosmosEvidenceParams" (global 144))
  (export "TypeId.CosmosFee" (global 145))
  (export "TypeId.CosmosHeader" (global 146))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 147))
  (export "TypeId.CosmosLightBlock" (global 148))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 149))
  (export "TypeId.CosmosModeInfo" (global 150))
  (export "TypeId.CosmosModeInfoMulti" (global 151))
  (export "TypeId.CosmosModeInfoSingle" (global 152))
  (export "TypeId.CosmosPartSetHeader" (global 153))
  (export "TypeId.CosmosPublicKey" (global 154))
  (export "TypeId.CosmosResponseBeginBlock" (global 155))
  (export "TypeId.CosmosResponseDeliverTx" (global 156))
  (export "TypeId.CosmosResponseEndBlock" (global 157))
  (export "TypeId.CosmosSignModeEnum" (global 158))
  (export "TypeId.CosmosSignedHeader" (global 159))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 160))
  (export "TypeId.CosmosSignerInfo" (global 161))
  (export "TypeId.CosmosTimestamp" (global 162))
  (export "TypeId.CosmosTip" (global 163))
  (export "TypeId.CosmosTransactionData" (global 164))
  (export "TypeId.CosmosTx" (global 165))
  (export "TypeId.CosmosTxBody" (global 166))
  (export "TypeId.CosmosTxResult" (global 167))
  (export "TypeId.CosmosValidator" (global 168))
  (export "TypeId.CosmosValidatorParams" (global 169))
  (export "TypeId.CosmosValidatorSet" (global 170))
  (export "TypeId.CosmosValidatorSetUpdates" (global 171))
  (export "TypeId.CosmosValidatorUpdate" (global 172))
  (export "TypeId.CosmosVersionParams" (global 173))
  (export "TypeId.CosmosMessageData" (global 174))
  (export "TypeId.CosmosTransactionContext" (global 175))
  (export "TypeId.ArweaveBlock" (global 176))
  (export "TypeId.ArweaveProofOfAccess" (global 177))
  (export "TypeId.ArweaveTag" (global 178))
  (export "TypeId.ArweaveTagArray" (global 179))
  (export "TypeId.ArweaveTransaction" (global 180))
  (export "TypeId.ArweaveTransactionArray" (global 181))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 182))
  (export "TypeId.StarknetBlock" (global 183))
  (export "TypeId.StarknetTransaction" (global 184))
  (export "TypeId.StarknetTransactionTypeEnum" (global 185))
  (export "TypeId.StarknetEvent" (global 186))
  (export "TypeId.StarknetArrayBytes" (global 187))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/animal-nft.test~anonymous|0~anonymous|0 $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 $start:tests/animal-nft.test~anonymous|0~anonymous|1 $start:tests/animal-nft.test~anonymous|0 $start:tests/animal-nft.test~anonymous|0~anonymous|0 $start:tests/animal-nft.test~anonymous|1~anonymous|1 $start:tests/animal-nft.test~anonymous|1~anonymous|2 $start:tests/animal-nft.test~anonymous|1~anonymous|3 $start:tests/animal-nft.test~anonymous|1~anonymous|4 $start:tests/animal-nft.test~anonymous|1~anonymous|5 $start:tests/animal-nft.test~anonymous|1~anonymous|6 $start:tests/animal-nft.test~anonymous|1~anonymous|7 $start:tests/animal-nft.test~anonymous|1~anonymous|8 $start:tests/animal-nft.test~anonymous|1~anonymous|9 $start:tests/animal-nft.test~anonymous|1 $start:tests/animal-nft.test~anonymous|2~anonymous|0 $start:tests/animal-nft.test~anonymous|0~anonymous|0 $start:tests/animal-nft.test~anonymous|2~anonymous|2 $start:tests/animal-nft.test~anonymous|2~anonymous|3 $start:tests/animal-nft.test~anonymous|2~anonymous|4 $start:tests/animal-nft.test~anonymous|2~anonymous|5 $start:tests/animal-nft.test~anonymous|2)
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "\1c")
  (data (;5;) (i32.const 1176) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;6;) (i32.const 1196) "\1c")
  (data (;7;) (i32.const 1208) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;8;) (i32.const 1228) ",")
  (data (;9;) (i32.const 1240) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;10;) (i32.const 1276) "\1c")
  (data (;11;) (i32.const 1288) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;12;) (i32.const 1308) "\1c")
  (data (;13;) (i32.const 1320) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;14;) (i32.const 1340) "\1c")
  (data (;15;) (i32.const 1352) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;16;) (i32.const 1372) "\1c")
  (data (;17;) (i32.const 1384) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;18;) (i32.const 1404) "\1c")
  (data (;19;) (i32.const 1416) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;20;) (i32.const 1436) "\1c")
  (data (;21;) (i32.const 1448) "\01\00\00\00\08\00\00\00I\00n\00t\008")
  (data (;22;) (i32.const 1468) "<")
  (data (;23;) (i32.const 1484) "$\00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05\00\00\b0\05")
  (data (;24;) (i32.const 1532) ",")
  (data (;25;) (i32.const 1544) "\03\00\00\00\10\00\00\00\d0\05\00\00\d0\05\00\00$\00\00\00\09")
  (data (;26;) (i32.const 1580) "l")
  (data (;27;) (i32.const 1592) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;28;) (i32.const 1692) ",")
  (data (;29;) (i32.const 1704) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;30;) (i32.const 1740) ",")
  (data (;31;) (i32.const 1752) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;32;) (i32.const 1788) ",")
  (data (;33;) (i32.const 1800) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;34;) (i32.const 1836) "l")
  (data (;35;) (i32.const 1848) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;36;) (i32.const 1948) "<")
  (data (;37;) (i32.const 1960) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;38;) (i32.const 2012) "<")
  (data (;39;) (i32.const 2024) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;40;) (i32.const 2076) "<")
  (data (;41;) (i32.const 2088) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;42;) (i32.const 2140) "<")
  (data (;43;) (i32.const 2152) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;44;) (i32.const 2204) "\9c")
  (data (;45;) (i32.const 2216) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;46;) (i32.const 2364) "l")
  (data (;47;) (i32.const 2376) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001")
  (data (;48;) (i32.const 2476) "l")
  (data (;49;) (i32.const 2488) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002")
  (data (;50;) (i32.const 2588) "l")
  (data (;51;) (i32.const 2600) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003")
  (data (;52;) (i32.const 2700) "l")
  (data (;53;) (i32.const 2712) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004")
  (data (;54;) (i32.const 2812) "\1c")
  (data (;55;) (i32.const 2844) "\1c")
  (data (;56;) (i32.const 2856) "\01\00\00\00\0a\00\00\00o\00w\00n\00e\00r")
  (data (;57;) (i32.const 2876) "\5c")
  (data (;58;) (i32.const 2888) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;59;) (i32.const 2972) "l")
  (data (;60;) (i32.const 2984) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;61;) (i32.const 3084) ",")
  (data (;62;) (i32.const 3096) "\01\00\00\00\10\00\00\00a\00p\00p\00r\00o\00v\00e\00d")
  (data (;63;) (i32.const 3132) ",")
  (data (;64;) (i32.const 3144) "\01\00\00\00\0e\00\00\00t\00o\00k\00e\00n\00I\00d")
  (data (;65;) (i32.const 3180) ",")
  (data (;66;) (i32.const 3192) "\01\00\00\00\10\00\00\00o\00p\00e\00r\00a\00t\00o\00r")
  (data (;67;) (i32.const 3228) ",")
  (data (;68;) (i32.const 3240) "\01\00\00\00\12\00\00\00r\00e\00q\00u\00e\00s\00t\00I\00d")
  (data (;69;) (i32.const 3276) ",")
  (data (;70;) (i32.const 3288) "\01\00\00\00\12\00\00\00r\00e\00q\00u\00e\00s\00t\00e\00r")
  (data (;71;) (i32.const 3324) "\1c")
  (data (;72;) (i32.const 3336) "\01\00\00\00\0c\00\00\00m\00i\00n\00t\00e\00r")
  (data (;73;) (i32.const 3356) ",")
  (data (;74;) (i32.const 3368) "\01\00\00\00\0e\00\00\00s\00p\00e\00c\00i\00e\00s")
  (data (;75;) (i32.const 3404) "\1c")
  (data (;76;) (i32.const 3416) "\01\00\00\00\08\00\00\00f\00r\00o\00m")
  (data (;77;) (i32.const 3436) "\1c")
  (data (;78;) (i32.const 3448) "\01\00\00\00\04\00\00\00t\00o")
  (data (;79;) (i32.const 3468) "l")
  (data (;80;) (i32.const 3480) "\01\00\00\00\5c\00\00\00Q\00m\00T\00H\00T\00c\00E\00s\00u\00i\00R\00z\00p\00x\00i\00n\00E\004\00f\00k\00m\00x\00c\00p\00C\00R\00N\003\00u\00H\00r\00H\00G\00P\00V\005\00N\00j\00k\001\00w\00Q\00h\001\00E\00M")
  (data (;81;) (i32.const 3580) "<")
  (data (;82;) (i32.const 3592) "\01\00\00\00*\00\00\00t\00e\00s\00t\00 \00m\00e\00t\00a\00d\00a\00t\00a\00 \00h\00a\00n\00d\00l\00e\00r")
  (data (;83;) (i32.const 3644) "\1c")
  (data (;84;) (i32.const 3656) " \00\00\00\08\00\00\00\01")
  (data (;85;) (i32.const 3676) ",")
  (data (;86;) (i32.const 3688) "\01\00\00\00\12\00\00\00a\00f\00t\00e\00r\00E\00a\00c\00h")
  (data (;87;) (i32.const 3724) "\5c")
  (data (;88;) (i32.const 3736) "\01\00\00\00B\00\00\00t\00e\00m\00p\00l\00a\00t\00e\00 \00c\00r\00e\00a\00t\00i\00o\00n\00 \00a\00n\00d\00 \00d\00a\00t\00a\00 \00s\00a\00v\00i\00n\00g")
  (data (;89;) (i32.const 3820) ",")
  (data (;90;) (i32.const 3832) "\01\00\00\00\16\00\00\00n\00f\00t\00M\00e\00t\00a\00d\00a\00t\00a")
  (data (;91;) (i32.const 3868) "<")
  (data (;92;) (i32.const 3880) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;93;) (i32.const 3932) "\5c")
  (data (;94;) (i32.const 3944) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;95;) (i32.const 4028) "<")
  (data (;96;) (i32.const 4040) "\01\00\00\00(\00\00\00t\00e\00s\00t\00s\00/\00i\00p\00f\00s\00/\00f\00i\00s\00h\00.\00j\00s\00o\00n")
  (data (;97;) (i32.const 4092) ",")
  (data (;98;) (i32.const 4104) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
  (data (;99;) (i32.const 4140) "\1c")
  (data (;100;) (i32.const 4152) "\01\00\00\00\04\00\00\00i\00d")
  (data (;101;) (i32.const 4172) "|")
  (data (;102;) (i32.const 4184) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;103;) (i32.const 4300) "\1c")
  (data (;104;) (i32.const 4312) "\01\00\00\00\08\00\00\00j\00s\00o\00n")
  (data (;105;) (i32.const 4332) "l")
  (data (;106;) (i32.const 4344) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00n\00f\00t\00M\00e\00t\00a\00d\00a\00t\00a\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;107;) (i32.const 4444) "<")
  (data (;108;) (i32.const 4456) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;109;) (i32.const 4508) "\ac")
  (data (;110;) (i32.const 4520) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00n\00f\00t\00M\00e\00t\00a\00d\00a\00t\00a\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;111;) (i32.const 4684) ",")
  (data (;112;) (i32.const 4696) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;113;) (i32.const 4732) "\1c")
  (data (;114;) (i32.const 4744) "\01")
  (data (;115;) (i32.const 4764) ",")
  (data (;116;) (i32.const 4776) "\22\00\00\00\14\00\00\00\b0\11\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;117;) (i32.const 4812) "<")
  (data (;118;) (i32.const 4824) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;119;) (i32.const 4876) "l")
  (data (;120;) (i32.const 4888) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;121;) (i32.const 4988) "<")
  (data (;122;) (i32.const 5000) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;123;) (i32.const 5052) "|")
  (data (;124;) (i32.const 5064) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;125;) (i32.const 5180) "<")
  (data (;126;) (i32.const 5192) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;127;) (i32.const 5244) "\1c")
  (data (;128;) (i32.const 5256) "\01\00\00\00\02\00\00\000")
  (data (;129;) (i32.const 5276) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;130;) (i32.const 5676) "\1c\04")
  (data (;131;) (i32.const 5688) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;132;) (i32.const 6732) "\5c")
  (data (;133;) (i32.const 6744) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;134;) (i32.const 6828) "<")
  (data (;135;) (i32.const 6840) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\006\004\00.")
  (data (;136;) (i32.const 6892) "L")
  (data (;137;) (i32.const 6904) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;138;) (i32.const 6972) "L")
  (data (;139;) (i32.const 6984) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;140;) (i32.const 7052) "\1c")
  (data (;141;) (i32.const 7064) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;142;) (i32.const 7084) "\1c")
  (data (;143;) (i32.const 7096) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;144;) (i32.const 7116) "<")
  (data (;145;) (i32.const 7128) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;146;) (i32.const 7180) "\1c")
  (data (;147;) (i32.const 7192) "\01\00\00\00\02\00\00\00[")
  (data (;148;) (i32.const 7212) "\1c")
  (data (;149;) (i32.const 7224) "%\00\00\00\08\00\00\00\02")
  (data (;150;) (i32.const 7244) "\1c")
  (data (;151;) (i32.const 7256) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;152;) (i32.const 7276) "\1c")
  (data (;153;) (i32.const 7288) "\01\00\00\00\02\00\00\00]")
  (data (;154;) (i32.const 7308) "L")
  (data (;155;) (i32.const 7320) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;156;) (i32.const 7388) "<")
  (data (;157;) (i32.const 7400) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;158;) (i32.const 7452) "<")
  (data (;159;) (i32.const 7464) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;160;) (i32.const 7516) "\1c")
  (data (;161;) (i32.const 7528) "\01\00\00\00\02\00\00\00)")
  (data (;162;) (i32.const 7548) "\1c")
  (data (;163;) (i32.const 7560) "\22\00\00\00\0c\00\00\000\1d\00\00\00\00\00\00p\1d")
  (data (;164;) (i32.const 7580) ",")
  (data (;165;) (i32.const 7592) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;166;) (i32.const 7628) "\1c")
  (data (;167;) (i32.const 7640) "\22\00\00\00\0c\00\00\00\b0\1d\00\00\00\00\00\00p\1d")
  (data (;168;) (i32.const 7660) "\5c")
  (data (;169;) (i32.const 7672) "\01\00\00\00H\00\00\00a\00s\00s\00e\00r\00t\00.\00a\00s\00s\00e\00r\00t\00N\00o\00t\00N\00u\00l\00l\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;170;) (i32.const 7756) "l")
  (data (;171;) (i32.const 7768) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00r\00e\00t\00u\00r\00n\00 \00n\00u\00l\00l\00 \00f\00o\00r\00 \00a\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00f\00i\00e\00l\00d\00.")
  (data (;172;) (i32.const 7868) "\1c")
  (data (;173;) (i32.const 7880) "\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g")
  (data (;174;) (i32.const 7900) "\1c")
  (data (;175;) (i32.const 7932) "\5c")
  (data (;176;) (i32.const 7944) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;177;) (i32.const 8028) "\5c")
  (data (;178;) (i32.const 8040) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00i\00n\00d\00e\00x\00.\00t\00s")
  (data (;179;) (i32.const 8124) "\1c")
  (data (;180;) (i32.const 8136) " \00\00\00\08\00\00\00\03")
  (data (;181;) (i32.const 8156) "\1c")
  (data (;182;) (i32.const 8168) " \00\00\00\08\00\00\00\04")
  (data (;183;) (i32.const 8188) "\5c")
  (data (;184;) (i32.const 8200) "\01\00\00\00H\00\00\00t\00e\00s\00t\00s\00 \00b\00e\00l\00o\00w\00 \00d\00o\00n\00'\00t\00 \00n\00e\00e\00d\00 \00a\00n\00y\00t\00h\00i\00n\00g\00 \00d\00o\00n\00e")
  (data (;185;) (i32.const 8284) "\1c")
  (data (;186;) (i32.const 8296) " \00\00\00\08\00\00\00\05")
  (data (;187;) (i32.const 8316) ",")
  (data (;188;) (i32.const 8328) "\01\00\00\00\14\00\00\00n\00f\00t\00R\00e\00q\00u\00e\00s\00t")
  (data (;189;) (i32.const 8364) "\5c")
  (data (;190;) (i32.const 8376) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;191;) (i32.const 8460) ",")
  (data (;192;) (i32.const 8472) "\01\00\00\00\1a\00\00\00A\00n\00i\00m\00a\00l\00N\00f\00t\00U\00s\00e\00r")
  (data (;193;) (i32.const 8508) "l")
  (data (;194;) (i32.const 8520) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00n\00i\00m\00a\00l\00N\00f\00t\00U\00s\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;195;) (i32.const 8620) "\ac")
  (data (;196;) (i32.const 8632) "\01\00\00\00\92\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00n\00i\00m\00a\00l\00N\00f\00t\00U\00s\00e\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;197;) (i32.const 8796) ",")
  (data (;198;) (i32.const 8808) "\22\00\00\00\14\00\00\00\c0!\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;199;) (i32.const 8844) "<")
  (data (;200;) (i32.const 8856) "\01\00\00\00(\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00c\00o\00n\00v\00e\00r\00t\00i\00n\00g\00 ")
  (data (;201;) (i32.const 8908) ",")
  (data (;202;) (i32.const 8920) "\01\00\00\00\0e\00\00\00 \00t\00o\00 \00i\003\002")
  (data (;203;) (i32.const 8956) "|")
  (data (;204;) (i32.const 8968) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;205;) (i32.const 9084) "\5c")
  (data (;206;) (i32.const 9096) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;207;) (i32.const 9180) ",")
  (data (;208;) (i32.const 9192) "\01\00\00\00\16\00\00\00b\00l\00o\00c\00k\00N\00u\00m\00b\00e\00r")
  (data (;209;) (i32.const 9228) ",")
  (data (;210;) (i32.const 9240) "\01\00\00\00\1c\00\00\00b\00l\00o\00c\00k\00T\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;211;) (i32.const 9276) "<")
  (data (;212;) (i32.const 9288) "\01\00\00\00\1e\00\00\00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00H\00a\00s\00h")
  (data (;213;) (i32.const 9340) "l")
  (data (;214;) (i32.const 9352) "\01\00\00\00Z\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00n\00f\00t\00R\00e\00q\00u\00e\00s\00t\00e\00d\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;215;) (i32.const 9452) "\ac")
  (data (;216;) (i32.const 9464) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00n\00f\00t\00R\00e\00q\00u\00e\00s\00t\00e\00d\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;217;) (i32.const 9628) ",")
  (data (;218;) (i32.const 9640) "\22\00\00\00\14\00\00\00\00%\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;219;) (i32.const 9676) ",")
  (data (;220;) (i32.const 9688) "\01\00\00\00\18\00\00\00n\00f\00t\00R\00e\00q\00u\00e\00s\00t\00e\00d")
  (data (;221;) (i32.const 9724) "\1c")
  (data (;222;) (i32.const 9736) " \00\00\00\08\00\00\00\06")
  (data (;223;) (i32.const 9756) "\5c")
  (data (;224;) (i32.const 9768) "\01\00\00\00D\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00a\00d\00d\00 \00w\00i\00t\00h\00 \00n\00o\00 \00a\00c\00c\00o\00u\00n\00t")
  (data (;225;) (i32.const 9852) "\5c")
  (data (;226;) (i32.const 9864) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;227;) (i32.const 9948) ",")
  (data (;228;) (i32.const 9960) "\01\00\00\00\12\00\00\00o\00p\00e\00r\00a\00t\00o\00r\00s")
  (data (;229;) (i32.const 9996) "\1c")
  (data (;230;) (i32.const 10008) "\22\00\00\00\0c\00\00\00 \1c\00\00\00\00\00\00\80\1c")
  (data (;231;) (i32.const 10028) "\5c")
  (data (;232;) (i32.const 10040) "\01\00\00\00D\00\00\00a\00s\00s\00e\00r\00t\00.\00f\00i\00e\00l\00d\00E\00q\00u\00a\00l\00s\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;233;) (i32.const 10124) "\1c")
  (data (;234;) (i32.const 10136) " \00\00\00\08\00\00\00\07")
  (data (;235;) (i32.const 10156) "|")
  (data (;236;) (i32.const 10168) "\01\00\00\00b\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00a\00d\00d\00 \00w\00i\00t\00h\00 \00a\00c\00c\00o\00u\00n\00t\00 \00w\00i\00t\00h\00o\00u\00t\00 \00o\00p\00e\00r\00a\00t\00o\00r\00s")
  (data (;237;) (i32.const 10284) "\1c")
  (data (;238;) (i32.const 10296) "\22\00\00\00\0c\00\00\00 \1c\00\00\00\00\00\00\80\1c")
  (data (;239;) (i32.const 10316) "\1c")
  (data (;240;) (i32.const 10328) " \00\00\00\08\00\00\00\08")
  (data (;241;) (i32.const 10348) "l")
  (data (;242;) (i32.const 10360) "\01\00\00\00\5c\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00a\00d\00d\00 \00w\00i\00t\00h\00 \00a\00c\00c\00o\00u\00n\00t\00 \00w\00i\00t\00h\00 \00o\00p\00e\00r\00a\00t\00o\00r\00s")
  (data (;243;) (i32.const 10460) ",")
  (data (;244;) (i32.const 10472) "\22\00\00\00\14\00\00\00 \1c\00\00\00\00\00\00`\1c\00\00\00\00\00\00\80\1c")
  (data (;245;) (i32.const 10508) "\1c")
  (data (;246;) (i32.const 10520) " \00\00\00\08\00\00\00\09")
  (data (;247;) (i32.const 10540) "L")
  (data (;248;) (i32.const 10552) "\01\00\00\00:\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00a\00d\00d\00 \00r\00e\00p\00e\00a\00t\00e\00d\00l\00y")
  (data (;249;) (i32.const 10620) "\1c")
  (data (;250;) (i32.const 10632) "\22\00\00\00\0c\00\00\00 \1c\00\00\00\00\00\00\80\1c")
  (data (;251;) (i32.const 10652) "\1c")
  (data (;252;) (i32.const 10664) " \00\00\00\08\00\00\00\0a")
  (data (;253;) (i32.const 10684) "\5c")
  (data (;254;) (i32.const 10696) "\01\00\00\00J\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00c\00a\00n\00c\00e\00l\00 \00w\00i\00t\00h\00 \00n\00o\00 \00a\00c\00c\00o\00u\00n\00t")
  (data (;255;) (i32.const 10780) "\5c")
  (data (;256;) (i32.const 10792) "\01\00\00\00B\00\00\00a\00s\00s\00e\00r\00t\00.\00a\00s\00s\00e\00r\00t\00N\00u\00l\00l\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;257;) (i32.const 10876) "\1c")
  (data (;258;) (i32.const 10888) " \00\00\00\08\00\00\00\0b")
  (data (;259;) (i32.const 10908) "\8c")
  (data (;260;) (i32.const 10920) "\01\00\00\00v\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00c\00a\00n\00c\00e\00l\00 \00w\00i\00t\00h\00 \00a\00c\00c\00o\00u\00n\00t\00 \00h\00a\00v\00i\00n\00g\00 \00o\00n\00l\00y\00 \00o\00n\00e\00 \00o\00p\00e\00r\00a\00t\00o\00r")
  (data (;261;) (i32.const 11052) "\1c")
  (data (;262;) (i32.const 11064) " \00\00\00\08\00\00\00\0c")
  (data (;263;) (i32.const 11084) "|")
  (data (;264;) (i32.const 11096) "\01\00\00\00b\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00F\00o\00r\00A\00l\00l\00 \00c\00a\00n\00c\00e\00l\00 \00w\00i\00t\00h\00 \00a\00c\00c\00o\00u\00n\00t\00 \00w\00i\00t\00h\00 \00o\00p\00e\00r\00a\00t\00o\00r\00s")
  (data (;265;) (i32.const 11212) "\1c")
  (data (;266;) (i32.const 11224) "\22\00\00\00\0c\00\00\00 \1c\00\00\00\00\00\00\80\1c")
  (data (;267;) (i32.const 11244) "\1c")
  (data (;268;) (i32.const 11256) " \00\00\00\08\00\00\00\0d")
  (data (;269;) (i32.const 11276) "L")
  (data (;270;) (i32.const 11288) "\01\00\00\000\00\00\00n\00f\00t\00T\00r\00a\00n\00s\00f\00e\00r\00 \00w\00i\00t\00h\00 \00n\00e\00w\00 \00n\00f\00t")
  (data (;271;) (i32.const 11356) ",")
  (data (;272;) (i32.const 11368) "\01\00\00\00\12\00\00\00a\00n\00i\00m\00a\00l\00N\00f\00t")
  (data (;273;) (i32.const 11404) "l")
  (data (;274;) (i32.const 11416) "\01\00\00\00T\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00a\00n\00i\00m\00a\00l\00N\00f\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;275;) (i32.const 11516) "\9c")
  (data (;276;) (i32.const 11528) "\01\00\00\00\8c\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00a\00n\00i\00m\00a\00l\00N\00f\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;277;) (i32.const 11676) ",")
  (data (;278;) (i32.const 11688) "\22\00\00\00\14\00\00\00\10-\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;279;) (i32.const 11724) "l")
  (data (;280;) (i32.const 11736) "\01\00\00\00R\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00f\00e\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;281;) (i32.const 11836) "\9c")
  (data (;282;) (i32.const 11848) "\01\00\00\00\88\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00f\00e\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;283;) (i32.const 11996) ",")
  (data (;284;) (i32.const 12008) "\22\00\00\00\14\00\00\00P.\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;285;) (i32.const 12044) ",")
  (data (;286;) (i32.const 12056) "\01\00\00\00\10\00\00\00T\00r\00a\00n\00s\00f\00e\00r")
  (data (;287;) (i32.const 12092) "\1c")
  (data (;288;) (i32.const 12104) " \00\00\00\08\00\00\00\0e")
  (data (;289;) (i32.const 12124) "\1c")
  (data (;290;) (i32.const 12136) " \00\00\00\08\00\00\00\0f")
  (data (;291;) (i32.const 12156) "<")
  (data (;292;) (i32.const 12168) "\01\00\00\00,\00\00\00t\00e\00s\00t\00s\00 \00b\00e\00l\00o\00w\00 \00n\00e\00e\00d\00 \00a\00 \00n\00f\00t")
  (data (;293;) (i32.const 12220) "\1c")
  (data (;294;) (i32.const 12232) " \00\00\00\08\00\00\00\10")
  (data (;295;) (i32.const 12252) ",")
  (data (;296;) (i32.const 12264) "\01\00\00\00\14\00\00\00b\00e\00f\00o\00r\00e\00E\00a\00c\00h")
  (data (;297;) (i32.const 12300) "\1c")
  (data (;298;) (i32.const 12312) " \00\00\00\08\00\00\00\11")
  (data (;299;) (i32.const 12332) ",")
  (data (;300;) (i32.const 12344) "\01\00\00\00\12\00\00\00n\00f\00t\00M\00i\00n\00t\00e\00d")
  (data (;301;) (i32.const 12380) ",")
  (data (;302;) (i32.const 12392) "\01\00\00\00\10\00\00\00t\00o\00k\00e\00n\00U\00R\00I")
  (data (;303;) (i32.const 12428) "L")
  (data (;304;) (i32.const 12440) "\01\00\00\004\00\00\00t\00o\00k\00e\00n\00U\00R\00I\00(\00u\00i\00n\00t\002\005\006\00)\00:\00(\00s\00t\00r\00i\00n\00g\00)")
  (data (;305;) (i32.const 12508) "\1c")
  (data (;306;) (i32.const 12540) "\1c")
  (data (;307;) (i32.const 12572) "\5c")
  (data (;308;) (i32.const 12584) "\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00o\00g\00.\00t\00s")
  (data (;309;) (i32.const 12668) "|")
  (data (;310;) (i32.const 12680) "\01\00\00\00j\00\00\00i\00p\00f\00s\00:\00/\00/\00Q\00m\00T\00H\00T\00c\00E\00s\00u\00i\00R\00z\00p\00x\00i\00n\00E\004\00f\00k\00m\00x\00c\00p\00C\00R\00N\003\00u\00H\00r\00H\00G\00P\00V\005\00N\00j\00k\001\00w\00Q\00h\001\00E\00M")
  (data (;311;) (i32.const 12796) "\1c")
  (data (;312;) (i32.const 12828) ",")
  (data (;313;) (i32.const 12840) "\01\00\00\00\12\00\00\00A\00n\00i\00m\00a\00l\00N\00f\00t")
  (data (;314;) (i32.const 12876) "\bc")
  (data (;315;) (i32.const 12888) "\01\00\00\00\a2\00\00\00C\00a\00l\00l\00 \00r\00e\00v\00e\00r\00t\00e\00d\00,\00 \00p\00r\00o\00b\00a\00b\00l\00y\00 \00b\00e\00c\00a\00u\00s\00e\00 \00a\00n\00 \00`\00a\00s\00s\00e\00r\00t\00`\00 \00o\00r\00 \00`\00r\00e\00q\00u\00i\00r\00e\00`\00 \00i\00n\00 \00t\00h\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00f\00a\00i\00l\00e\00d\00,\00 ")
  (data (;316;) (i32.const 13068) "<")
  (data (;317;) (i32.const 13080) "\01\00\00\00(\00\00\00c\00o\00n\00s\00i\00d\00e\00r\00 \00u\00s\00i\00n\00g\00 \00`\00t\00r\00y\00_")
  (data (;318;) (i32.const 13132) "\5c")
  (data (;319;) (i32.const 13144) "\01\00\00\00@\00\00\00`\00 \00t\00o\00 \00h\00a\00n\00d\00l\00e\00 \00t\00h\00i\00s\00 \00i\00n\00 \00t\00h\00e\00 \00m\00a\00p\00p\00i\00n\00g\00.")
  (data (;320;) (i32.const 13228) "\5c")
  (data (;321;) (i32.const 13240) "\01\00\00\00>\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;322;) (i32.const 13324) ",")
  (data (;323;) (i32.const 13336) "\01\00\00\00\10\00\00\00m\00e\00t\00a\00D\00a\00t\00a")
  (data (;324;) (i32.const 13372) "<")
  (data (;325;) (i32.const 13384) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;326;) (i32.const 13436) "l")
  (data (;327;) (i32.const 13448) "\01\00\00\00T\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00n\00f\00t\00M\00i\00n\00t\00e\00d\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;328;) (i32.const 13548) "\9c")
  (data (;329;) (i32.const 13560) "\01\00\00\00\8a\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00n\00f\00t\00M\00i\00n\00t\00e\00d\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;330;) (i32.const 13708) ",")
  (data (;331;) (i32.const 13720) "\22\00\00\00\14\00\00\00\005\00\00\00\00\00\00`\12\00\00\00\00\00\00\90\12")
  (data (;332;) (i32.const 13756) "\5c")
  (data (;333;) (i32.const 13768) "\01\00\00\00D\00\00\00a\00s\00s\00e\00r\00t\00.\00e\00n\00t\00i\00t\00y\00C\00o\00u\00n\00t\00 \00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;334;) (i32.const 13852) "\ac\01")
  (data (;335;) (i32.const 13864) "\01\00\00\00\9c\01\00\00{\00\0a\00 \00 \00\22\00n\00a\00m\00e\00\22\00:\00 \00\22\00f\00i\00s\00h\00\22\00,\00\0a\00 \00 \00\22\00d\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n\00\22\00:\00 \00\22\00s\00u\00c\00h\00 \00a\00 \00f\00i\00s\00h\00\22\00,\00\0a\00 \00 \00\22\00i\00m\00a\00g\00e\00\22\00:\00 \00\22\00i\00p\00f\00s\00:\00/\00/\00Q\00m\00X\00u\00a\00N\00e\00e\007\00M\00P\00Y\00W\00t\00G\00i\00b\00W\00H\00n\00e\00s\00E\00N\005\00C\00P\00d\00J\00w\002\00t\00u\00X\00x\00w\00j\00C\00T\007\00u\00N\00i\00U\00M\00r\00\22\00,\00\0a\00 \00 \00\22\00a\00t\00t\00r\00i\00b\00u\00t\00e\00s\00\22\00:\00 \00[\00\0a\00 \00 \00 \00 \00{\00\0a\00 \00 \00 \00 \00 \00 \00\22\00t\00r\00a\00i\00t\00_\00t\00y\00p\00e\00\22\00:\00 \00\22\00C\00o\00l\00o\00r\00\22\00,\00\0a\00 \00 \00 \00 \00 \00 \00\22\00v\00a\00l\00u\00e\00\22\00:\00 \00\22\00r\00e\00d\00\22\00\0a\00 \00 \00 \00 \00}\00\0a\00 \00 \00]\00\0a\00}\00\0a")
  (data (;336;) (i32.const 14284) "\1c")
  (data (;337;) (i32.const 14296) " \00\00\00\08\00\00\00\12")
  (data (;338;) (i32.const 14316) ",")
  (data (;339;) (i32.const 14328) "\01\00\00\00\16\00\00\00n\00f\00t\00A\00p\00p\00r\00o\00v\00a\00l")
  (data (;340;) (i32.const 14364) "\1c")
  (data (;341;) (i32.const 14376) " \00\00\00\08\00\00\00\13")
  (data (;342;) (i32.const 14396) "L")
  (data (;343;) (i32.const 14408) "\01\00\00\006\00\00\00n\00f\00t\00T\00r\00a\00n\00s\00f\00e\00r\00 \00w\00i\00t\00h\00 \00m\00i\00n\00t\00e\00d\00 \00n\00f\00t")
  (data (;344;) (i32.const 14476) "\1c")
  (data (;345;) (i32.const 14488) " \00\00\00\08\00\00\00\14")
  (data (;346;) (i32.const 14508) "\5c")
  (data (;347;) (i32.const 14520) "\01\00\00\00B\00\00\00n\00f\00t\00T\00r\00a\00n\00s\00f\00e\00r\00 \00s\00h\00o\00u\00l\00d\00 \00c\00l\00e\00a\00n\00 \00a\00p\00p\00r\00o\00v\00a\00l")
  (data (;348;) (i32.const 14604) "\1c")
  (data (;349;) (i32.const 14616) " \00\00\00\08\00\00\00\15")
  (data (;350;) (i32.const 14636) "\1c")
  (data (;351;) (i32.const 14648) " \00\00\00\08\00\00\00\16")
  (data (;352;) (i32.const 14668) "<")
  (data (;353;) (i32.const 14684) "$\00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05\00\00\b0\05")
  (data (;354;) (i32.const 14732) ",")
  (data (;355;) (i32.const 14744) "\03\00\00\00\10\00\00\00`9\00\00`9\00\00$\00\00\00\09"))
