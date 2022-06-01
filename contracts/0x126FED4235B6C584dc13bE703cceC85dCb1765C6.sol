contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;
address stor6;
address stor7;
uint256 stor8; offset 32
uint256 stor8;
uint256 stor9;
uint256 stor10;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor6 = arg1
}

function setMaxLoop(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor10 = arg1
}

function setParameters(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == stor0
    stor1 = arg1
    uint256(stor8.field_0) = arg2
    stor9 = arg3
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap() {
    mem[96] = 2
    require ext_code.size(stor6)
    staticcall stor6.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor8.field_0)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor6)
    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor8.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _74 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _75 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor8.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _75
    require _74 + (32 * _75) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _74 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _75:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _75 < 1:
        revert with 'NH{q', 17
    if _75 - 1 >= _75:
        revert with 'NH{q', 50
    if mem[(32 * _75 - 1) + (2 * ceil32(return_data.size)) + 224] >= stor9:
        if block.timestamp > -601:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor9
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = 2
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = stor0
        mem[mem[64] + 100] = block.timestamp + 600
        require ext_code.size(stor6)
        call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value uint256(stor8.field_0) wei
             gas gas_remaining wei
            args stor9, Array(len=2, data=mem[mem[64] + 164 len 64]), stor0, block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _229 = mem[_227]
        require mem[_227] <= test266151307()
        require _227 + mem[_227] + 31 < _227 + return_data.size
        _230 = mem[_227 + mem[_227]]
        if mem[_227 + mem[_227]] > test266151307():
            revert with 'NH{q', 65
        if _227 + ceil32(return_data.size) + floor32(mem[_227 + mem[_227]]) + 1 > test266151307() or floor32(mem[_227 + mem[_227]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _227 + ceil32(return_data.size) + floor32(mem[_227 + mem[_227]]) + 1
        mem[_227 + ceil32(return_data.size)] = _230
        require _229 + (32 * _230) + 32 <= return_data.size
        idx = 0
        s = _227 + _229 + 32
        t = _227 + ceil32(return_data.size) + 32
        while idx < _230:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint256(stor8.field_0)
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 2
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor7)
        staticcall stor7.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _224 = mem[_223]
        require mem[_223] <= test266151307()
        require _223 + mem[_223] + 31 < _223 + return_data.size
        _225 = mem[_223 + mem[_223]]
        if mem[_223 + mem[_223]] > test266151307():
            revert with 'NH{q', 65
        if _223 + ceil32(return_data.size) + floor32(mem[_223 + mem[_223]]) + 1 > test266151307() or floor32(mem[_223 + mem[_223]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _223 + ceil32(return_data.size) + floor32(mem[_223 + mem[_223]]) + 1
        mem[_223 + ceil32(return_data.size)] = _225
        require _224 + (32 * _225) + 32 <= return_data.size
        idx = 0
        s = _223 + _224 + 32
        t = _223 + ceil32(return_data.size) + 32
        while idx < _225:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _225 < 1:
            revert with 'NH{q', 17
        if _225 - 1 >= _225:
            revert with 'NH{q', 50
        if mem[(32 * _225 - 1) + _223 + ceil32(return_data.size) + 32] >= stor9:
            if block.timestamp > -601:
                revert with 'NH{q', 17
            _301 = mem[64]
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor9
            mem[mem[64] + 36] = 128
            _303 = mem[96]
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = stor0
            mem[_301 + 100] = block.timestamp + 600
            require ext_code.size(stor7)
            call stor7.mem[mem[64] len 4] with:
               value uint256(stor8.field_0) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _301 + (32 * _303) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _365 = mem[_363]
            require mem[_363] <= test266151307()
            require _363 + mem[_363] + 31 < _363 + return_data.size
            _366 = mem[_363 + mem[_363]]
            if mem[_363 + mem[_363]] > test266151307():
                revert with 'NH{q', 65
            if _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1 > test266151307() or floor32(mem[_363 + mem[_363]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _363 + ceil32(return_data.size) + floor32(mem[_363 + mem[_363]]) + 1
            mem[_363 + ceil32(return_data.size)] = _366
            require _365 + (32 * _366) + 32 <= return_data.size
            idx = 0
            s = _363 + _365 + 32
            t = _363 + ceil32(return_data.size) + 32
            while idx < _366:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _297 = mem[64]
            require ext_code.size(stor6)
            staticcall stor6.WAVAX() with:
                    gas gas_remaining wei
            mem[mem[64] + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_297]:
                revert with 'NH{q', 50
            mem[_297 + 32] = ext_call.return_data[12 len 20]
            if 1 >= mem[_297]:
                revert with 'NH{q', 50
            mem[_297 + 64] = stor3
            if 2 >= mem[_297]:
                revert with 'NH{q', 50
            mem[_297 + 96] = stor1
            mem[_297 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_297 + ceil32(return_data.size) + 132] = uint256(stor8.field_0)
            mem[_297 + ceil32(return_data.size) + 164] = 64
            mem[_297 + ceil32(return_data.size) + 196] = mem[_297]
            idx = 0
            s = _297 + 32
            t = _297 + ceil32(return_data.size) + 228
            while idx < mem[_297]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _297 + ceil32(return_data.size) + (32 * mem[_297]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _359 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_359]
            require mem[_359] <= test266151307()
            require _359 + mem[_359] + 31 < _359 + return_data.size
            _361 = mem[_359 + mem[_359]]
            if mem[_359 + mem[_359]] > test266151307():
                revert with 'NH{q', 65
            if _359 + ceil32(return_data.size) + floor32(mem[_359 + mem[_359]]) + 1 > test266151307() or floor32(mem[_359 + mem[_359]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _359 + ceil32(return_data.size) + floor32(mem[_359 + mem[_359]]) + 1
            mem[_359 + ceil32(return_data.size)] = _361
            require _360 + (32 * _361) + 32 <= return_data.size
            idx = 0
            s = _359 + _360 + 32
            t = _359 + ceil32(return_data.size) + 32
            while idx < _361:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _361 < 1:
                revert with 'NH{q', 17
            if _361 - 1 >= _361:
                revert with 'NH{q', 50
            if mem[(32 * _361 - 1) + _359 + ceil32(return_data.size) + 32] >= stor9:
                if block.timestamp > -601:
                    revert with 'NH{q', 17
                _410 = mem[64]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = 128
                _412 = mem[_297]
                mem[mem[64] + 132] = mem[_297]
                idx = 0
                s = _297 + 32
                t = mem[64] + 164
                while idx < _412:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_410 + 68] = stor0
                mem[_410 + 100] = block.timestamp + 600
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                   value uint256(stor8.field_0) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _410 + (32 * _412) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _447 = mem[_445]
                require mem[_445] <= test266151307()
                require _445 + mem[_445] + 31 < _445 + return_data.size
                _448 = mem[_445 + mem[_445]]
                if mem[_445 + mem[_445]] > test266151307():
                    revert with 'NH{q', 65
                if _445 + ceil32(return_data.size) + floor32(mem[_445 + mem[_445]]) + 1 > test266151307() or floor32(mem[_445 + mem[_445]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _445 + ceil32(return_data.size) + floor32(mem[_445 + mem[_445]]) + 1
                mem[_445 + ceil32(return_data.size)] = _448
                require _447 + (32 * _448) + 32 <= return_data.size
                idx = 0
                s = _445 + _447 + 32
                t = _445 + ceil32(return_data.size) + 32
                while idx < _448:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                _408 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint256(stor8.field_0)
                mem[mem[64] + 36] = 64
                _409 = mem[_297]
                mem[mem[64] + 68] = mem[_297]
                idx = 0
                s = _297 + 32
                t = mem[64] + 100
                while idx < _409:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor7)
                staticcall stor7.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _408 + (32 * _409) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _441 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _442 = mem[_441]
                require mem[_441] <= test266151307()
                require _441 + mem[_441] + 31 < _441 + return_data.size
                _443 = mem[_441 + mem[_441]]
                if mem[_441 + mem[_441]] > test266151307():
                    revert with 'NH{q', 65
                if _441 + ceil32(return_data.size) + floor32(mem[_441 + mem[_441]]) + 1 > test266151307() or floor32(mem[_441 + mem[_441]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _441 + ceil32(return_data.size) + floor32(mem[_441 + mem[_441]]) + 1
                mem[_441 + ceil32(return_data.size)] = _443
                require _442 + (32 * _443) + 32 <= return_data.size
                idx = 0
                s = _441 + _442 + 32
                t = _441 + ceil32(return_data.size) + 32
                while idx < _443:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _443 < 1:
                    revert with 'NH{q', 17
                if _443 - 1 >= _443:
                    revert with 'NH{q', 50
                if mem[(32 * _443 - 1) + _441 + ceil32(return_data.size) + 32] >= stor9:
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    _469 = mem[64]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = 128
                    _470 = mem[_297]
                    mem[mem[64] + 132] = mem[_297]
                    idx = 0
                    s = _297 + 32
                    t = mem[64] + 164
                    while idx < _470:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_469 + 68] = stor0
                    mem[_469 + 100] = block.timestamp + 600
                    require ext_code.size(stor7)
                    call stor7.mem[mem[64] len 4] with:
                       value uint256(stor8.field_0) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _469 + (32 * _470) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _480 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _481 = mem[_480]
                    require mem[_480] <= test266151307()
                    require _480 + mem[_480] + 31 < _480 + return_data.size
                    _482 = mem[_480 + mem[_480]]
                    if mem[_480 + mem[_480]] > test266151307():
                        revert with 'NH{q', 65
                    if _480 + ceil32(return_data.size) + floor32(mem[_480 + mem[_480]]) + 1 > test266151307() or floor32(mem[_480 + mem[_480]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _480 + ceil32(return_data.size) + floor32(mem[_480 + mem[_480]]) + 1
                    mem[_480 + ceil32(return_data.size)] = _482
                    require _481 + (32 * _482) + 32 <= return_data.size
                    idx = 0
                    s = _480 + _481 + 32
                    t = _480 + ceil32(return_data.size) + 32
                    while idx < _482:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
}



}
