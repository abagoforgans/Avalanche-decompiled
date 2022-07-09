contract main {




// =====================  Runtime code  =====================


const sub_09b13323(?) = 1


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_0c5de5c3(?) {
    require msg.sender == stor0
    return 1
}

function setJoeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor2 = arg1
}

function sub_09ab59b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor1 = address(arg1)
}

function sub_bc78b3a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor0 = address(arg1)
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_14df4e0f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == stor0
    mem[96] = 2
    mem[128] = stor3
    mem[160] = address(arg1)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if eth.balance(this.address) > arg2:
        mem[196] = arg2
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
        staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _86 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
        _88 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _86 + (32 * _88) + 32 <= return_data.size
        idx = _86 + 224
        s = ceil32(return_data.size) + 224
        while idx < _86 + (32 * _88) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _88 < 1:
            revert with 'NH{q', 17
        if _88 - 1 >= _88:
            revert with 'NH{q', 50
        _172 = mem[(32 * _88 - 1) + ceil32(return_data.size) + 224]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _172
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
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp + 60
        call stor1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 wei
             gas gas_remaining wei
            args _172, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_254]
        require mem[_254] <= test266151307()
        require _254 + mem[_254] + 31 < _254 + return_data.size
        _258 = mem[_254 + mem[_254]]
        if mem[_254 + mem[_254]] > test266151307():
            revert with 'NH{q', 65
        if _254 + ceil32(return_data.size) + floor32(mem[_254 + mem[_254]]) + 1 > test266151307() or floor32(mem[_254 + mem[_254]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _254 + ceil32(return_data.size) + floor32(mem[_254 + mem[_254]]) + 1
        mem[_254 + ceil32(return_data.size)] = _258
        require _256 + (32 * _258) + 32 <= return_data.size
        idx = _254 + _256 + 32
        s = _254 + ceil32(return_data.size) + 32
        while idx < _254 + _256 + (32 * _258) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _258 < 1:
            revert with 'NH{q', 17
        if _258 - 1 >= _258:
            revert with 'NH{q', 50
        _332 = mem[(32 * _258 - 1) + _254 + ceil32(return_data.size) + 32]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = address(arg1)
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = stor3
        _338 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _332
        mem[mem[64] + 36] = 64
        _340 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _340:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _338 + (32 * _340) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_394]
        require mem[_394] <= test266151307()
        require _394 + mem[_394] + 31 < _394 + return_data.size
        _398 = mem[_394 + mem[_394]]
        if mem[_394 + mem[_394]] > test266151307():
            revert with 'NH{q', 65
        if _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1 > test266151307() or floor32(mem[_394 + mem[_394]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1
        mem[_394 + ceil32(return_data.size)] = _398
        require _396 + (32 * _398) + 32 <= return_data.size
        idx = _394 + _396 + 32
        s = _394 + ceil32(return_data.size) + 32
        while idx < _394 + _396 + (32 * _398) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _398 < 1:
            revert with 'NH{q', 17
        if _398 - 1 >= _398:
            revert with 'NH{q', 50
        _444 = mem[(32 * _398 - 1) + _394 + ceil32(return_data.size) + 32]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _446 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _332
        mem[mem[64] + 36] = _444
        mem[mem[64] + 68] = 160
        _448 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < _448:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_446 + 100] = this.address
        mem[_446 + 132] = block.timestamp + 60
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _446 + (32 * _448) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _478 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _480 = mem[_478]
        require mem[_478] <= test266151307()
        require _478 + mem[_478] + 31 < _478 + return_data.size
        _482 = mem[_478 + mem[_478]]
        if mem[_478 + mem[_478]] > test266151307():
            revert with 'NH{q', 65
        if _478 + ceil32(return_data.size) + floor32(mem[_478 + mem[_478]]) + 1 > test266151307() or floor32(mem[_478 + mem[_478]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _478 + ceil32(return_data.size) + floor32(mem[_478 + mem[_478]]) + 1
        mem[_478 + ceil32(return_data.size)] = _482
        require _480 + (32 * _482) + 32 <= return_data.size
        idx = _478 + _480 + 32
        s = _478 + ceil32(return_data.size) + 32
        while idx < _478 + _480 + (32 * _482) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _482 < 1:
            revert with 'NH{q', 17
        if _482 - 1 >= _482:
            revert with 'NH{q', 50
        if mem[(32 * _482 - 1) + _478 + ceil32(return_data.size) + 32] < arg2:
            revert with 0, 'ILLEGAL_OUTPUT'
    else:
        mem[196] = eth.balance(this.address)
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
        staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _87 = mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < return_data.size + 192
        _89 = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
        require _87 + (32 * _89) + 32 <= return_data.size
        idx = _87 + 224
        s = ceil32(return_data.size) + 224
        while idx < _87 + (32 * _89) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _89 < 1:
            revert with 'NH{q', 17
        if _89 - 1 >= _89:
            revert with 'NH{q', 50
        _173 = mem[(32 * _89 - 1) + ceil32(return_data.size) + 224]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _173
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
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp + 60
        call stor1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args _173, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _257 = mem[_255]
        require mem[_255] <= test266151307()
        require _255 + mem[_255] + 31 < _255 + return_data.size
        _259 = mem[_255 + mem[_255]]
        if mem[_255 + mem[_255]] > test266151307():
            revert with 'NH{q', 65
        if _255 + ceil32(return_data.size) + floor32(mem[_255 + mem[_255]]) + 1 > test266151307() or floor32(mem[_255 + mem[_255]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _255 + ceil32(return_data.size) + floor32(mem[_255 + mem[_255]]) + 1
        mem[_255 + ceil32(return_data.size)] = _259
        require _257 + (32 * _259) + 32 <= return_data.size
        idx = _255 + _257 + 32
        s = _255 + ceil32(return_data.size) + 32
        while idx < _255 + _257 + (32 * _259) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _259 < 1:
            revert with 'NH{q', 17
        if _259 - 1 >= _259:
            revert with 'NH{q', 50
        _334 = mem[(32 * _259 - 1) + _255 + ceil32(return_data.size) + 32]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = address(arg1)
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = stor3
        _339 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _334
        mem[mem[64] + 36] = 64
        _341 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _341:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _339 + (32 * _341) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _397 = mem[_395]
        require mem[_395] <= test266151307()
        require _395 + mem[_395] + 31 < _395 + return_data.size
        _399 = mem[_395 + mem[_395]]
        if mem[_395 + mem[_395]] > test266151307():
            revert with 'NH{q', 65
        if _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1 > test266151307() or floor32(mem[_395 + mem[_395]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1
        mem[_395 + ceil32(return_data.size)] = _399
        require _397 + (32 * _399) + 32 <= return_data.size
        idx = _395 + _397 + 32
        s = _395 + ceil32(return_data.size) + 32
        while idx < _395 + _397 + (32 * _399) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _399 < 1:
            revert with 'NH{q', 17
        if _399 - 1 >= _399:
            revert with 'NH{q', 50
        _445 = mem[(32 * _399 - 1) + _395 + ceil32(return_data.size) + 32]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _447 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _334
        mem[mem[64] + 36] = _445
        mem[mem[64] + 68] = 160
        _449 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < _449:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_447 + 100] = this.address
        mem[_447 + 132] = block.timestamp + 60
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _447 + (32 * _449) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _479 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _481 = mem[_479]
        require mem[_479] <= test266151307()
        require _479 + mem[_479] + 31 < _479 + return_data.size
        _483 = mem[_479 + mem[_479]]
        if mem[_479 + mem[_479]] > test266151307():
            revert with 'NH{q', 65
        if _479 + ceil32(return_data.size) + floor32(mem[_479 + mem[_479]]) + 1 > test266151307() or floor32(mem[_479 + mem[_479]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _479 + ceil32(return_data.size) + floor32(mem[_479 + mem[_479]]) + 1
        mem[_479 + ceil32(return_data.size)] = _483
        require _481 + (32 * _483) + 32 <= return_data.size
        idx = _479 + _481 + 32
        s = _479 + ceil32(return_data.size) + 32
        while idx < _479 + _481 + (32 * _483) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _483 < 1:
            revert with 'NH{q', 17
        if _483 - 1 >= _483:
            revert with 'NH{q', 50
        if mem[(32 * _483 - 1) + _479 + ceil32(return_data.size) + 32] < arg2:
            revert with 0, 'ILLEGAL_OUTPUT'
}

function sub_22be58a3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == stor0
    mem[96] = 2
    mem[128] = stor3
    mem[160] = address(arg1)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    if eth.balance(this.address) > arg2:
        mem[196] = arg2
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
        staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _86 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
        _88 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require _86 + (32 * _88) + 32 <= return_data.size
        idx = _86 + 224
        s = ceil32(return_data.size) + 224
        while idx < _86 + (32 * _88) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _88 < 1:
            revert with 'NH{q', 17
        if _88 - 1 >= _88:
            revert with 'NH{q', 50
        _172 = mem[(32 * _88 - 1) + ceil32(return_data.size) + 224]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _172
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
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp + 60
        call stor2.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 wei
             gas gas_remaining wei
            args _172, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_254]
        require mem[_254] <= test266151307()
        require _254 + mem[_254] + 31 < _254 + return_data.size
        _258 = mem[_254 + mem[_254]]
        if mem[_254 + mem[_254]] > test266151307():
            revert with 'NH{q', 65
        if _254 + ceil32(return_data.size) + floor32(mem[_254 + mem[_254]]) + 1 > test266151307() or floor32(mem[_254 + mem[_254]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _254 + ceil32(return_data.size) + floor32(mem[_254 + mem[_254]]) + 1
        mem[_254 + ceil32(return_data.size)] = _258
        require _256 + (32 * _258) + 32 <= return_data.size
        idx = _254 + _256 + 32
        s = _254 + ceil32(return_data.size) + 32
        while idx < _254 + _256 + (32 * _258) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _258 < 1:
            revert with 'NH{q', 17
        if _258 - 1 >= _258:
            revert with 'NH{q', 50
        _332 = mem[(32 * _258 - 1) + _254 + ceil32(return_data.size) + 32]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = address(arg1)
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = stor3
        _338 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _332
        mem[mem[64] + 36] = 64
        _340 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _340:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor1.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _338 + (32 * _340) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_394]
        require mem[_394] <= test266151307()
        require _394 + mem[_394] + 31 < _394 + return_data.size
        _398 = mem[_394 + mem[_394]]
        if mem[_394 + mem[_394]] > test266151307():
            revert with 'NH{q', 65
        if _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1 > test266151307() or floor32(mem[_394 + mem[_394]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1
        mem[_394 + ceil32(return_data.size)] = _398
        require _396 + (32 * _398) + 32 <= return_data.size
        idx = _394 + _396 + 32
        s = _394 + ceil32(return_data.size) + 32
        while idx < _394 + _396 + (32 * _398) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _398 < 1:
            revert with 'NH{q', 17
        if _398 - 1 >= _398:
            revert with 'NH{q', 50
        _444 = mem[(32 * _398 - 1) + _394 + ceil32(return_data.size) + 32]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _446 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _332
        mem[mem[64] + 36] = _444
        mem[mem[64] + 68] = 160
        _448 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < _448:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_446 + 100] = this.address
        mem[_446 + 132] = block.timestamp + 60
        call stor1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _446 + (32 * _448) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _478 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _480 = mem[_478]
        require mem[_478] <= test266151307()
        require _478 + mem[_478] + 31 < _478 + return_data.size
        _482 = mem[_478 + mem[_478]]
        if mem[_478 + mem[_478]] > test266151307():
            revert with 'NH{q', 65
        if _478 + ceil32(return_data.size) + floor32(mem[_478 + mem[_478]]) + 1 > test266151307() or floor32(mem[_478 + mem[_478]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _478 + ceil32(return_data.size) + floor32(mem[_478 + mem[_478]]) + 1
        mem[_478 + ceil32(return_data.size)] = _482
        require _480 + (32 * _482) + 32 <= return_data.size
        idx = _478 + _480 + 32
        s = _478 + ceil32(return_data.size) + 32
        while idx < _478 + _480 + (32 * _482) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _482 < 1:
            revert with 'NH{q', 17
        if _482 - 1 >= _482:
            revert with 'NH{q', 50
        if mem[(32 * _482 - 1) + _478 + ceil32(return_data.size) + 32] < arg2:
            revert with 0, 'ILLEGAL_OUTPUT'
    else:
        mem[196] = eth.balance(this.address)
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
        staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _87 = mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < return_data.size + 192
        _89 = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
        require _87 + (32 * _89) + 32 <= return_data.size
        idx = _87 + 224
        s = ceil32(return_data.size) + 224
        while idx < _87 + (32 * _89) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _89 < 1:
            revert with 'NH{q', 17
        if _89 - 1 >= _89:
            revert with 'NH{q', 50
        _173 = mem[(32 * _89 - 1) + ceil32(return_data.size) + 224]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _173
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
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp + 60
        call stor2.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args _173, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _257 = mem[_255]
        require mem[_255] <= test266151307()
        require _255 + mem[_255] + 31 < _255 + return_data.size
        _259 = mem[_255 + mem[_255]]
        if mem[_255 + mem[_255]] > test266151307():
            revert with 'NH{q', 65
        if _255 + ceil32(return_data.size) + floor32(mem[_255 + mem[_255]]) + 1 > test266151307() or floor32(mem[_255 + mem[_255]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _255 + ceil32(return_data.size) + floor32(mem[_255 + mem[_255]]) + 1
        mem[_255 + ceil32(return_data.size)] = _259
        require _257 + (32 * _259) + 32 <= return_data.size
        idx = _255 + _257 + 32
        s = _255 + ceil32(return_data.size) + 32
        while idx < _255 + _257 + (32 * _259) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _259 < 1:
            revert with 'NH{q', 17
        if _259 - 1 >= _259:
            revert with 'NH{q', 50
        _334 = mem[(32 * _259 - 1) + _255 + ceil32(return_data.size) + 32]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = address(arg1)
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = stor3
        _339 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _334
        mem[mem[64] + 36] = 64
        _341 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _341:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall stor1.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _339 + (32 * _341) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _397 = mem[_395]
        require mem[_395] <= test266151307()
        require _395 + mem[_395] + 31 < _395 + return_data.size
        _399 = mem[_395 + mem[_395]]
        if mem[_395 + mem[_395]] > test266151307():
            revert with 'NH{q', 65
        if _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1 > test266151307() or floor32(mem[_395 + mem[_395]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1
        mem[_395 + ceil32(return_data.size)] = _399
        require _397 + (32 * _399) + 32 <= return_data.size
        idx = _395 + _397 + 32
        s = _395 + ceil32(return_data.size) + 32
        while idx < _395 + _397 + (32 * _399) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _399 < 1:
            revert with 'NH{q', 17
        if _399 - 1 >= _399:
            revert with 'NH{q', 50
        _445 = mem[(32 * _399 - 1) + _395 + ceil32(return_data.size) + 32]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _447 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _334
        mem[mem[64] + 36] = _445
        mem[mem[64] + 68] = 160
        _449 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < _449:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_447 + 100] = this.address
        mem[_447 + 132] = block.timestamp + 60
        call stor1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _447 + (32 * _449) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _479 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _481 = mem[_479]
        require mem[_479] <= test266151307()
        require _479 + mem[_479] + 31 < _479 + return_data.size
        _483 = mem[_479 + mem[_479]]
        if mem[_479 + mem[_479]] > test266151307():
            revert with 'NH{q', 65
        if _479 + ceil32(return_data.size) + floor32(mem[_479 + mem[_479]]) + 1 > test266151307() or floor32(mem[_479 + mem[_479]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _479 + ceil32(return_data.size) + floor32(mem[_479 + mem[_479]]) + 1
        mem[_479 + ceil32(return_data.size)] = _483
        require _481 + (32 * _483) + 32 <= return_data.size
        idx = _479 + _481 + 32
        s = _479 + ceil32(return_data.size) + 32
        while idx < _479 + _481 + (32 * _483) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _483 < 1:
            revert with 'NH{q', 17
        if _483 - 1 >= _483:
            revert with 'NH{q', 50
        if mem[(32 * _483 - 1) + _479 + ceil32(return_data.size) + 32] < arg2:
            revert with 0, 'ILLEGAL_OUTPUT'
}



}
