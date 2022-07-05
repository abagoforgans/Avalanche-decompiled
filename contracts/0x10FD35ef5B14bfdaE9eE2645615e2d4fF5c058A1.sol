contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fd7e0ca7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 2
    mem[224] = address(arg2)
    mem[256] = address(arg1)
    mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg4).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _53 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
    _54 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require _53 + (32 * _54) + 32 <= return_data.size
    idx = _53 + 320
    s = ceil32(return_data.size) + 320
    while idx < _53 + (32 * _54) + 320:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= _54:
        revert with 'NH{q', 50
    _116 = mem[ceil32(return_data.size) + 320]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _116
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 224
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _116, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _187 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _188 = mem[_187]
    require mem[_187] <= test266151307()
    require _187 + mem[_187] + 31 < _187 + return_data.size
    _189 = mem[_187 + mem[_187]]
    if mem[_187 + mem[_187]] > test266151307():
        revert with 'NH{q', 65
    if _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1 > test266151307() or floor32(mem[_187 + mem[_187]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1
    mem[_187 + ceil32(return_data.size)] = _189
    require _188 + (32 * _189) + 32 <= return_data.size
    idx = _187 + _188 + 32
    s = _187 + ceil32(return_data.size) + 32
    while idx < _187 + _188 + (32 * _189) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _189:
        revert with 'NH{q', 50
    if 0 >= mem[ceil32(return_data.size) + 288]:
        revert with 'NH{q', 50
    if mem[ceil32(return_data.size) + 320] >= mem[_187 + ceil32(return_data.size) + 64]:
        revert with 0, 'Failed arbitrage'
    if 0 >= _189:
        revert with 'NH{q', 50
    if 1 >= mem[ceil32(return_data.size) + 288]:
        revert with 'NH{q', 50
    if mem[ceil32(return_data.size) + 352] < mem[_187 + ceil32(return_data.size) + 32]:
        revert with 'NH{q', 17
    if mem[ceil32(return_data.size) + 352] - mem[_187 + ceil32(return_data.size) + 32] <= 10^17:
        revert with 0, 'Not enough profit'
    if 0 >= mem[ceil32(return_data.size) + 288]:
        revert with 'NH{q', 50
    _271 = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _271
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), _271
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _275 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_275] == bool(mem[_275])
    if 0 >= mem[ceil32(return_data.size) + 288]:
        revert with 'NH{q', 50
    _278 = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg4)
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _281 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_281] == mem[_281]
    if mem[_281] >= _278:
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = -1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, -1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _348 = mem[_346]
        require mem[_346] <= test266151307()
        require _346 + mem[_346] + 31 < _346 + return_data.size
        _350 = mem[_346 + mem[_346]]
        if mem[_346 + mem[_346]] > test266151307():
            revert with 'NH{q', 65
        if _346 + ceil32(return_data.size) + floor32(mem[_346 + mem[_346]]) + 1 > test266151307() or floor32(mem[_346 + mem[_346]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _346 + ceil32(return_data.size) + floor32(mem[_346 + mem[_346]]) + 1
        mem[_346 + ceil32(return_data.size)] = _350
        require _348 + (32 * _350) + 32 <= return_data.size
        idx = _346 + _348 + 32
        s = _346 + ceil32(return_data.size) + 32
        while idx < _346 + _348 + (32 * _350) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _350:
            revert with 'NH{q', 50
        _448 = mem[_346 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg5)
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg5)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _454 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_454] == mem[_454]
        if mem[_454] >= _448:
            if 1 >= _350:
                revert with 'NH{q', 50
            _462 = mem[_346 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _462
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _472 = mem[192]
            mem[mem[64] + 164] = mem[192]
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < mem[192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _462, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _472) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _542 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _546 = mem[_542]
            require mem[_542] <= test266151307()
            require _542 + mem[_542] + 31 < _542 + return_data.size
            _550 = mem[_542 + mem[_542]]
            if mem[_542 + mem[_542]] > test266151307():
                revert with 'NH{q', 65
            if _542 + ceil32(return_data.size) + floor32(mem[_542 + mem[_542]]) + 1 > test266151307() or floor32(mem[_542 + mem[_542]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _542 + ceil32(return_data.size) + floor32(mem[_542 + mem[_542]]) + 1
            mem[_542 + ceil32(return_data.size)] = _550
            require _546 + (32 * _550) + 32 <= return_data.size
            idx = _542 + _546 + 32
            s = _542 + ceil32(return_data.size) + 32
            while idx < _542 + _546 + (32 * _550) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _550:
                revert with 'NH{q', 50
            _594 = mem[_542 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _594
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _594
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_606] == bool(mem[_606])
        else:
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = -1
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_468] == bool(mem[_468])
            if 1 >= _350:
                revert with 'NH{q', 50
            _477 = mem[_346 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _477
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _488 = mem[192]
            mem[mem[64] + 164] = mem[192]
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < mem[192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _477, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _488) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _543 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _547 = mem[_543]
            require mem[_543] <= test266151307()
            require _543 + mem[_543] + 31 < _543 + return_data.size
            _551 = mem[_543 + mem[_543]]
            if mem[_543 + mem[_543]] > test266151307():
                revert with 'NH{q', 65
            if _543 + ceil32(return_data.size) + floor32(mem[_543 + mem[_543]]) + 1 > test266151307() or floor32(mem[_543 + mem[_543]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _543 + ceil32(return_data.size) + floor32(mem[_543 + mem[_543]]) + 1
            mem[_543 + ceil32(return_data.size)] = _551
            require _547 + (32 * _551) + 32 <= return_data.size
            idx = _543 + _547 + 32
            s = _543 + ceil32(return_data.size) + 32
            while idx < _543 + _547 + (32 * _551) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _551:
                revert with 'NH{q', 50
            _596 = mem[_543 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _596
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _596
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_607] == bool(mem[_607])
    else:
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = -1
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_287] == bool(mem[_287])
        _290 = mem[64]
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = -1
        mem[mem[64] + 68] = 160
        _294 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < _294:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_290 + 100] = this.address
        mem[_290 + 132] = block.timestamp
        call address(arg4).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _290 + (32 * _294) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _347 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _349 = mem[_347]
        require mem[_347] <= test266151307()
        require _347 + mem[_347] + 31 < _347 + return_data.size
        _351 = mem[_347 + mem[_347]]
        if mem[_347 + mem[_347]] > test266151307():
            revert with 'NH{q', 65
        if _347 + ceil32(return_data.size) + floor32(mem[_347 + mem[_347]]) + 1 > test266151307() or floor32(mem[_347 + mem[_347]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _347 + ceil32(return_data.size) + floor32(mem[_347 + mem[_347]]) + 1
        mem[_347 + ceil32(return_data.size)] = _351
        require _349 + (32 * _351) + 32 <= return_data.size
        idx = _347 + _349 + 32
        s = _347 + ceil32(return_data.size) + 32
        while idx < _347 + _349 + (32 * _351) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _351:
            revert with 'NH{q', 50
        _450 = mem[_347 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg5)
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg5)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_455] == mem[_455]
        if mem[_455] >= _450:
            if 1 >= _351:
                revert with 'NH{q', 50
            _464 = mem[_347 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _464
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _473 = mem[192]
            mem[mem[64] + 164] = mem[192]
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < mem[192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _464, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _473) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _544 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _548 = mem[_544]
            require mem[_544] <= test266151307()
            require _544 + mem[_544] + 31 < _544 + return_data.size
            _552 = mem[_544 + mem[_544]]
            if mem[_544 + mem[_544]] > test266151307():
                revert with 'NH{q', 65
            if _544 + ceil32(return_data.size) + floor32(mem[_544 + mem[_544]]) + 1 > test266151307() or floor32(mem[_544 + mem[_544]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _544 + ceil32(return_data.size) + floor32(mem[_544 + mem[_544]]) + 1
            mem[_544 + ceil32(return_data.size)] = _552
            require _548 + (32 * _552) + 32 <= return_data.size
            idx = _544 + _548 + 32
            s = _544 + ceil32(return_data.size) + 32
            while idx < _544 + _548 + (32 * _552) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _552:
                revert with 'NH{q', 50
            _598 = mem[_544 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _598
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _598
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _608 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_608] == bool(mem[_608])
        else:
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = -1
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_469] == bool(mem[_469])
            if 1 >= _351:
                revert with 'NH{q', 50
            _480 = mem[_347 + ceil32(return_data.size) + 64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _480
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _489 = mem[192]
            mem[mem[64] + 164] = mem[192]
            idx = 0
            s = 224
            t = mem[64] + 196
            while idx < mem[192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            call address(arg5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _480, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _489) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _545 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _549 = mem[_545]
            require mem[_545] <= test266151307()
            require _545 + mem[_545] + 31 < _545 + return_data.size
            _553 = mem[_545 + mem[_545]]
            if mem[_545 + mem[_545]] > test266151307():
                revert with 'NH{q', 65
            if _545 + ceil32(return_data.size) + floor32(mem[_545 + mem[_545]]) + 1 > test266151307() or floor32(mem[_545 + mem[_545]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _545 + ceil32(return_data.size) + floor32(mem[_545 + mem[_545]]) + 1
            mem[_545 + ceil32(return_data.size)] = _553
            require _549 + (32 * _553) + 32 <= return_data.size
            idx = _545 + _549 + 32
            s = _545 + ceil32(return_data.size) + 32
            while idx < _545 + _549 + (32 * _553) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _553:
                revert with 'NH{q', 50
            _600 = mem[_545 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _600
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _600
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_609] == bool(mem[_609])
}



}
