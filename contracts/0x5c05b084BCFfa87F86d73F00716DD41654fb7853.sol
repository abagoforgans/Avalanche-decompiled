contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor1 = arg1
}

function sub_c6843d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor2 = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 0
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveFor(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_dd10a3d6(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[96] = 3
    mem[128] = stor7
    mem[160] = stor6
    mem[192] = stor8
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = arg2
    mem[260] = 1
    mem[292] = 160
    mem[388] = 3
    idx = 0
    s = 420
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[324] = this.address
    mem[356] = stor3
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=3, data=mem[420 len 96]), address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _92 = mem[224 len 4], Mask(224, 32, arg2) >> 32
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
    _93 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    require return_data.size >= _92 + (32 * _93) + 32
    mem[ceil32(return_data.size) + 256 len 32 * _93] = mem[_92 + 256 len 32 * _93]
    if 2 >= _93:
        revert with 0, 50
    _170 = mem[ceil32(return_data.size) + 320]
    if arg1 < arg2:
        revert with 0, 17
    _171 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_171]:
        revert with 0, 50
    mem[_171 + 32] = stor7
    if 1 >= mem[_171]:
        revert with 0, 50
    mem[_171 + 64] = stor6
    mem[_171 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_171 + 100] = arg1 - arg2
    mem[_171 + 132] = 1
    mem[_171 + 164] = 160
    mem[_171 + 260] = mem[_171]
    idx = 0
    s = _171 + 292
    t = _171 + 32
    while idx < mem[_171]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_171 + 196] = this.address
    mem[_171 + 228] = stor3
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _171 + (32 * mem[_171]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _243 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _244 = mem[_243]
    require mem[_243] <= test266151307()
    require _243 + mem[_243] + 31 < _243 + return_data.size
    _245 = mem[_243 + mem[_243]]
    if mem[_243 + mem[_243]] > test266151307():
        revert with 0, 65
    if _243 + ceil32(return_data.size) + ceil32(32 * mem[_243 + mem[_243]]) + 1 > test266151307() or ceil32(32 * mem[_243 + mem[_243]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _243 + ceil32(return_data.size) + ceil32(32 * mem[_243 + mem[_243]]) + 1
    mem[_243 + ceil32(return_data.size)] = _245
    require return_data.size >= _244 + (32 * _245) + 32
    mem[_243 + ceil32(return_data.size) + 32 len 32 * _245] = mem[_243 + _244 + 32 len 32 * _245]
    if 1 >= _245:
        revert with 0, 50
    _308 = mem[_243 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = stor9
    mem[mem[64] + 68] = _308
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor13
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, stor9, _308, 1, stor13
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _311 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _312 = mem[_311]
    mem[mem[64] + 4] = stor12
    mem[mem[64] + 36] = stor10
    mem[mem[64] + 68] = stor11
    if _170 > mem[_311]:
        mem[mem[64] + 100] = _312
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor12, stor10, stor11, _312
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _317 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _319 = mem[_317]
        mem[mem[64] + 36] = stor7
        mem[mem[64] + 68] = _319
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 1
        mem[mem[64] + 164] = this.address
        mem[mem[64] + 196] = stor3
        require ext_code.size(stor4)
        call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args stor6, stor7, _319, 1, 1, this.address, stor3
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _327 = mem[_325]
        _328 = mem[_325 + 32]
        if not mem[_171]:
            revert with 0, 50
        mem[_171 + 32] = stor6
        if 1 >= mem[_171]:
            revert with 0, 50
        mem[_171 + 64] = stor7
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _327
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _337 = mem[_171]
        mem[mem[64] + 164] = mem[_171]
        idx = 0
        s = mem[64] + 196
        t = _171 + 32
        while idx < _337:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = stor3
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _327, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _337) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _371 = mem[_369]
        require mem[_369] <= test266151307()
        require _369 + mem[_369] + 31 < _369 + return_data.size
        _373 = mem[_369 + mem[_369]]
        if mem[_369 + mem[_369]] > test266151307():
            revert with 0, 65
        if _369 + ceil32(return_data.size) + ceil32(32 * mem[_369 + mem[_369]]) + 1 > test266151307() or ceil32(32 * mem[_369 + mem[_369]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _369 + ceil32(return_data.size) + ceil32(32 * mem[_369 + mem[_369]]) + 1
        mem[_369 + ceil32(return_data.size)] = _373
        require return_data.size >= _371 + (32 * _373) + 32
        mem[_369 + ceil32(return_data.size) + 32 len 32 * _373] = mem[_369 + _371 + 32 len 32 * _373]
        if 1 >= _373:
            revert with 0, 50
        if _328 > !mem[_369 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if _328 + mem[_369 + ceil32(return_data.size) + 64] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64]] = _328 + mem[_369 + ceil32(return_data.size) + 64]
    else:
        mem[mem[64] + 100] = _170
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor12, stor10, stor11, _170
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _318 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _320 = mem[_318]
        mem[mem[64] + 36] = stor7
        mem[mem[64] + 68] = _320
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 1
        mem[mem[64] + 164] = this.address
        mem[mem[64] + 196] = stor3
        require ext_code.size(stor4)
        call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args stor6, stor7, _320, 1, 1, this.address, stor3
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _329 = mem[_326]
        _330 = mem[_326 + 32]
        if not mem[_171]:
            revert with 0, 50
        mem[_171 + 32] = stor6
        if 1 >= mem[_171]:
            revert with 0, 50
        mem[_171 + 64] = stor7
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _329
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _338 = mem[_171]
        mem[mem[64] + 164] = mem[_171]
        idx = 0
        s = mem[64] + 196
        t = _171 + 32
        while idx < _338:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = stor3
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _329, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _338) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _372 = mem[_370]
        require mem[_370] <= test266151307()
        require _370 + mem[_370] + 31 < _370 + return_data.size
        _374 = mem[_370 + mem[_370]]
        if mem[_370 + mem[_370]] > test266151307():
            revert with 0, 65
        if _370 + ceil32(return_data.size) + ceil32(32 * mem[_370 + mem[_370]]) + 1 > test266151307() or ceil32(32 * mem[_370 + mem[_370]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _370 + ceil32(return_data.size) + ceil32(32 * mem[_370 + mem[_370]]) + 1
        mem[_370 + ceil32(return_data.size)] = _374
        require return_data.size >= _372 + (32 * _374) + 32
        mem[_370 + ceil32(return_data.size) + 32 len 32 * _374] = mem[_370 + _372 + 32 len 32 * _374]
        if 1 >= _374:
            revert with 0, 50
        if _330 > !mem[_370 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if _330 + mem[_370 + ceil32(return_data.size) + 64] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64]] = _330 + mem[_370 + ceil32(return_data.size) + 64]
    return memory
      from mem[64]
       len 32
}

function sub_1865ce62(?) {
    require calldata.size - 4 >= 64
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor7
    mem[ceil32(return_data.size) + 160] = stor6
    mem[ceil32(return_data.size) + 192] = stor8
    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg2
    mem[ceil32(return_data.size) + 260] = 1
    mem[ceil32(return_data.size) + 292] = 160
    mem[ceil32(return_data.size) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 420
    t = ceil32(return_data.size) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = stor3
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _104 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _105 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    require return_data.size >= _104 + (32 * _105) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _105] = mem[ceil32(return_data.size) + _104 + 256 len 32 * _105]
    if 2 >= _105:
        revert with 0, 50
    _190 = mem[(2 * ceil32(return_data.size)) + 320]
    if arg1 < arg2:
        revert with 0, 17
    _191 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_191]:
        revert with 0, 50
    mem[_191 + 32] = stor7
    if 1 >= mem[_191]:
        revert with 0, 50
    mem[_191 + 64] = stor6
    mem[_191 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_191 + 100] = arg1 - arg2
    mem[_191 + 132] = 1
    mem[_191 + 164] = 160
    mem[_191 + 260] = mem[_191]
    idx = 0
    s = _191 + 292
    t = _191 + 32
    while idx < mem[_191]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_191 + 196] = this.address
    mem[_191 + 228] = stor3
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _191 + (32 * mem[_191]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _271 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _272 = mem[_271]
    require mem[_271] <= test266151307()
    require _271 + mem[_271] + 31 < _271 + return_data.size
    _273 = mem[_271 + mem[_271]]
    if mem[_271 + mem[_271]] > test266151307():
        revert with 0, 65
    if _271 + ceil32(return_data.size) + ceil32(32 * mem[_271 + mem[_271]]) + 1 > test266151307() or ceil32(32 * mem[_271 + mem[_271]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _271 + ceil32(return_data.size) + ceil32(32 * mem[_271 + mem[_271]]) + 1
    mem[_271 + ceil32(return_data.size)] = _273
    require return_data.size >= _272 + (32 * _273) + 32
    mem[_271 + ceil32(return_data.size) + 32 len 32 * _273] = mem[_271 + _272 + 32 len 32 * _273]
    if 1 >= _273:
        revert with 0, 50
    _344 = mem[_271 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = stor9
    mem[mem[64] + 68] = _344
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor13
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, stor9, _344, 1, stor13
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _347 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _348 = mem[_347]
    mem[mem[64] + 4] = stor12
    mem[mem[64] + 36] = stor10
    mem[mem[64] + 68] = stor11
    if _190 > mem[_347]:
        mem[mem[64] + 100] = _348
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor12, stor10, stor11, _348
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _355 = mem[_353]
        mem[mem[64] + 36] = stor7
        mem[mem[64] + 68] = _355
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 1
        mem[mem[64] + 164] = this.address
        mem[mem[64] + 196] = stor3
        require ext_code.size(stor4)
        call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args stor6, stor7, _355, 1, 1, this.address, stor3
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _361 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _363 = mem[_361]
        _364 = mem[_361 + 32]
        if not mem[_191]:
            revert with 0, 50
        mem[_191 + 32] = stor6
        if 1 >= mem[_191]:
            revert with 0, 50
        mem[_191 + 64] = stor7
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _363
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _373 = mem[_191]
        mem[mem[64] + 164] = mem[_191]
        idx = 0
        s = mem[64] + 196
        t = _191 + 32
        while idx < _373:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = stor3
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _363, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _373) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _413 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _415 = mem[_413]
        require mem[_413] <= test266151307()
        require _413 + mem[_413] + 31 < _413 + return_data.size
        _417 = mem[_413 + mem[_413]]
        if mem[_413 + mem[_413]] > test266151307():
            revert with 0, 65
        if _413 + ceil32(return_data.size) + ceil32(32 * mem[_413 + mem[_413]]) + 1 > test266151307() or ceil32(32 * mem[_413 + mem[_413]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _413 + ceil32(return_data.size) + ceil32(32 * mem[_413 + mem[_413]]) + 1
        mem[_413 + ceil32(return_data.size)] = _417
        require return_data.size >= _415 + (32 * _417) + 32
        mem[_413 + ceil32(return_data.size) + 32 len 32 * _417] = mem[_413 + _415 + 32 len 32 * _417]
        if 1 >= _417:
            revert with 0, 50
        _447 = mem[_413 + ceil32(return_data.size) + 64]
        if _364 > !mem[_413 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if _364 + mem[_413 + ceil32(return_data.size) + 64] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _364 + _447
        require ext_code.size(stor7)
        call stor7.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _364 + _447
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _457 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_457] == bool(mem[_457])
        return (_364 + _447)
    mem[mem[64] + 100] = _190
    require ext_code.size(stor5)
    call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args stor12, stor10, stor11, _190
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _354 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _356 = mem[_354]
    mem[mem[64] + 36] = stor7
    mem[mem[64] + 68] = _356
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = 1
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = stor3
    require ext_code.size(stor4)
    call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args stor6, stor7, _356, 1, 1, this.address, stor3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _362 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _365 = mem[_362]
    _366 = mem[_362 + 32]
    if not mem[_191]:
        revert with 0, 50
    mem[_191 + 32] = stor6
    if 1 >= mem[_191]:
        revert with 0, 50
    mem[_191 + 64] = stor7
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _365
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _374 = mem[_191]
    mem[mem[64] + 164] = mem[_191]
    idx = 0
    s = mem[64] + 196
    t = _191 + 32
    while idx < _374:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = stor3
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _365, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _374) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _414 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _416 = mem[_414]
    require mem[_414] <= test266151307()
    require _414 + mem[_414] + 31 < _414 + return_data.size
    _418 = mem[_414 + mem[_414]]
    if mem[_414 + mem[_414]] > test266151307():
        revert with 0, 65
    if _414 + ceil32(return_data.size) + ceil32(32 * mem[_414 + mem[_414]]) + 1 > test266151307() or ceil32(32 * mem[_414 + mem[_414]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _414 + ceil32(return_data.size) + ceil32(32 * mem[_414 + mem[_414]]) + 1
    mem[_414 + ceil32(return_data.size)] = _418
    require return_data.size >= _416 + (32 * _418) + 32
    mem[_414 + ceil32(return_data.size) + 32 len 32 * _418] = mem[_414 + _416 + 32 len 32 * _418]
    if 1 >= _418:
        revert with 0, 50
    _448 = mem[_414 + ceil32(return_data.size) + 64]
    if _366 > !mem[_414 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    if _366 + mem[_414 + ceil32(return_data.size) + 64] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _366 + _448
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _366 + _448
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _458 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_458] == bool(mem[_458])
    return (_366 + _448)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8980f11f(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x8980f11f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor0[address(arg1)] = 1
        if unknown_0xc6843d05(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor2 = address(arg1)
        if uint32(call.func_hash) >> 224 != unknown_0xdd10a3d6(?????):
            require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor0[address(arg1)] = 0
        require not msg.value
        require calldata.size - 4 >= 64
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[msg.sender]:
            revert with 0, 'not auth'
        mem[128] = 3
        mem[160] = stor7
        mem[192] = stor6
        mem[224] = stor8
        mem[256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[260] = arg2
        mem[292] = 1
        mem[324] = 160
        mem[420] = 3
        idx = 0
        s = 452
        t = 160
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[356] = this.address
        mem[388] = stor3
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=3, data=mem[452 len 96]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _224 = mem[256 len 4], Mask(224, 32, arg2) >> 32
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 287 < return_data.size + 256
        _226 = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
        if mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
        require return_data.size >= _224 + (32 * _226) + 32
        mem[ceil32(return_data.size) + 288 len 32 * _226] = mem[_224 + 288 len 32 * _226]
        if 2 >= _226:
            revert with 0, 50
        _388 = mem[ceil32(return_data.size) + 352]
        if arg1 < arg2:
            revert with 0, 17
        _391 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_391]:
            revert with 0, 50
        mem[_391 + 32] = stor7
        if 1 >= mem[_391]:
            revert with 0, 50
        mem[_391 + 64] = stor6
        mem[_391 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_391 + 100] = arg1 - arg2
        mem[_391 + 132] = 1
        mem[_391 + 164] = 160
        mem[_391 + 260] = mem[_391]
        idx = 0
        s = _391 + 292
        t = _391 + 32
        while idx < mem[_391]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_391 + 196] = this.address
        mem[_391 + 228] = stor3
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _391 + (32 * mem[_391]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _544 = mem[_542]
        require mem[_542] <= test266151307()
        require _542 + mem[_542] + 31 < _542 + return_data.size
        _546 = mem[_542 + mem[_542]]
        if mem[_542 + mem[_542]] > test266151307():
            revert with 0, 65
        if _542 + ceil32(return_data.size) + ceil32(32 * mem[_542 + mem[_542]]) + 1 > test266151307() or ceil32(32 * mem[_542 + mem[_542]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _542 + ceil32(return_data.size) + ceil32(32 * mem[_542 + mem[_542]]) + 1
        mem[_542 + ceil32(return_data.size)] = _546
        require return_data.size >= _544 + (32 * _546) + 32
        mem[_542 + ceil32(return_data.size) + 32 len 32 * _546] = mem[_542 + _544 + 32 len 32 * _546]
        if 1 >= _546:
            revert with 0, 50
        _682 = mem[_542 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = stor9
        mem[mem[64] + 68] = _682
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor13
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args stor6, stor9, _682, 1, stor13
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _686 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _688 = mem[_686]
        mem[mem[64] + 4] = stor12
        mem[mem[64] + 36] = stor10
        mem[mem[64] + 68] = stor11
        if _388 > mem[_686]:
            mem[mem[64] + 100] = _688
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor12, stor10, stor11, _688
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _699 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _703 = mem[_699]
            mem[mem[64] + 36] = stor7
            mem[mem[64] + 68] = _703
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 1
            mem[mem[64] + 164] = this.address
            mem[mem[64] + 196] = stor3
            require ext_code.size(stor4)
            call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args stor6, stor7, _703, 1, 1, this.address, stor3
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _715 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _721 = mem[_715]
            _722 = mem[_715 + 32]
            if not mem[_391]:
                revert with 0, 50
            mem[_391 + 32] = stor6
            if 1 >= mem[_391]:
                revert with 0, 50
            mem[_391 + 64] = stor7
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _721
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _739 = mem[_391]
            mem[mem[64] + 164] = mem[_391]
            idx = 0
            s = mem[64] + 196
            t = _391 + 32
            while idx < _739:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = stor3
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _721, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _739) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _811 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_811]
            require mem[_811] <= test266151307()
            require _811 + mem[_811] + 31 < _811 + return_data.size
            _819 = mem[_811 + mem[_811]]
            if mem[_811 + mem[_811]] > test266151307():
                revert with 0, 65
            if _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1 > test266151307() or ceil32(32 * mem[_811 + mem[_811]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1
            mem[_811 + ceil32(return_data.size)] = _819
            require return_data.size >= _815 + (32 * _819) + 32
            mem[_811 + ceil32(return_data.size) + 32 len 32 * _819] = mem[_811 + _815 + 32 len 32 * _819]
            if 1 >= _819:
                revert with 0, 50
            if _722 > !mem[_811 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            if _722 + mem[_811 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'no profit'
            mem[mem[64]] = _722 + mem[_811 + ceil32(return_data.size) + 64]
        else:
            mem[mem[64] + 100] = _388
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor12, stor10, stor11, _388
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _700 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _704 = mem[_700]
            mem[mem[64] + 36] = stor7
            mem[mem[64] + 68] = _704
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 1
            mem[mem[64] + 164] = this.address
            mem[mem[64] + 196] = stor3
            require ext_code.size(stor4)
            call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args stor6, stor7, _704, 1, 1, this.address, stor3
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _723 = mem[_716]
            _724 = mem[_716 + 32]
            if not mem[_391]:
                revert with 0, 50
            mem[_391 + 32] = stor6
            if 1 >= mem[_391]:
                revert with 0, 50
            mem[_391 + 64] = stor7
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _723
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _740 = mem[_391]
            mem[mem[64] + 164] = mem[_391]
            idx = 0
            s = mem[64] + 196
            t = _391 + 32
            while idx < _740:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = stor3
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _723, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _740) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _812 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _816 = mem[_812]
            require mem[_812] <= test266151307()
            require _812 + mem[_812] + 31 < _812 + return_data.size
            _820 = mem[_812 + mem[_812]]
            if mem[_812 + mem[_812]] > test266151307():
                revert with 0, 65
            if _812 + ceil32(return_data.size) + ceil32(32 * mem[_812 + mem[_812]]) + 1 > test266151307() or ceil32(32 * mem[_812 + mem[_812]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _812 + ceil32(return_data.size) + ceil32(32 * mem[_812 + mem[_812]]) + 1
            mem[_812 + ceil32(return_data.size)] = _820
            require return_data.size >= _816 + (32 * _820) + 32
            mem[_812 + ceil32(return_data.size) + 32 len 32 * _820] = mem[_812 + _816 + 32 len 32 * _820]
            if 1 >= _820:
                revert with 0, 50
            if _724 > !mem[_812 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            if _724 + mem[_812 + ceil32(return_data.size) + 64] <= arg1:
                revert with 0, 'no profit'
            mem[mem[64]] = _724 + mem[_812 + ceil32(return_data.size) + 64]
        return memory
          from mem[64]
           len 32
    if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor1 != msg.sender:
            revert with 0, 'not owner'
        stor1 = address(arg1)
    if uint32(call.func_hash) >> 224 != unknown_0x1865ce62(?????):
        if uint32(call.func_hash) >> 224 != unknown_0x2b991746(?????):
            require unknown_0x4782f779(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            call address(arg1) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not msg.value
    require calldata.size - 4 >= 64
    mem[132] = stor2
    mem[164] = this.address
    mem[196] = arg1
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg1
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 128] = 3
    mem[ceil32(return_data.size) + 160] = stor7
    mem[ceil32(return_data.size) + 192] = stor6
    mem[ceil32(return_data.size) + 224] = stor8
    mem[ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 260] = arg2
    mem[ceil32(return_data.size) + 292] = 1
    mem[ceil32(return_data.size) + 324] = 160
    mem[ceil32(return_data.size) + 420] = 3
    idx = 0
    s = ceil32(return_data.size) + 452
    t = ceil32(return_data.size) + 160
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 356] = this.address
    mem[ceil32(return_data.size) + 388] = stor3
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=3, data=mem[ceil32(return_data.size) + 452 len 96]), address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _223 = mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 287 < ceil32(return_data.size) + return_data.size + 256
    _225 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257
    mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg2) >> 32 + 256]
    require return_data.size >= _223 + (32 * _225) + 32
    mem[(2 * ceil32(return_data.size)) + 288 len 32 * _225] = mem[ceil32(return_data.size) + _223 + 288 len 32 * _225]
    if 2 >= _225:
        revert with 0, 50
    _387 = mem[(2 * ceil32(return_data.size)) + 352]
    if arg1 < arg2:
        revert with 0, 17
    _389 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_389]:
        revert with 0, 50
    mem[_389 + 32] = stor7
    if 1 >= mem[_389]:
        revert with 0, 50
    mem[_389 + 64] = stor6
    mem[_389 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_389 + 100] = arg1 - arg2
    mem[_389 + 132] = 1
    mem[_389 + 164] = 160
    mem[_389 + 260] = mem[_389]
    idx = 0
    s = _389 + 292
    t = _389 + 32
    while idx < mem[_389]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_389 + 196] = this.address
    mem[_389 + 228] = stor3
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _389 + (32 * mem[_389]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _541 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _543 = mem[_541]
    require mem[_541] <= test266151307()
    require _541 + mem[_541] + 31 < _541 + return_data.size
    _545 = mem[_541 + mem[_541]]
    if mem[_541 + mem[_541]] > test266151307():
        revert with 0, 65
    if _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1 > test266151307() or ceil32(32 * mem[_541 + mem[_541]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1
    mem[_541 + ceil32(return_data.size)] = _545
    require return_data.size >= _543 + (32 * _545) + 32
    mem[_541 + ceil32(return_data.size) + 32 len 32 * _545] = mem[_541 + _543 + 32 len 32 * _545]
    if 1 >= _545:
        revert with 0, 50
    _679 = mem[_541 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = stor9
    mem[mem[64] + 68] = _679
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor13
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, stor9, _679, 1, stor13
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _685 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _687 = mem[_685]
    mem[mem[64] + 4] = stor12
    mem[mem[64] + 36] = stor10
    mem[mem[64] + 68] = stor11
    if _387 <= mem[_685]:
        mem[mem[64] + 100] = _387
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor12, stor10, stor11, _387
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _698 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _702 = mem[_698]
        mem[mem[64] + 36] = stor7
        mem[mem[64] + 68] = _702
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 1
        mem[mem[64] + 164] = this.address
        mem[mem[64] + 196] = stor3
        require ext_code.size(stor4)
        call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args stor6, stor7, _702, 1, 1, this.address, stor3
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _714 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _719 = mem[_714]
        _720 = mem[_714 + 32]
        if not mem[_389]:
            revert with 0, 50
        mem[_389 + 32] = stor6
        if 1 >= mem[_389]:
            revert with 0, 50
        mem[_389 + 64] = stor7
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _719
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _738 = mem[_389]
        mem[mem[64] + 164] = mem[_389]
        idx = 0
        s = mem[64] + 196
        t = _389 + 32
        while idx < _738:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = stor3
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _719, 1, 160, address(this.address), stor3, mem[mem[64] + 164 len (32 * _738) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _810 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _814 = mem[_810]
        require mem[_810] <= test266151307()
        require _810 + mem[_810] + 31 < _810 + return_data.size
        _818 = mem[_810 + mem[_810]]
        if mem[_810 + mem[_810]] > test266151307():
            revert with 0, 65
        if _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1 > test266151307() or ceil32(32 * mem[_810 + mem[_810]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1
        mem[_810 + ceil32(return_data.size)] = _818
        require return_data.size >= _814 + (32 * _818) + 32
        mem[_810 + ceil32(return_data.size) + 32 len 32 * _818] = mem[_810 + _814 + 32 len 32 * _818]
        if 1 >= _818:
            revert with 0, 50
        _870 = mem[_810 + ceil32(return_data.size) + 64]
        if _720 > !mem[_810 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if _720 + mem[_810 + ceil32(return_data.size) + 64] <= arg1:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _720 + _870
        require ext_code.size(stor7)
        call stor7.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _720 + _870
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _890 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_890] == bool(mem[_890])
        return (_720 + _870)
    mem[mem[64] + 100] = _687
    require ext_code.size(stor5)
    call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args stor12, stor10, stor11, _687
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _697 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _701 = mem[_697]
    mem[mem[64] + 36] = stor7
    mem[mem[64] + 68] = _701
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = 1
    mem[mem[64] + 164] = this.address
    mem[mem[64] + 196] = stor3
    require ext_code.size(stor4)
    call stor4.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args stor6, stor7, _701, 1, 1, this.address, stor3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _713 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _717 = mem[_713]
    _718 = mem[_713 + 32]
    if not mem[_389]:
        revert with 0, 50
    mem[_389 + 32] = stor6
    if 1 >= mem[_389]:
        revert with 0, 50
    mem[_389 + 64] = stor7
    _733 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _717
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _737 = mem[_389]
    mem[mem[64] + 164] = mem[_389]
    idx = 0
    s = mem[64] + 196
    t = _389 + 32
    while idx < _737:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_733 + 100] = this.address
    mem[_733 + 132] = stor3
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _733 + (32 * _737) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _809 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _813 = mem[_809]
    require mem[_809] <= test266151307()
    require _809 + mem[_809] + 31 < _809 + return_data.size
    _817 = mem[_809 + mem[_809]]
    if mem[_809 + mem[_809]] > test266151307():
        revert with 0, 65
    if _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1 > test266151307() or ceil32(32 * mem[_809 + mem[_809]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1
    mem[_809 + ceil32(return_data.size)] = _817
    require return_data.size >= _813 + (32 * _817) + 32
    mem[_809 + ceil32(return_data.size) + 32 len 32 * _817] = mem[_809 + _813 + 32 len 32 * _817]
    if 1 >= _817:
        revert with 0, 50
    _869 = mem[_809 + ceil32(return_data.size) + 64]
    if _718 > !mem[_809 + ceil32(return_data.size) + 64]:
        revert with 0, 17
    if _718 + mem[_809 + ceil32(return_data.size) + 64] <= arg1:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _718 + _869
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _718 + _869
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _889 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_889] == bool(mem[_889])
    return (_718 + _869)
}



}
