contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;

function _fallback() payable {
    revert
}

function getTradeCoin_erc20() payable {
    return stor4, stor3
}

function balanceOf_erc20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function approve_erc20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'fuck you'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setTradeCoin_erc20(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'fuck you'
    stor4 = arg1
    stor3 = arg2
    stor7 = 0
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function quote_erc20(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'fuck you'
    staticcall stor5.quote(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getReserves_erc20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function test_erc20() payable {
    mem[64] = 96
    idx = 0
    while idx < stor2:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = stor1[idx].field_0
        mem[mem[64] + 36] = stor3
        staticcall stor6.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[idx].field_0, stor3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_10] == mem[_10 + 12 len 20]
        if not mem[_10 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor1.length:
            revert with 'NH{q', 50
}

function withdrawal_erc20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'fuck you'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 <= ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getMidCoin_erc20() payable {
    mem[64] = 96
    idx = 0
    while idx < stor2:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = stor1[idx].field_0
        mem[mem[64] + 36] = stor3
        staticcall stor6.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[idx].field_0, stor3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16 + 12 len 20]
        if not mem[_16 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor1.length:
            revert with 'NH{q', 50
        return stor1[idx].field_0
    return 0
}

function getMidCoins_erc20() payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = (32 * stor1.length) + 192
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function setMidCoins_erc20(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'fuck you'
    stor2 = arg1.length
    if stor2 > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = stor2
    if stor2:
        mem[floor32(arg1.length) + 129 len 32 * stor2] = call.data[calldata.size len 32 * stor2]
    stor1.length = stor2
    if not stor2:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = floor32(arg1.length) + 129
        while floor32(arg1.length) + (32 * stor2) + 129 > idx:
            stor1[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor2) + 31) >> 5
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor2:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        stor1[idx].field_0 = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getAmountsOut_erc20(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[floor32(arg2.length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + 101] = arg1
    mem[floor32(arg2.length) + 133] = 64
    mem[floor32(arg2.length) + 165] = arg2.length
    idx = 0
    s = 128
    t = floor32(arg2.length) + 197
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=mem[floor32(arg2.length) + 197 len 32 * arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _31 = mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32
    require mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 128 < floor32(arg2.length) + return_data.size + 97
    _32 = mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
    if mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + ceil32(return_data.size) + floor32(mem[floor32(arg2.length) + mem[floor32(arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 98
    mem[floor32(arg2.length) + ceil32(return_data.size) + 97] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = floor32(arg2.length) + _31 + 129
    s = floor32(arg2.length) + ceil32(return_data.size) + 129
    while idx < floor32(arg2.length) + _31 + (32 * _32) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[floor32(arg2.length) + ceil32(return_data.size) + 129 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function swapExactTokensForTokens_erc20(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 == arg4
    require arg5 == arg5
    mem[floor32(arg3.length) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(arg3.length) + 101] = arg1
    mem[floor32(arg3.length) + 133] = arg2
    mem[floor32(arg3.length) + 165] = 160
    mem[floor32(arg3.length) + 261] = arg3.length
    idx = 0
    s = 128
    t = floor32(arg3.length) + 293
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg3.length) + 197] = stor0
    mem[floor32(arg3.length) + 229] = arg5
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=arg3.length, data=mem[floor32(arg3.length) + 293 len 32 * arg3.length]), stor0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg3.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _23 = mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32
    require mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 128 < floor32(arg3.length) + return_data.size + 97
    _24 = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
    if mem[floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + ceil32(return_data.size) + floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + ceil32(return_data.size) + 97] = mem[floor32(arg3.length) + mem[floor32(arg3.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = floor32(arg3.length) + _23 + 129
    s = floor32(arg3.length) + ceil32(return_data.size) + 129
    while idx < floor32(arg3.length) + _23 + (32 * _24) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}

function buy_erc20() payable {
    mem[64] = 96
    if stor7:
        revert with 0, 'had'
    idx = 0
    while idx < stor2:
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64] + 4] = stor1[idx].field_0
        mem[mem[64] + 36] = stor3
        staticcall stor6.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[idx].field_0, stor3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if not mem[_45 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if stor1[idx].field_0:
            stor7 = 1
            if stor4 != stor1[idx].field_0:
                _48 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_48]:
                    revert with 'NH{q', 50
                mem[_48 + 32] = stor4
                if 1 >= mem[_48]:
                    revert with 'NH{q', 50
                mem[_48 + 64] = stor1[idx].field_0
                if 2 >= mem[_48]:
                    revert with 'NH{q', 50
                mem[_48 + 96] = stor3
                mem[_48 + 132] = this.address
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_48 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _48 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_48 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_48 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    mem[_48 + ceil32(return_data.size) + 164] = 0
                    mem[_48 + ceil32(return_data.size) + 196] = 160
                    mem[_48 + ceil32(return_data.size) + 292] = mem[_48]
                    idx = 0
                    s = _48 + 32
                    t = _48 + ceil32(return_data.size) + 324
                    while idx < mem[_48]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_48 + ceil32(return_data.size) + 228] = stor0
                    mem[_48 + ceil32(return_data.size) + 260] = block.timestamp + 300
                    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, stor0, block.timestamp + 300, mem[_48 + ceil32(return_data.size) + 292 len (32 * mem[_48]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_48 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _48 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _87 = mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require _48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 159 < _48 + ceil32(return_data.size) + return_data.size + 128
                    _89 = mem[_48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[_48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if _48 + (2 * ceil32(return_data.size)) + floor32(mem[_48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[_48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[_48 + (2 * ceil32(return_data.size)) + 128] = mem[_48 + ceil32(return_data.size) + mem[_48 + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    require _87 + (32 * _89) + 32 <= return_data.size
                    idx = _48 + ceil32(return_data.size) + _87 + 160
                    s = _48 + (2 * ceil32(return_data.size)) + 160
                    while idx < _48 + ceil32(return_data.size) + _87 + (32 * _89) + 160:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
            else:
                _49 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_49]:
                    revert with 'NH{q', 50
                mem[_49 + 32] = stor4
                if 1 >= mem[_49]:
                    revert with 'NH{q', 50
                mem[_49 + 64] = stor3
                mem[_49 + 100] = this.address
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_49 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _49 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_49 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_49 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                    mem[_49 + ceil32(return_data.size) + 132] = 0
                    mem[_49 + ceil32(return_data.size) + 164] = 160
                    mem[_49 + ceil32(return_data.size) + 260] = mem[_49]
                    idx = 0
                    s = _49 + 32
                    t = _49 + ceil32(return_data.size) + 292
                    while idx < mem[_49]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_49 + ceil32(return_data.size) + 196] = stor0
                    mem[_49 + ceil32(return_data.size) + 228] = block.timestamp + 300
                    call stor5.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _49 + ceil32(return_data.size) + (32 * mem[_49]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _86 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _88 = mem[_86]
                    require mem[_86] <= test266151307()
                    require _86 + mem[_86] + 31 < _86 + return_data.size
                    _90 = mem[_86 + mem[_86]]
                    if mem[_86 + mem[_86]] > test266151307():
                        revert with 'NH{q', 65
                    if _86 + ceil32(return_data.size) + floor32(mem[_86 + mem[_86]]) + 1 > test266151307() or floor32(mem[_86 + mem[_86]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _86 + ceil32(return_data.size) + floor32(mem[_86 + mem[_86]]) + 1
                    mem[_86 + ceil32(return_data.size)] = _90
                    require _88 + (32 * _90) + 32 <= return_data.size
                    idx = _86 + _88 + 32
                    s = _86 + ceil32(return_data.size) + 32
                    while idx < _86 + _88 + (32 * _90) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
}



}
