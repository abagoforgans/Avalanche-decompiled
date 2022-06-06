contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == 0xc778417e063141139fce010982780140aa0cd5ab:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _62 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _65 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _62 + (32 * _65) + 32 <= return_data.size
        idx = 0
        s = _62 + 224
        t = ceil32(return_data.size) + 224
        while idx < _65:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _65:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    else:
        if arg2 == 0xc778417e063141139fce010982780140aa0cd5ab:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _64 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
            _67 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _64 + (32 * _67) + 32 <= return_data.size
            idx = 0
            s = _64 + 224
            t = ceil32(return_data.size) + 224
            while idx < _67:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _67:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
        else:
            mem[96] = 3
            mem[128] = arg1
            mem[160] = 0xc778417e063141139fce010982780140aa0cd5ab
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _63 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
            _66 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _63 + (32 * _66) + 32 <= return_data.size
            idx = 0
            s = _63 + 256
            t = ceil32(return_data.size) + 256
            while idx < _66:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 2 >= _66:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 == 0xc778417e063141139fce010982780140aa0cd5ab:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        mem[(2 * ceil32(return_data.size)) + 160] = arg2
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _141 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _144 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _141 + (32 * _144) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _141 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _144:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _144:
            revert with 'NH{q', 50
        _282 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        if arg1 == 0xc778417e063141139fce010982780140aa0cd5ab:
            _285 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_285]:
                revert with 'NH{q', 50
            mem[_285 + 32] = arg1
            if 1 >= mem[_285]:
                revert with 'NH{q', 50
            mem[_285 + 64] = arg2
            mem[_285 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_285 + 100] = arg3
            mem[_285 + 132] = _282
            mem[_285 + 164] = 160
            mem[_285 + 260] = mem[_285]
            idx = 0
            s = _285 + 32
            t = _285 + 292
            while idx < mem[_285]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_285 + 196] = arg4
            mem[_285 + 228] = block.timestamp
            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
            call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _285 + (32 * mem[_285]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _423 = mem[_414]
            require mem[_414] <= test266151307()
            require _414 + mem[_414] + 31 < _414 + return_data.size
            _432 = mem[_414 + mem[_414]]
            if mem[_414 + mem[_414]] > test266151307():
                revert with 'NH{q', 65
            if _414 + ceil32(return_data.size) + floor32(mem[_414 + mem[_414]]) + 1 > test266151307() or floor32(mem[_414 + mem[_414]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _414 + ceil32(return_data.size) + floor32(mem[_414 + mem[_414]]) + 1
            mem[_414 + ceil32(return_data.size)] = _432
            require _423 + (32 * _432) + 32 <= return_data.size
            idx = 0
            s = _414 + _423 + 32
            t = _414 + ceil32(return_data.size) + 32
            while idx < _432:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if arg2 == 0xc778417e063141139fce010982780140aa0cd5ab:
                _289 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_289]:
                    revert with 'NH{q', 50
                mem[_289 + 32] = arg1
                if 1 >= mem[_289]:
                    revert with 'NH{q', 50
                mem[_289 + 64] = arg2
                mem[_289 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_289 + 100] = arg3
                mem[_289 + 132] = _282
                mem[_289 + 164] = 160
                mem[_289 + 260] = mem[_289]
                idx = 0
                s = _289 + 32
                t = _289 + 292
                while idx < mem[_289]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_289 + 196] = arg4
                mem[_289 + 228] = block.timestamp
                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _289 + (32 * mem[_289]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_416]
                require mem[_416] <= test266151307()
                require _416 + mem[_416] + 31 < _416 + return_data.size
                _434 = mem[_416 + mem[_416]]
                if mem[_416 + mem[_416]] > test266151307():
                    revert with 'NH{q', 65
                if _416 + ceil32(return_data.size) + floor32(mem[_416 + mem[_416]]) + 1 > test266151307() or floor32(mem[_416 + mem[_416]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _416 + ceil32(return_data.size) + floor32(mem[_416 + mem[_416]]) + 1
                mem[_416 + ceil32(return_data.size)] = _434
                require _425 + (32 * _434) + 32 <= return_data.size
                idx = 0
                s = _416 + _425 + 32
                t = _416 + ceil32(return_data.size) + 32
                while idx < _434:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                _288 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_288]:
                    revert with 'NH{q', 50
                mem[_288 + 32] = arg1
                if 1 >= mem[_288]:
                    revert with 'NH{q', 50
                mem[_288 + 64] = 0xc778417e063141139fce010982780140aa0cd5ab
                if 2 >= mem[_288]:
                    revert with 'NH{q', 50
                mem[_288 + 96] = arg2
                mem[_288 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_288 + 132] = arg3
                mem[_288 + 164] = _282
                mem[_288 + 196] = 160
                mem[_288 + 292] = mem[_288]
                idx = 0
                s = _288 + 32
                t = _288 + 324
                while idx < mem[_288]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_288 + 228] = arg4
                mem[_288 + 260] = block.timestamp
                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _288 + (32 * mem[_288]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _424 = mem[_415]
                require mem[_415] <= test266151307()
                require _415 + mem[_415] + 31 < _415 + return_data.size
                _433 = mem[_415 + mem[_415]]
                if mem[_415 + mem[_415]] > test266151307():
                    revert with 'NH{q', 65
                if _415 + ceil32(return_data.size) + floor32(mem[_415 + mem[_415]]) + 1 > test266151307() or floor32(mem[_415 + mem[_415]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _415 + ceil32(return_data.size) + floor32(mem[_415 + mem[_415]]) + 1
                mem[_415 + ceil32(return_data.size)] = _433
                require _424 + (32 * _433) + 32 <= return_data.size
                idx = 0
                s = _415 + _424 + 32
                t = _415 + ceil32(return_data.size) + 32
                while idx < _433:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        if arg2 == 0xc778417e063141139fce010982780140aa0cd5ab:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = arg1
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg3
            mem[(2 * ceil32(return_data.size)) + 228] = 64
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _143 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _146 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _143 + (32 * _146) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _143 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _146:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                revert with 'NH{q', 17
            if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _146:
                revert with 'NH{q', 50
            _284 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
            if arg1 == 0xc778417e063141139fce010982780140aa0cd5ab:
                _287 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_287]:
                    revert with 'NH{q', 50
                mem[_287 + 32] = arg1
                if 1 >= mem[_287]:
                    revert with 'NH{q', 50
                mem[_287 + 64] = arg2
                mem[_287 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_287 + 100] = arg3
                mem[_287 + 132] = _284
                mem[_287 + 164] = 160
                mem[_287 + 260] = mem[_287]
                idx = 0
                s = _287 + 32
                t = _287 + 292
                while idx < mem[_287]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_287 + 196] = arg4
                mem[_287 + 228] = block.timestamp
                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _287 + (32 * mem[_287]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _429 = mem[_420]
                require mem[_420] <= test266151307()
                require _420 + mem[_420] + 31 < _420 + return_data.size
                _438 = mem[_420 + mem[_420]]
                if mem[_420 + mem[_420]] > test266151307():
                    revert with 'NH{q', 65
                if _420 + ceil32(return_data.size) + floor32(mem[_420 + mem[_420]]) + 1 > test266151307() or floor32(mem[_420 + mem[_420]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _420 + ceil32(return_data.size) + floor32(mem[_420 + mem[_420]]) + 1
                mem[_420 + ceil32(return_data.size)] = _438
                require _429 + (32 * _438) + 32 <= return_data.size
                idx = 0
                s = _420 + _429 + 32
                t = _420 + ceil32(return_data.size) + 32
                while idx < _438:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if arg2 == 0xc778417e063141139fce010982780140aa0cd5ab:
                    _293 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_293]:
                        revert with 'NH{q', 50
                    mem[_293 + 32] = arg1
                    if 1 >= mem[_293]:
                        revert with 'NH{q', 50
                    mem[_293 + 64] = arg2
                    mem[_293 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_293 + 100] = arg3
                    mem[_293 + 132] = _284
                    mem[_293 + 164] = 160
                    mem[_293 + 260] = mem[_293]
                    idx = 0
                    s = _293 + 32
                    t = _293 + 292
                    while idx < mem[_293]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_293 + 196] = arg4
                    mem[_293 + 228] = block.timestamp
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _293 + (32 * mem[_293]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _422 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _431 = mem[_422]
                    require mem[_422] <= test266151307()
                    require _422 + mem[_422] + 31 < _422 + return_data.size
                    _440 = mem[_422 + mem[_422]]
                    if mem[_422 + mem[_422]] > test266151307():
                        revert with 'NH{q', 65
                    if _422 + ceil32(return_data.size) + floor32(mem[_422 + mem[_422]]) + 1 > test266151307() or floor32(mem[_422 + mem[_422]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _422 + ceil32(return_data.size) + floor32(mem[_422 + mem[_422]]) + 1
                    mem[_422 + ceil32(return_data.size)] = _440
                    require _431 + (32 * _440) + 32 <= return_data.size
                    idx = 0
                    s = _422 + _431 + 32
                    t = _422 + ceil32(return_data.size) + 32
                    while idx < _440:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _292 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_292]:
                        revert with 'NH{q', 50
                    mem[_292 + 32] = arg1
                    if 1 >= mem[_292]:
                        revert with 'NH{q', 50
                    mem[_292 + 64] = 0xc778417e063141139fce010982780140aa0cd5ab
                    if 2 >= mem[_292]:
                        revert with 'NH{q', 50
                    mem[_292 + 96] = arg2
                    mem[_292 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_292 + 132] = arg3
                    mem[_292 + 164] = _284
                    mem[_292 + 196] = 160
                    mem[_292 + 292] = mem[_292]
                    idx = 0
                    s = _292 + 32
                    t = _292 + 324
                    while idx < mem[_292]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_292 + 228] = arg4
                    mem[_292 + 260] = block.timestamp
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _292 + (32 * mem[_292]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _421 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _430 = mem[_421]
                    require mem[_421] <= test266151307()
                    require _421 + mem[_421] + 31 < _421 + return_data.size
                    _439 = mem[_421 + mem[_421]]
                    if mem[_421 + mem[_421]] > test266151307():
                        revert with 'NH{q', 65
                    if _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1 > test266151307() or floor32(mem[_421 + mem[_421]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1
                    mem[_421 + ceil32(return_data.size)] = _439
                    require _430 + (32 * _439) + 32 <= return_data.size
                    idx = 0
                    s = _421 + _430 + 32
                    t = _421 + ceil32(return_data.size) + 32
                    while idx < _439:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = arg1
            mem[(2 * ceil32(return_data.size)) + 160] = 0xc778417e063141139fce010982780140aa0cd5ab
            mem[(2 * ceil32(return_data.size)) + 192] = arg2
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = arg3
            mem[(2 * ceil32(return_data.size)) + 260] = 64
            mem[(2 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
            staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _142 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _145 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _142 + (32 * _145) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _142 + 256
            t = (4 * ceil32(return_data.size)) + 256
            while idx < _145:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                revert with 'NH{q', 17
            if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _145:
                revert with 'NH{q', 50
            _283 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 256]
            if arg1 == 0xc778417e063141139fce010982780140aa0cd5ab:
                _286 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_286]:
                    revert with 'NH{q', 50
                mem[_286 + 32] = arg1
                if 1 >= mem[_286]:
                    revert with 'NH{q', 50
                mem[_286 + 64] = arg2
                mem[_286 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_286 + 100] = arg3
                mem[_286 + 132] = _283
                mem[_286 + 164] = 160
                mem[_286 + 260] = mem[_286]
                idx = 0
                s = _286 + 32
                t = _286 + 292
                while idx < mem[_286]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_286 + 196] = arg4
                mem[_286 + 228] = block.timestamp
                require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _286 + (32 * mem[_286]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_417]
                require mem[_417] <= test266151307()
                require _417 + mem[_417] + 31 < _417 + return_data.size
                _435 = mem[_417 + mem[_417]]
                if mem[_417 + mem[_417]] > test266151307():
                    revert with 'NH{q', 65
                if _417 + ceil32(return_data.size) + floor32(mem[_417 + mem[_417]]) + 1 > test266151307() or floor32(mem[_417 + mem[_417]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _417 + ceil32(return_data.size) + floor32(mem[_417 + mem[_417]]) + 1
                mem[_417 + ceil32(return_data.size)] = _435
                require _426 + (32 * _435) + 32 <= return_data.size
                idx = 0
                s = _417 + _426 + 32
                t = _417 + ceil32(return_data.size) + 32
                while idx < _435:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if arg2 == 0xc778417e063141139fce010982780140aa0cd5ab:
                    _291 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_291]:
                        revert with 'NH{q', 50
                    mem[_291 + 32] = arg1
                    if 1 >= mem[_291]:
                        revert with 'NH{q', 50
                    mem[_291 + 64] = arg2
                    mem[_291 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_291 + 100] = arg3
                    mem[_291 + 132] = _283
                    mem[_291 + 164] = 160
                    mem[_291 + 260] = mem[_291]
                    idx = 0
                    s = _291 + 32
                    t = _291 + 292
                    while idx < mem[_291]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_291 + 196] = arg4
                    mem[_291 + 228] = block.timestamp
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _291 + (32 * mem[_291]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _428 = mem[_419]
                    require mem[_419] <= test266151307()
                    require _419 + mem[_419] + 31 < _419 + return_data.size
                    _437 = mem[_419 + mem[_419]]
                    if mem[_419 + mem[_419]] > test266151307():
                        revert with 'NH{q', 65
                    if _419 + ceil32(return_data.size) + floor32(mem[_419 + mem[_419]]) + 1 > test266151307() or floor32(mem[_419 + mem[_419]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _419 + ceil32(return_data.size) + floor32(mem[_419 + mem[_419]]) + 1
                    mem[_419 + ceil32(return_data.size)] = _437
                    require _428 + (32 * _437) + 32 <= return_data.size
                    idx = 0
                    s = _419 + _428 + 32
                    t = _419 + ceil32(return_data.size) + 32
                    while idx < _437:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _290 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_290]:
                        revert with 'NH{q', 50
                    mem[_290 + 32] = arg1
                    if 1 >= mem[_290]:
                        revert with 'NH{q', 50
                    mem[_290 + 64] = 0xc778417e063141139fce010982780140aa0cd5ab
                    if 2 >= mem[_290]:
                        revert with 'NH{q', 50
                    mem[_290 + 96] = arg2
                    mem[_290 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_290 + 132] = arg3
                    mem[_290 + 164] = _283
                    mem[_290 + 196] = 160
                    mem[_290 + 292] = mem[_290]
                    idx = 0
                    s = _290 + 32
                    t = _290 + 324
                    while idx < mem[_290]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_290 + 228] = arg4
                    mem[_290 + 260] = block.timestamp
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _290 + (32 * mem[_290]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _427 = mem[_418]
                    require mem[_418] <= test266151307()
                    require _418 + mem[_418] + 31 < _418 + return_data.size
                    _436 = mem[_418 + mem[_418]]
                    if mem[_418 + mem[_418]] > test266151307():
                        revert with 'NH{q', 65
                    if _418 + ceil32(return_data.size) + floor32(mem[_418 + mem[_418]]) + 1 > test266151307() or floor32(mem[_418 + mem[_418]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _418 + ceil32(return_data.size) + floor32(mem[_418 + mem[_418]]) + 1
                    mem[_418 + ceil32(return_data.size)] = _436
                    require _427 + (32 * _436) + 32 <= return_data.size
                    idx = 0
                    s = _418 + _427 + 32
                    t = _418 + ceil32(return_data.size) + 32
                    while idx < _436:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
}



}
