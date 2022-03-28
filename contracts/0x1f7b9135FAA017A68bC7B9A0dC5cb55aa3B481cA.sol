contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0f125acf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    stor2 = address(arg3)
    stor1 = address(arg1)
    stor3 = address(arg2)
    stor4 = address(arg4)
    mem[100] = msg.sender
    require ext_code.size(address(arg3))
    staticcall address(arg3).earned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount too low'
    require ext_code.size(stor2)
    call stor2.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 'amount too low'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor4
    require ext_code.size(stor3)
    staticcall stor3.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    if stor4 == mem[ceil32(return_data.size) + 172 len 20]:
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = stor4
        require ext_code.size(stor3)
        staticcall stor3.token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        if stor4 == mem[(2 * ceil32(return_data.size)) + 268 len 20]:
            mem[(4 * ceil32(return_data.size)) + 288] = 0xe8e3370000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = mem[ceil32(return_data.size) + 172 len 20]
            mem[(4 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[12 len 20])
            mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] / 2
            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] / 2
            mem[(4 * ceil32(return_data.size)) + 420] = 0
            mem[(4 * ceil32(return_data.size)) + 452] = 0
            mem[(4 * ceil32(return_data.size)) + 484] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 516] = block.timestamp
            require ext_code.size(stor1)
            call stor1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 256]
            mem[(4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] > 0:
                mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[64]
                require ext_code.size(stor2)
                call stor2.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (7 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 14
            mem[(4 * ceil32(return_data.size)) + 356] = 'amount too low' << 144
            revert with memory
              from (4 * ceil32(return_data.size)) + 288
               len (7 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 2
        mem[(4 * ceil32(return_data.size)) + 324] = 64
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = (4 * ceil32(return_data.size)) + 388
        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        staticcall stor1.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _173 = mem[_171]
        require mem[_171] <= test266151307()
        require _171 + mem[_171] + 31 < _171 + return_data.size
        _175 = mem[_171 + mem[_171]]
        if mem[_171 + mem[_171]] > test266151307():
            revert with 0, 65
        if _171 + ceil32(return_data.size) + floor32(mem[_171 + mem[_171]]) + 1 > test266151307() or floor32(mem[_171 + mem[_171]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _171 + ceil32(return_data.size) + floor32(mem[_171 + mem[_171]]) + 1
        mem[_171 + ceil32(return_data.size)] = _175
        require return_data.size >= _173 + (32 * _175) + 32
        mem[_171 + ceil32(return_data.size) + 32 len 32 * _175] = mem[_171 + _173 + 32 len 32 * _175]
        if _175 < 1:
            revert with 0, 17
        if _175 - 1 >= _175:
            revert with 0, 50
        _287 = mem[(32 * _175 - 1) + _171 + ceil32(return_data.size) + 32]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = _287
        mem[mem[64] + 68] = 160
        _291 = mem[(2 * ceil32(return_data.size)) + 192]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = mem[64] + 196
        while idx < _291:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), _287, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _291) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _387 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _389 = mem[_387]
        require mem[_387] <= test266151307()
        require _387 + mem[_387] + 31 < _387 + return_data.size
        _391 = mem[_387 + mem[_387]]
        if mem[_387 + mem[_387]] > test266151307():
            revert with 0, 65
        if _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1 > test266151307() or floor32(mem[_387 + mem[_387]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _387 + ceil32(return_data.size) + floor32(mem[_387 + mem[_387]]) + 1
        mem[_387 + ceil32(return_data.size)] = _391
        require return_data.size >= _389 + (32 * _391) + 32
        mem[_387 + ceil32(return_data.size) + 32 len 32 * _391] = mem[_387 + _389 + 32 len 32 * _391]
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
            revert with 0, 50
        _482 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 172 len 20]
        mem[mem[64] + 68] = ext_call.return_data[0] / 2
        mem[mem[64] + 100] = _287
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = msg.sender
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(stor1)
        call stor1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(_482), Mask(255, 1, ext_call.return_data[0]), _287, 0, 0, msg.sender, block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _488 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if mem[_488 + 64] <= 0:
            revert with 0, 'amount too low'
        require ext_code.size(stor2)
        call stor2.stake(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_488 + 64]
    else:
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args Mask(255, 1, ext_call.return_data[0]), 64, mem[(2 * ceil32(return_data.size)) + 260 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _174 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _176 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _176
        require return_data.size >= _174 + (32 * _176) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _176] = mem[(2 * ceil32(return_data.size)) + _174 + 224 len 32 * _176]
        if _176 < 1:
            revert with 0, 17
        if _176 - 1 >= _176:
            revert with 0, 50
        _289 = mem[(32 * _176 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = _289
        mem[mem[64] + 68] = 160
        _292 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _292:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), _289, 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _292) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_388]
        require mem[_388] <= test266151307()
        require _388 + mem[_388] + 31 < _388 + return_data.size
        _392 = mem[_388 + mem[_388]]
        if mem[_388 + mem[_388]] > test266151307():
            revert with 0, 65
        if _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1 > test266151307() or floor32(mem[_388 + mem[_388]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _388 + ceil32(return_data.size) + floor32(mem[_388 + mem[_388]]) + 1
        mem[_388 + ceil32(return_data.size)] = _392
        require return_data.size >= _390 + (32 * _392) + 32
        mem[_388 + ceil32(return_data.size) + 32 len 32 * _392] = mem[_388 + _390 + 32 len 32 * _392]
        _476 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_476 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if 0 >= mem[_476]:
            revert with 0, 50
        mem[_476 + 32] = mem[ceil32(return_data.size) + 140 len 20]
        require ext_code.size(stor3)
        staticcall stor3.token1() with:
                gas gas_remaining wei
        mem[_476 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _476 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_476]:
            revert with 0, 50
        mem[_476 + 64] = ext_call.return_data[12 len 20]
        if 1 >= mem[_476]:
            revert with 0, 50
        if 0 >= mem[_476]:
            revert with 0, 50
        if mem[_476 + 44 len 20] == mem[_476 + 76 len 20]:
            if 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if 1 >= mem[_476]:
                revert with 0, 50
            require ext_code.size(stor1)
            call stor1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(mem[ceil32(return_data.size) + 160]), address(ext_call.return_data[12 len 20]), _289, Mask(255, 1, ext_call.return_data[0]), 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stor2)
            call stor2.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
        else:
            mem[_476 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_476 + ceil32(return_data.size) + 100] = ext_call.return_data[0] / 2
            mem[_476 + ceil32(return_data.size) + 132] = 64
            mem[_476 + ceil32(return_data.size) + 164] = mem[_476]
            idx = 0
            s = _476 + 32
            t = _476 + ceil32(return_data.size) + 196
            while idx < mem[_476]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor1)
            staticcall stor1.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _476 + ceil32(return_data.size) + (32 * mem[_476]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _554 = mem[_553]
            require mem[_553] <= test266151307()
            require _553 + mem[_553] + 31 < _553 + return_data.size
            _555 = mem[_553 + mem[_553]]
            if mem[_553 + mem[_553]] > test266151307():
                revert with 0, 65
            if _553 + ceil32(return_data.size) + floor32(mem[_553 + mem[_553]]) + 1 > test266151307() or floor32(mem[_553 + mem[_553]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _553 + ceil32(return_data.size) + floor32(mem[_553 + mem[_553]]) + 1
            mem[_553 + ceil32(return_data.size)] = _555
            require return_data.size >= _554 + (32 * _555) + 32
            mem[_553 + ceil32(return_data.size) + 32 len 32 * _555] = mem[_553 + _554 + 32 len 32 * _555]
            if _555 < 1:
                revert with 0, 17
            if _555 - 1 >= _555:
                revert with 0, 50
            _587 = mem[(32 * _555 - 1) + _553 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0] / 2
            mem[mem[64] + 36] = mem[(32 * _555 - 1) + _553 + ceil32(return_data.size) + 32]
            mem[mem[64] + 68] = 160
            _589 = mem[_476]
            mem[mem[64] + 164] = mem[_476]
            idx = 0
            s = _476 + 32
            t = mem[64] + 196
            while idx < _589:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _589) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _614 = mem[_613]
            require mem[_613] <= test266151307()
            require _613 + mem[_613] + 31 < _613 + return_data.size
            _615 = mem[_613 + mem[_613]]
            if mem[_613 + mem[_613]] > test266151307():
                revert with 0, 65
            if _613 + ceil32(return_data.size) + floor32(mem[_613 + mem[_613]]) + 1 > test266151307() or floor32(mem[_613 + mem[_613]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _613 + ceil32(return_data.size) + floor32(mem[_613 + mem[_613]]) + 1
            mem[_613 + ceil32(return_data.size)] = _615
            require return_data.size >= _614 + (32 * _615) + 32
            mem[_613 + ceil32(return_data.size) + 32 len 32 * _615] = mem[_613 + _614 + 32 len 32 * _615]
            if 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if 1 >= mem[_476]:
                revert with 0, 50
            _636 = mem[_476 + 64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 172 len 20]
            mem[mem[64] + 68] = _289
            mem[mem[64] + 100] = _587
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = msg.sender
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor1)
            call stor1.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_636), _289, _587, 0, 0, msg.sender, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if mem[_639 + 64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stor2)
            call stor2.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_639 + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
