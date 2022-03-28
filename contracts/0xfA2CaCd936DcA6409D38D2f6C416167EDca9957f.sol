contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;

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

function Reinvest() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount too low'
    require ext_code.size(stor3)
    call stor3.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] / 2 <= 0:
        revert with 0, 'amount too low'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor5
    require ext_code.size(stor4)
    staticcall stor4.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    if stor5 == mem[ceil32(return_data.size) + 172 len 20]:
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = stor5
        require ext_code.size(stor4)
        staticcall stor4.token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        if stor5 == mem[(2 * ceil32(return_data.size)) + 268 len 20]:
            mem[(4 * ceil32(return_data.size)) + 288] = 0xe8e3370000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = mem[ceil32(return_data.size) + 172 len 20]
            mem[(4 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[12 len 20])
            mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] / 2
            mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] / 2
            mem[(4 * ceil32(return_data.size)) + 420] = 0
            mem[(4 * ceil32(return_data.size)) + 452] = 0
            mem[(4 * ceil32(return_data.size)) + 484] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 516] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 256]
            mem[(4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 14
                mem[(4 * ceil32(return_data.size)) + 356] = 'amount too low' << 144
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (7 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[64]
            require ext_code.size(stor3)
            call stor3.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 292 len (7 * ceil32(return_data.size)) + 32]
        else:
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
            require ext_code.size(stor2)
            staticcall stor2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _175 = mem[_173]
            require mem[_173] <= test266151307()
            require _173 + mem[_173] + 31 < _173 + return_data.size
            _177 = mem[_173 + mem[_173]]
            if mem[_173 + mem[_173]] > test266151307():
                revert with 0, 65
            if _173 + ceil32(return_data.size) + floor32(mem[_173 + mem[_173]]) + 1 > test266151307() or floor32(mem[_173 + mem[_173]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _173 + ceil32(return_data.size) + floor32(mem[_173 + mem[_173]]) + 1
            mem[_173 + ceil32(return_data.size)] = _177
            require return_data.size >= _175 + (32 * _177) + 32
            mem[_173 + ceil32(return_data.size) + 32 len 32 * _177] = mem[_173 + _175 + 32 len 32 * _177]
            if _177 < 1:
                revert with 0, 17
            if _177 - 1 >= _177:
                revert with 0, 50
            _289 = mem[(32 * _177 - 1) + _173 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0] / 2
            mem[mem[64] + 36] = mem[(32 * _177 - 1) + _173 + ceil32(return_data.size) + 32]
            mem[mem[64] + 68] = 160
            _293 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _293:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _293) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_389]
            require mem[_389] <= test266151307()
            require _389 + mem[_389] + 31 < _389 + return_data.size
            _393 = mem[_389 + mem[_389]]
            if mem[_389 + mem[_389]] > test266151307():
                revert with 0, 65
            if _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1 > test266151307() or floor32(mem[_389 + mem[_389]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _389 + ceil32(return_data.size) + floor32(mem[_389 + mem[_389]]) + 1
            mem[_389 + ceil32(return_data.size)] = _393
            require return_data.size >= _391 + (32 * _393) + 32
            mem[_389 + ceil32(return_data.size) + 32 len 32 * _393] = mem[_389 + _391 + 32 len 32 * _393]
            if 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if 1 >= mem[(2 * ceil32(return_data.size)) + 192]:
                revert with 0, 50
            _484 = mem[(2 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 172 len 20]
            mem[mem[64] + 68] = ext_call.return_data[0] / 2
            mem[mem[64] + 100] = _289
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = msg.sender
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_484), Mask(255, 1, ext_call.return_data[0]), _289, 0, 0, msg.sender, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if mem[_490 + 64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stor3)
            call stor3.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_490 + 64]
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
        require ext_code.size(stor2)
        staticcall stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args Mask(255, 1, ext_call.return_data[0]), 64, mem[(2 * ceil32(return_data.size)) + 260 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _176 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _178 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _178
        require return_data.size >= _176 + (32 * _178) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _178] = mem[(2 * ceil32(return_data.size)) + _176 + 224 len 32 * _178]
        if _178 < 1:
            revert with 0, 17
        if _178 - 1 >= _178:
            revert with 0, 50
        _291 = mem[(32 * _178 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = mem[(32 * _178 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 68] = 160
        _294 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _294:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _294) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _390 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _392 = mem[_390]
        require mem[_390] <= test266151307()
        require _390 + mem[_390] + 31 < _390 + return_data.size
        _394 = mem[_390 + mem[_390]]
        if mem[_390 + mem[_390]] > test266151307():
            revert with 0, 65
        if _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1 > test266151307() or floor32(mem[_390 + mem[_390]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _390 + ceil32(return_data.size) + floor32(mem[_390 + mem[_390]]) + 1
        mem[_390 + ceil32(return_data.size)] = _394
        require return_data.size >= _392 + (32 * _394) + 32
        mem[_390 + ceil32(return_data.size) + 32 len 32 * _394] = mem[_390 + _392 + 32 len 32 * _394]
        _478 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_478 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if 0 >= mem[_478]:
            revert with 0, 50
        mem[_478 + 32] = mem[ceil32(return_data.size) + 140 len 20]
        require ext_code.size(stor4)
        staticcall stor4.token1() with:
                gas gas_remaining wei
        mem[_478 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _478 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_478]:
            revert with 0, 50
        mem[_478 + 64] = ext_call.return_data[12 len 20]
        if 1 >= mem[_478]:
            revert with 0, 50
        if 0 >= mem[_478]:
            revert with 0, 50
        if mem[_478 + 44 len 20] == mem[_478 + 76 len 20]:
            if 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if 1 >= mem[_478]:
                revert with 0, 50
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(mem[ceil32(return_data.size) + 160]), address(ext_call.return_data[12 len 20]), _291, Mask(255, 1, ext_call.return_data[0]), 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stor3)
            call stor3.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
        else:
            mem[_478 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_478 + ceil32(return_data.size) + 100] = ext_call.return_data[0] / 2
            mem[_478 + ceil32(return_data.size) + 132] = 64
            mem[_478 + ceil32(return_data.size) + 164] = mem[_478]
            idx = 0
            s = _478 + 32
            t = _478 + ceil32(return_data.size) + 196
            while idx < mem[_478]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor2)
            staticcall stor2.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _478 + ceil32(return_data.size) + (32 * mem[_478]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _555 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _556 = mem[_555]
            require mem[_555] <= test266151307()
            require _555 + mem[_555] + 31 < _555 + return_data.size
            _557 = mem[_555 + mem[_555]]
            if mem[_555 + mem[_555]] > test266151307():
                revert with 0, 65
            if _555 + ceil32(return_data.size) + floor32(mem[_555 + mem[_555]]) + 1 > test266151307() or floor32(mem[_555 + mem[_555]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _555 + ceil32(return_data.size) + floor32(mem[_555 + mem[_555]]) + 1
            mem[_555 + ceil32(return_data.size)] = _557
            require return_data.size >= _556 + (32 * _557) + 32
            mem[_555 + ceil32(return_data.size) + 32 len 32 * _557] = mem[_555 + _556 + 32 len 32 * _557]
            if _557 < 1:
                revert with 0, 17
            if _557 - 1 >= _557:
                revert with 0, 50
            _589 = mem[(32 * _557 - 1) + _555 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0] / 2
            mem[mem[64] + 36] = mem[(32 * _557 - 1) + _555 + ceil32(return_data.size) + 32]
            mem[mem[64] + 68] = 160
            _591 = mem[_478]
            mem[mem[64] + 164] = mem[_478]
            idx = 0
            s = _478 + 32
            t = mem[64] + 196
            while idx < _591:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _591) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _616 = mem[_615]
            require mem[_615] <= test266151307()
            require _615 + mem[_615] + 31 < _615 + return_data.size
            _617 = mem[_615 + mem[_615]]
            if mem[_615 + mem[_615]] > test266151307():
                revert with 0, 65
            if _615 + ceil32(return_data.size) + floor32(mem[_615 + mem[_615]]) + 1 > test266151307() or floor32(mem[_615 + mem[_615]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _615 + ceil32(return_data.size) + floor32(mem[_615 + mem[_615]]) + 1
            mem[_615 + ceil32(return_data.size)] = _617
            require return_data.size >= _616 + (32 * _617) + 32
            mem[_615 + ceil32(return_data.size) + 32 len 32 * _617] = mem[_615 + _616 + 32 len 32 * _617]
            if 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if 1 >= mem[_478]:
                revert with 0, 50
            _638 = mem[_478 + 64]
            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 172 len 20]
            mem[mem[64] + 68] = _291
            mem[mem[64] + 100] = _589
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = msg.sender
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(stor2)
            call stor2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_638), _291, _589, 0, 0, msg.sender, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if mem[_641 + 64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stor3)
            call stor3.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_641 + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
