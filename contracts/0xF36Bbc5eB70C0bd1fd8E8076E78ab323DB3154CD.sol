contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function sub_6df586b2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'f'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function arb(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '1'
    mem[100] = stor0
    mem[132] = this.address
    mem[164] = arg1
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args stor0, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 128] = stor3
    mem[ceil32(return_data.size) + 160] = stor4
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _44 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
    _45 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = _45
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _44 + 320
    s = (2 * ceil32(return_data.size)) + 320
    while idx < ceil32(return_data.size) + _44 + (32 * _45) + 320:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _45:
        revert with 'NH{q', 50
    _87 = mem[(2 * ceil32(return_data.size)) + 352]
    if mem[(2 * ceil32(return_data.size)) + 352] < mem[(2 * ceil32(return_data.size)) + 352] / 50:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = _87 - (_87 / 50)
    mem[mem[64] + 68] = 160
    _89 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _89:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, _87 - (_87 / 50), 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _89) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _148 = mem[_147]
    require mem[_147] == mem[_147]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _148
    mem[mem[64] + 36] = 64
    _150 = mem[ceil32(return_data.size) + 192]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 192]
    idx = 0
    s = ceil32(return_data.size) + 224
    t = mem[64] + 100
    while idx < _150:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _148, 64, mem[mem[64] + 68 len (32 * _150) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _236 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _237 = mem[_236]
    require mem[_236] <= test266151307()
    require _236 + mem[_236] + 31 < _236 + return_data.size
    _238 = mem[_236 + mem[_236]]
    if mem[_236 + mem[_236]] > test266151307():
        revert with 'NH{q', 65
    if _236 + ceil32(return_data.size) + floor32(mem[_236 + mem[_236]]) + 1 > test266151307() or floor32(mem[_236 + mem[_236]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _236 + ceil32(return_data.size) + floor32(mem[_236 + mem[_236]]) + 1
    mem[_236 + ceil32(return_data.size)] = _238
    require _237 + (32 * _238) + 32 <= return_data.size
    idx = _236 + _237 + 32
    s = _236 + ceil32(return_data.size) + 32
    while idx < _236 + _237 + (32 * _238) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 2 >= _238:
        revert with 'NH{q', 50
    _321 = mem[_236 + ceil32(return_data.size) + 96]
    if mem[_236 + ceil32(return_data.size) + 96] < mem[_236 + ceil32(return_data.size) + 96] / 50:
        revert with 'NH{q', 17
    _322 = mem[64]
    mem[mem[64] + 36] = _148
    mem[mem[64] + 68] = _321 - (_321 / 50)
    mem[mem[64] + 100] = 160
    _323 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 196] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 228
    while idx < _323:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    _399 = mem[64]
    mem[mem[64]] = (32 * _323) + 196
    mem[64] = mem[64] + (32 * _323) + 228
    mem[_399 + 32 len 4] = 1888616881
    _402 = mem[_399]
    mem[_322 + (32 * _323) + 228 len ceil32(mem[_399])] = mem[_399 + 32 len ceil32(mem[_399])]
    if ceil32(_402) <= _402:
        call 0x57ee0429d413bdfbd725cb4cac81ef659f2e1c43 with:
           funct Mask(32, 224, (32 * _323) + 196) >> 224
             gas gas_remaining wei
            args mem[mem[64] + 4 len _322 + (32 * _323) + _402 + -mem[64] + 224]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'NON PROFIT'
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_491] == mem[_491]
            if mem[_491] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _521 = mem[_513]
            require mem[_513] == mem[_513]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _521
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _521
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _531 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_531] == bool(mem[_531])
        else:
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_474] = return_data.size
            mem[_474 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'NON PROFIT'
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _492 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_492] == mem[_492]
            if mem[_492] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _522 = mem[_514]
            require mem[_514] == mem[_514]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _522
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _522
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_532] == bool(mem[_532])
    else:
        mem[_322 + (32 * _323) + _402 + 228] = 0
        call 0x57ee0429d413bdfbd725cb4cac81ef659f2e1c43 with:
           funct Mask(32, 224, (32 * _323) + 196) >> 224
             gas gas_remaining wei
            args mem[mem[64] + 4 len _322 + (32 * _323) + _402 + -mem[64] + 224]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'NON PROFIT'
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_495] == mem[_495]
            if mem[_495] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _523 = mem[_519]
            require mem[_519] == mem[_519]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _523
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _523
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _535 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_535] == bool(mem[_535])
        else:
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_476] = return_data.size
            mem[_476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'NON PROFIT'
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_496] == mem[_496]
            if mem[_496] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _524 = mem[_520]
            require mem[_520] == mem[_520]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _524
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _524
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_536] == bool(mem[_536])
}

function sub_e0a9a357(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '1'
    mem[100] = stor0
    mem[132] = this.address
    mem[164] = arg1
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args stor0, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 128] = stor4
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 224
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _83 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
    _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = _84
    require _83 + (32 * _84) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _83 + 320
    s = (2 * ceil32(return_data.size)) + 320
    while idx < ceil32(return_data.size) + _83 + (32 * _84) + 320:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _84:
        revert with 'NH{q', 50
    _179 = mem[(2 * ceil32(return_data.size)) + 352]
    if mem[(2 * ceil32(return_data.size)) + 352] < mem[(2 * ceil32(return_data.size)) + 352] / 50:
        revert with 'NH{q', 17
    _180 = mem[64]
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = _179 - (_179 / 50)
    mem[mem[64] + 100] = 160
    _181 = mem[ceil32(return_data.size) + 192]
    mem[mem[64] + 196] = mem[ceil32(return_data.size) + 192]
    idx = 0
    s = ceil32(return_data.size) + 224
    t = mem[64] + 228
    while idx < _181:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    _289 = mem[64]
    mem[mem[64]] = (32 * _181) + 196
    mem[64] = mem[64] + (32 * _181) + 228
    mem[_289 + 32 len 4] = 1888616881
    _292 = mem[_289]
    mem[_180 + (32 * _181) + 228 len ceil32(mem[_289])] = mem[_289 + 32 len ceil32(mem[_289])]
    if ceil32(_292) <= _292:
        call 0x57ee0429d413bdfbd725cb4cac81ef659f2e1c43 with:
           funct Mask(32, 224, (32 * _181) + 196) >> 224
             gas gas_remaining wei
            args mem[mem[64] + 4 len _180 + (32 * _181) + _292 + -mem[64] + 224]
        if not return_data.size:
            require ext_call.success
            mem[mem[64] + 4] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _447 = mem[_441]
            require mem[_441] == mem[_441]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _447
            mem[mem[64] + 36] = 64
            _455 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 100
            while idx < _455:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _447, 64, mem[mem[64] + 68 len (32 * _455) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _575 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _579 = mem[_575]
            require mem[_575] <= test266151307()
            require _575 + mem[_575] + 31 < _575 + return_data.size
            _583 = mem[_575 + mem[_575]]
            if mem[_575 + mem[_575]] > test266151307():
                revert with 'NH{q', 65
            if _575 + ceil32(return_data.size) + floor32(mem[_575 + mem[_575]]) + 1 > test266151307() or floor32(mem[_575 + mem[_575]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _575 + ceil32(return_data.size) + floor32(mem[_575 + mem[_575]]) + 1
            mem[_575 + ceil32(return_data.size)] = _583
            require _579 + (32 * _583) + 32 <= return_data.size
            idx = _575 + _579 + 32
            s = _575 + ceil32(return_data.size) + 32
            while idx < _575 + _579 + (32 * _583) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 2 >= _583:
                revert with 'NH{q', 50
            _683 = mem[_575 + ceil32(return_data.size) + 96]
            if mem[_575 + ceil32(return_data.size) + 96] < mem[_575 + ceil32(return_data.size) + 96] / 50:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _447
            mem[mem[64] + 36] = _683 - (_683 / 50)
            mem[mem[64] + 68] = 160
            _691 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _691:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _447, _683 - (_683 / 50), 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _691) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _775 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_775] == mem[_775]
            if mem[_775] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _799 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _803 = mem[_799]
            require mem[_799] == mem[_799]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _803
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _803
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _815 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_815] == bool(mem[_815])
        else:
            _432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_432] = return_data.size
            mem[_432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[mem[64] + 4] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _448 = mem[_442]
            require mem[_442] == mem[_442]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _448
            mem[mem[64] + 36] = 64
            _456 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 100
            while idx < _456:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _448, 64, mem[mem[64] + 68 len (32 * _456) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _580 = mem[_576]
            require mem[_576] <= test266151307()
            require _576 + mem[_576] + 31 < _576 + return_data.size
            _584 = mem[_576 + mem[_576]]
            if mem[_576 + mem[_576]] > test266151307():
                revert with 'NH{q', 65
            if _576 + ceil32(return_data.size) + floor32(mem[_576 + mem[_576]]) + 1 > test266151307() or floor32(mem[_576 + mem[_576]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _576 + ceil32(return_data.size) + floor32(mem[_576 + mem[_576]]) + 1
            mem[_576 + ceil32(return_data.size)] = _584
            require _580 + (32 * _584) + 32 <= return_data.size
            idx = _576 + _580 + 32
            s = _576 + ceil32(return_data.size) + 32
            while idx < _576 + _580 + (32 * _584) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 2 >= _584:
                revert with 'NH{q', 50
            _684 = mem[_576 + ceil32(return_data.size) + 96]
            if mem[_576 + ceil32(return_data.size) + 96] < mem[_576 + ceil32(return_data.size) + 96] / 50:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _448
            mem[mem[64] + 36] = _684 - (_684 / 50)
            mem[mem[64] + 68] = 160
            _692 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _692:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _448, _684 - (_684 / 50), 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _692) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_776] == mem[_776]
            if mem[_776] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _804 = mem[_800]
            require mem[_800] == mem[_800]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _804
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _804
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _816 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_816] == bool(mem[_816])
    else:
        mem[_180 + (32 * _181) + _292 + 228] = 0
        call 0x57ee0429d413bdfbd725cb4cac81ef659f2e1c43 with:
           funct Mask(32, 224, (32 * _181) + 196) >> 224
             gas gas_remaining wei
            args mem[mem[64] + 4 len _180 + (32 * _181) + _292 + -mem[64] + 224]
        if not return_data.size:
            require ext_call.success
            mem[mem[64] + 4] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _449 = mem[_445]
            require mem[_445] == mem[_445]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _449
            mem[mem[64] + 36] = 64
            _457 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 100
            while idx < _457:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _449, 64, mem[mem[64] + 68 len (32 * _457) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _577 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _581 = mem[_577]
            require mem[_577] <= test266151307()
            require _577 + mem[_577] + 31 < _577 + return_data.size
            _585 = mem[_577 + mem[_577]]
            if mem[_577 + mem[_577]] > test266151307():
                revert with 'NH{q', 65
            if _577 + ceil32(return_data.size) + floor32(mem[_577 + mem[_577]]) + 1 > test266151307() or floor32(mem[_577 + mem[_577]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _577 + ceil32(return_data.size) + floor32(mem[_577 + mem[_577]]) + 1
            mem[_577 + ceil32(return_data.size)] = _585
            require _581 + (32 * _585) + 32 <= return_data.size
            idx = _577 + _581 + 32
            s = _577 + ceil32(return_data.size) + 32
            while idx < _577 + _581 + (32 * _585) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 2 >= _585:
                revert with 'NH{q', 50
            _685 = mem[_577 + ceil32(return_data.size) + 96]
            if mem[_577 + ceil32(return_data.size) + 96] < mem[_577 + ceil32(return_data.size) + 96] / 50:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _449
            mem[mem[64] + 36] = _685 - (_685 / 50)
            mem[mem[64] + 68] = 160
            _693 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _693:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _449, _685 - (_685 / 50), 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _693) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_777] == mem[_777]
            if mem[_777] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _805 = mem[_801]
            require mem[_801] == mem[_801]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _805
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _805
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == bool(mem[_817])
        else:
            _434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_434] = return_data.size
            mem[_434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[mem[64] + 4] = this.address
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _450 = mem[_446]
            require mem[_446] == mem[_446]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _450
            mem[mem[64] + 36] = 64
            _458 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 100
            while idx < _458:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _450, 64, mem[mem[64] + 68 len (32 * _458) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _578 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _582 = mem[_578]
            require mem[_578] <= test266151307()
            require _578 + mem[_578] + 31 < _578 + return_data.size
            _586 = mem[_578 + mem[_578]]
            if mem[_578 + mem[_578]] > test266151307():
                revert with 'NH{q', 65
            if _578 + ceil32(return_data.size) + floor32(mem[_578 + mem[_578]]) + 1 > test266151307() or floor32(mem[_578 + mem[_578]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _578 + ceil32(return_data.size) + floor32(mem[_578 + mem[_578]]) + 1
            mem[_578 + ceil32(return_data.size)] = _586
            require _582 + (32 * _586) + 32 <= return_data.size
            idx = _578 + _582 + 32
            s = _578 + ceil32(return_data.size) + 32
            while idx < _578 + _582 + (32 * _586) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 2 >= _586:
                revert with 'NH{q', 50
            _686 = mem[_578 + ceil32(return_data.size) + 96]
            if mem[_578 + ceil32(return_data.size) + 96] < mem[_578 + ceil32(return_data.size) + 96] / 50:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _450
            mem[mem[64] + 36] = _686 - (_686 / 50)
            mem[mem[64] + 68] = 160
            _694 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _694:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _450, _686 - (_686 / 50), 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _694) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > -5000000000000000001:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_778] == mem[_778]
            if mem[_778] <= arg1 + 5 * 10^18:
                revert with 0, 'NON PROFIT'
            mem[mem[64] + 4] = this.address
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _802 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _806 = mem[_802]
            require mem[_802] == mem[_802]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _806
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _806
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_818] == bool(mem[_818])
}



}
