contract main {




// =====================  Runtime code  =====================


const deposit = 1


address stor0;
address stor1;
address stor2;

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

function withdrawCoin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setApprove(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _660 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _684 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _684
                    require _660 + (32 * _684) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _660 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _660 + (32 * _684) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _684:
                        revert with 'NH{q', 50
                    _1212 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1212
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1212, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1644 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1668 = mem[_1644]
                    require mem[_1644] <= test266151307()
                    require _1644 + mem[_1644] + 31 < _1644 + return_data.size
                    _1692 = mem[_1644 + mem[_1644]]
                    if mem[_1644 + mem[_1644]] > test266151307():
                        revert with 'NH{q', 65
                    if _1644 + ceil32(return_data.size) + floor32(mem[_1644 + mem[_1644]]) + 1 > test266151307() or floor32(mem[_1644 + mem[_1644]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1644 + ceil32(return_data.size) + floor32(mem[_1644 + mem[_1644]]) + 1
                    mem[_1644 + ceil32(return_data.size)] = _1692
                    require _1668 + (32 * _1692) + 32 <= return_data.size
                    idx = _1644 + _1668 + 32
                    s = _1644 + ceil32(return_data.size) + 32
                    while idx < _1644 + _1668 + (32 * _1692) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1692:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1212
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1212
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2028] == bool(mem[_2028])
                else:
                    _661 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _685 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _685
                    require _661 + (32 * _685) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _661 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _661 + (32 * _685) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _685:
                        revert with 'NH{q', 50
                    _1213 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1213
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1213, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1669 = mem[_1645]
                    require mem[_1645] <= test266151307()
                    require _1645 + mem[_1645] + 31 < _1645 + return_data.size
                    _1693 = mem[_1645 + mem[_1645]]
                    if mem[_1645 + mem[_1645]] > test266151307():
                        revert with 'NH{q', 65
                    if _1645 + ceil32(return_data.size) + floor32(mem[_1645 + mem[_1645]]) + 1 > test266151307() or floor32(mem[_1645 + mem[_1645]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1645 + ceil32(return_data.size) + floor32(mem[_1645 + mem[_1645]]) + 1
                    mem[_1645 + ceil32(return_data.size)] = _1693
                    require _1669 + (32 * _1693) + 32 <= return_data.size
                    idx = _1645 + _1669 + 32
                    s = _1645 + ceil32(return_data.size) + 32
                    while idx < _1645 + _1669 + (32 * _1693) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1693:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1213
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1213
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2029] == bool(mem[_2029])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _662 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _686 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _686
                    require _662 + (32 * _686) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _662 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _662 + (32 * _686) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _686:
                        revert with 'NH{q', 50
                    _1214 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1214
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1214, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1646 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1670 = mem[_1646]
                    require mem[_1646] <= test266151307()
                    require _1646 + mem[_1646] + 31 < _1646 + return_data.size
                    _1694 = mem[_1646 + mem[_1646]]
                    if mem[_1646 + mem[_1646]] > test266151307():
                        revert with 'NH{q', 65
                    if _1646 + ceil32(return_data.size) + floor32(mem[_1646 + mem[_1646]]) + 1 > test266151307() or floor32(mem[_1646 + mem[_1646]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1646 + ceil32(return_data.size) + floor32(mem[_1646 + mem[_1646]]) + 1
                    mem[_1646 + ceil32(return_data.size)] = _1694
                    require _1670 + (32 * _1694) + 32 <= return_data.size
                    idx = _1646 + _1670 + 32
                    s = _1646 + ceil32(return_data.size) + 32
                    while idx < _1646 + _1670 + (32 * _1694) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1694:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1214
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1214
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2030] == bool(mem[_2030])
                else:
                    _663 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _687 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _687
                    require _663 + (32 * _687) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _663 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _663 + (32 * _687) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _687:
                        revert with 'NH{q', 50
                    _1215 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1215
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1215, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1647 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1671 = mem[_1647]
                    require mem[_1647] <= test266151307()
                    require _1647 + mem[_1647] + 31 < _1647 + return_data.size
                    _1695 = mem[_1647 + mem[_1647]]
                    if mem[_1647 + mem[_1647]] > test266151307():
                        revert with 'NH{q', 65
                    if _1647 + ceil32(return_data.size) + floor32(mem[_1647 + mem[_1647]]) + 1 > test266151307() or floor32(mem[_1647 + mem[_1647]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1647 + ceil32(return_data.size) + floor32(mem[_1647 + mem[_1647]]) + 1
                    mem[_1647 + ceil32(return_data.size)] = _1695
                    require _1671 + (32 * _1695) + 32 <= return_data.size
                    idx = _1647 + _1671 + 32
                    s = _1647 + ceil32(return_data.size) + 32
                    while idx < _1647 + _1671 + (32 * _1695) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1695:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1215
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1215
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2031] == bool(mem[_2031])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _664 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _688 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _688
                        require _664 + (32 * _688) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _664 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _664 + (32 * _688) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _688:
                            revert with 'NH{q', 50
                        _1216 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1216
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1216, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1648 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1672 = mem[_1648]
                        require mem[_1648] <= test266151307()
                        require _1648 + mem[_1648] + 31 < _1648 + return_data.size
                        _1696 = mem[_1648 + mem[_1648]]
                        if mem[_1648 + mem[_1648]] > test266151307():
                            revert with 'NH{q', 65
                        if _1648 + ceil32(return_data.size) + floor32(mem[_1648 + mem[_1648]]) + 1 > test266151307() or floor32(mem[_1648 + mem[_1648]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1648 + ceil32(return_data.size) + floor32(mem[_1648 + mem[_1648]]) + 1
                        mem[_1648 + ceil32(return_data.size)] = _1696
                        require _1672 + (32 * _1696) + 32 <= return_data.size
                        idx = _1648 + _1672 + 32
                        s = _1648 + ceil32(return_data.size) + 32
                        while idx < _1648 + _1672 + (32 * _1696) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1696:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1216
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1216
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2032 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2032] == bool(mem[_2032])
                    else:
                        _665 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _689 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _689
                        require _665 + (32 * _689) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _665 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _665 + (32 * _689) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _689:
                            revert with 'NH{q', 50
                        _1217 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1217
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1217, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1649 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1673 = mem[_1649]
                        require mem[_1649] <= test266151307()
                        require _1649 + mem[_1649] + 31 < _1649 + return_data.size
                        _1697 = mem[_1649 + mem[_1649]]
                        if mem[_1649 + mem[_1649]] > test266151307():
                            revert with 'NH{q', 65
                        if _1649 + ceil32(return_data.size) + floor32(mem[_1649 + mem[_1649]]) + 1 > test266151307() or floor32(mem[_1649 + mem[_1649]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1649 + ceil32(return_data.size) + floor32(mem[_1649 + mem[_1649]]) + 1
                        mem[_1649 + ceil32(return_data.size)] = _1697
                        require _1673 + (32 * _1697) + 32 <= return_data.size
                        idx = _1649 + _1673 + 32
                        s = _1649 + ceil32(return_data.size) + 32
                        while idx < _1649 + _1673 + (32 * _1697) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1697:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1217
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1217
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2033 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2033] == bool(mem[_2033])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _666 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _690 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _690
                        require _666 + (32 * _690) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _666 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _666 + (32 * _690) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _690:
                            revert with 'NH{q', 50
                        _1218 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1218
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1218, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1650 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1674 = mem[_1650]
                        require mem[_1650] <= test266151307()
                        require _1650 + mem[_1650] + 31 < _1650 + return_data.size
                        _1698 = mem[_1650 + mem[_1650]]
                        if mem[_1650 + mem[_1650]] > test266151307():
                            revert with 'NH{q', 65
                        if _1650 + ceil32(return_data.size) + floor32(mem[_1650 + mem[_1650]]) + 1 > test266151307() or floor32(mem[_1650 + mem[_1650]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1650 + ceil32(return_data.size) + floor32(mem[_1650 + mem[_1650]]) + 1
                        mem[_1650 + ceil32(return_data.size)] = _1698
                        require _1674 + (32 * _1698) + 32 <= return_data.size
                        idx = _1650 + _1674 + 32
                        s = _1650 + ceil32(return_data.size) + 32
                        while idx < _1650 + _1674 + (32 * _1698) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1698:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1218
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1218
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2034] == bool(mem[_2034])
                    else:
                        _667 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _691 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _691
                        require _667 + (32 * _691) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _667 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _667 + (32 * _691) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _691:
                            revert with 'NH{q', 50
                        _1219 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1219
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1219, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1651 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1675 = mem[_1651]
                        require mem[_1651] <= test266151307()
                        require _1651 + mem[_1651] + 31 < _1651 + return_data.size
                        _1699 = mem[_1651 + mem[_1651]]
                        if mem[_1651 + mem[_1651]] > test266151307():
                            revert with 'NH{q', 65
                        if _1651 + ceil32(return_data.size) + floor32(mem[_1651 + mem[_1651]]) + 1 > test266151307() or floor32(mem[_1651 + mem[_1651]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1651 + ceil32(return_data.size) + floor32(mem[_1651 + mem[_1651]]) + 1
                        mem[_1651 + ceil32(return_data.size)] = _1699
                        require _1675 + (32 * _1699) + 32 <= return_data.size
                        idx = _1651 + _1675 + 32
                        s = _1651 + ceil32(return_data.size) + 32
                        while idx < _1651 + _1675 + (32 * _1699) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1699:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1219
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1219
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2035 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2035] == bool(mem[_2035])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _668 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _692 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _692
                        require _668 + (32 * _692) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _668 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _668 + (32 * _692) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _692:
                            revert with 'NH{q', 50
                        _1220 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1220
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1220, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1652 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1676 = mem[_1652]
                        require mem[_1652] <= test266151307()
                        require _1652 + mem[_1652] + 31 < _1652 + return_data.size
                        _1700 = mem[_1652 + mem[_1652]]
                        if mem[_1652 + mem[_1652]] > test266151307():
                            revert with 'NH{q', 65
                        if _1652 + ceil32(return_data.size) + floor32(mem[_1652 + mem[_1652]]) + 1 > test266151307() or floor32(mem[_1652 + mem[_1652]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1652 + ceil32(return_data.size) + floor32(mem[_1652 + mem[_1652]]) + 1
                        mem[_1652 + ceil32(return_data.size)] = _1700
                        require _1676 + (32 * _1700) + 32 <= return_data.size
                        idx = _1652 + _1676 + 32
                        s = _1652 + ceil32(return_data.size) + 32
                        while idx < _1652 + _1676 + (32 * _1700) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1700:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1220
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1220
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2036 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2036] == bool(mem[_2036])
                    else:
                        _669 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _693 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _693
                        require _669 + (32 * _693) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _669 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _669 + (32 * _693) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _693:
                            revert with 'NH{q', 50
                        _1221 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1221
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1221, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1653 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1677 = mem[_1653]
                        require mem[_1653] <= test266151307()
                        require _1653 + mem[_1653] + 31 < _1653 + return_data.size
                        _1701 = mem[_1653 + mem[_1653]]
                        if mem[_1653 + mem[_1653]] > test266151307():
                            revert with 'NH{q', 65
                        if _1653 + ceil32(return_data.size) + floor32(mem[_1653 + mem[_1653]]) + 1 > test266151307() or floor32(mem[_1653 + mem[_1653]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1653 + ceil32(return_data.size) + floor32(mem[_1653 + mem[_1653]]) + 1
                        mem[_1653 + ceil32(return_data.size)] = _1701
                        require _1677 + (32 * _1701) + 32 <= return_data.size
                        idx = _1653 + _1677 + 32
                        s = _1653 + ceil32(return_data.size) + 32
                        while idx < _1653 + _1677 + (32 * _1701) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1701:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1221
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1221
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2037 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2037] == bool(mem[_2037])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _670 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _694 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _694
                        require _670 + (32 * _694) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _670 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _670 + (32 * _694) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _694:
                            revert with 'NH{q', 50
                        _1222 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1222
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1222, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1654 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1678 = mem[_1654]
                        require mem[_1654] <= test266151307()
                        require _1654 + mem[_1654] + 31 < _1654 + return_data.size
                        _1702 = mem[_1654 + mem[_1654]]
                        if mem[_1654 + mem[_1654]] > test266151307():
                            revert with 'NH{q', 65
                        if _1654 + ceil32(return_data.size) + floor32(mem[_1654 + mem[_1654]]) + 1 > test266151307() or floor32(mem[_1654 + mem[_1654]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1654 + ceil32(return_data.size) + floor32(mem[_1654 + mem[_1654]]) + 1
                        mem[_1654 + ceil32(return_data.size)] = _1702
                        require _1678 + (32 * _1702) + 32 <= return_data.size
                        idx = _1654 + _1678 + 32
                        s = _1654 + ceil32(return_data.size) + 32
                        while idx < _1654 + _1678 + (32 * _1702) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1702:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1222
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1222
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2038 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2038] == bool(mem[_2038])
                    else:
                        _671 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _695 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _695
                        require _671 + (32 * _695) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _671 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _671 + (32 * _695) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _695:
                            revert with 'NH{q', 50
                        _1223 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1223
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1223, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1679 = mem[_1655]
                        require mem[_1655] <= test266151307()
                        require _1655 + mem[_1655] + 31 < _1655 + return_data.size
                        _1703 = mem[_1655 + mem[_1655]]
                        if mem[_1655 + mem[_1655]] > test266151307():
                            revert with 'NH{q', 65
                        if _1655 + ceil32(return_data.size) + floor32(mem[_1655 + mem[_1655]]) + 1 > test266151307() or floor32(mem[_1655 + mem[_1655]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1655 + ceil32(return_data.size) + floor32(mem[_1655 + mem[_1655]]) + 1
                        mem[_1655 + ceil32(return_data.size)] = _1703
                        require _1679 + (32 * _1703) + 32 <= return_data.size
                        idx = _1655 + _1679 + 32
                        s = _1655 + ceil32(return_data.size) + 32
                        while idx < _1655 + _1679 + (32 * _1703) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1703:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1223
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1223
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2039 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2039] == bool(mem[_2039])
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _672 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _696 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _696
                    require _672 + (32 * _696) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _672 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _672 + (32 * _696) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _696:
                        revert with 'NH{q', 50
                    _1224 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1224
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1224, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1656 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1680 = mem[_1656]
                    require mem[_1656] <= test266151307()
                    require _1656 + mem[_1656] + 31 < _1656 + return_data.size
                    _1704 = mem[_1656 + mem[_1656]]
                    if mem[_1656 + mem[_1656]] > test266151307():
                        revert with 'NH{q', 65
                    if _1656 + ceil32(return_data.size) + floor32(mem[_1656 + mem[_1656]]) + 1 > test266151307() or floor32(mem[_1656 + mem[_1656]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1656 + ceil32(return_data.size) + floor32(mem[_1656 + mem[_1656]]) + 1
                    mem[_1656 + ceil32(return_data.size)] = _1704
                    require _1680 + (32 * _1704) + 32 <= return_data.size
                    idx = _1656 + _1680 + 32
                    s = _1656 + ceil32(return_data.size) + 32
                    while idx < _1656 + _1680 + (32 * _1704) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1704:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1224
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1224
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2040] == bool(mem[_2040])
                else:
                    _673 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _697 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _697
                    require _673 + (32 * _697) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _673 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _673 + (32 * _697) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _697:
                        revert with 'NH{q', 50
                    _1225 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1225
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1225, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1657 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1681 = mem[_1657]
                    require mem[_1657] <= test266151307()
                    require _1657 + mem[_1657] + 31 < _1657 + return_data.size
                    _1705 = mem[_1657 + mem[_1657]]
                    if mem[_1657 + mem[_1657]] > test266151307():
                        revert with 'NH{q', 65
                    if _1657 + ceil32(return_data.size) + floor32(mem[_1657 + mem[_1657]]) + 1 > test266151307() or floor32(mem[_1657 + mem[_1657]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1657 + ceil32(return_data.size) + floor32(mem[_1657 + mem[_1657]]) + 1
                    mem[_1657 + ceil32(return_data.size)] = _1705
                    require _1681 + (32 * _1705) + 32 <= return_data.size
                    idx = _1657 + _1681 + 32
                    s = _1657 + ceil32(return_data.size) + 32
                    while idx < _1657 + _1681 + (32 * _1705) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1705:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1225
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1225
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2041 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2041] == bool(mem[_2041])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _674 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _698 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _698
                    require _674 + (32 * _698) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _674 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _674 + (32 * _698) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _698:
                        revert with 'NH{q', 50
                    _1226 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1226
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1226, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1658 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1682 = mem[_1658]
                    require mem[_1658] <= test266151307()
                    require _1658 + mem[_1658] + 31 < _1658 + return_data.size
                    _1706 = mem[_1658 + mem[_1658]]
                    if mem[_1658 + mem[_1658]] > test266151307():
                        revert with 'NH{q', 65
                    if _1658 + ceil32(return_data.size) + floor32(mem[_1658 + mem[_1658]]) + 1 > test266151307() or floor32(mem[_1658 + mem[_1658]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1658 + ceil32(return_data.size) + floor32(mem[_1658 + mem[_1658]]) + 1
                    mem[_1658 + ceil32(return_data.size)] = _1706
                    require _1682 + (32 * _1706) + 32 <= return_data.size
                    idx = _1658 + _1682 + 32
                    s = _1658 + ceil32(return_data.size) + 32
                    while idx < _1658 + _1682 + (32 * _1706) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1706:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1226
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1226
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2042 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2042] == bool(mem[_2042])
                else:
                    _675 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _699 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _699
                    require _675 + (32 * _699) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _675 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _675 + (32 * _699) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _699:
                        revert with 'NH{q', 50
                    _1227 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1227
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1227, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1659 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1683 = mem[_1659]
                    require mem[_1659] <= test266151307()
                    require _1659 + mem[_1659] + 31 < _1659 + return_data.size
                    _1707 = mem[_1659 + mem[_1659]]
                    if mem[_1659 + mem[_1659]] > test266151307():
                        revert with 'NH{q', 65
                    if _1659 + ceil32(return_data.size) + floor32(mem[_1659 + mem[_1659]]) + 1 > test266151307() or floor32(mem[_1659 + mem[_1659]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1659 + ceil32(return_data.size) + floor32(mem[_1659 + mem[_1659]]) + 1
                    mem[_1659 + ceil32(return_data.size)] = _1707
                    require _1683 + (32 * _1707) + 32 <= return_data.size
                    idx = _1659 + _1683 + 32
                    s = _1659 + ceil32(return_data.size) + 32
                    while idx < _1659 + _1683 + (32 * _1707) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1707:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1227
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1227
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2043 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2043] == bool(mem[_2043])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _676 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _700 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _700
                        require _676 + (32 * _700) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _676 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _676 + (32 * _700) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _700:
                            revert with 'NH{q', 50
                        _1228 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1228
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1228, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1660 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1684 = mem[_1660]
                        require mem[_1660] <= test266151307()
                        require _1660 + mem[_1660] + 31 < _1660 + return_data.size
                        _1708 = mem[_1660 + mem[_1660]]
                        if mem[_1660 + mem[_1660]] > test266151307():
                            revert with 'NH{q', 65
                        if _1660 + ceil32(return_data.size) + floor32(mem[_1660 + mem[_1660]]) + 1 > test266151307() or floor32(mem[_1660 + mem[_1660]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1660 + ceil32(return_data.size) + floor32(mem[_1660 + mem[_1660]]) + 1
                        mem[_1660 + ceil32(return_data.size)] = _1708
                        require _1684 + (32 * _1708) + 32 <= return_data.size
                        idx = _1660 + _1684 + 32
                        s = _1660 + ceil32(return_data.size) + 32
                        while idx < _1660 + _1684 + (32 * _1708) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1708:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1228
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1228
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2044] == bool(mem[_2044])
                    else:
                        _677 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _701 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _701
                        require _677 + (32 * _701) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _677 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _677 + (32 * _701) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _701:
                            revert with 'NH{q', 50
                        _1229 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1229
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1229, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1661 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1685 = mem[_1661]
                        require mem[_1661] <= test266151307()
                        require _1661 + mem[_1661] + 31 < _1661 + return_data.size
                        _1709 = mem[_1661 + mem[_1661]]
                        if mem[_1661 + mem[_1661]] > test266151307():
                            revert with 'NH{q', 65
                        if _1661 + ceil32(return_data.size) + floor32(mem[_1661 + mem[_1661]]) + 1 > test266151307() or floor32(mem[_1661 + mem[_1661]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1661 + ceil32(return_data.size) + floor32(mem[_1661 + mem[_1661]]) + 1
                        mem[_1661 + ceil32(return_data.size)] = _1709
                        require _1685 + (32 * _1709) + 32 <= return_data.size
                        idx = _1661 + _1685 + 32
                        s = _1661 + ceil32(return_data.size) + 32
                        while idx < _1661 + _1685 + (32 * _1709) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1709:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1229
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1229
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2045] == bool(mem[_2045])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _678 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _702 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _702
                        require _678 + (32 * _702) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _678 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _678 + (32 * _702) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _702:
                            revert with 'NH{q', 50
                        _1230 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1230
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1230, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1662 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1686 = mem[_1662]
                        require mem[_1662] <= test266151307()
                        require _1662 + mem[_1662] + 31 < _1662 + return_data.size
                        _1710 = mem[_1662 + mem[_1662]]
                        if mem[_1662 + mem[_1662]] > test266151307():
                            revert with 'NH{q', 65
                        if _1662 + ceil32(return_data.size) + floor32(mem[_1662 + mem[_1662]]) + 1 > test266151307() or floor32(mem[_1662 + mem[_1662]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1662 + ceil32(return_data.size) + floor32(mem[_1662 + mem[_1662]]) + 1
                        mem[_1662 + ceil32(return_data.size)] = _1710
                        require _1686 + (32 * _1710) + 32 <= return_data.size
                        idx = _1662 + _1686 + 32
                        s = _1662 + ceil32(return_data.size) + 32
                        while idx < _1662 + _1686 + (32 * _1710) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1710:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1230
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1230
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2046] == bool(mem[_2046])
                    else:
                        _679 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _703 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _703
                        require _679 + (32 * _703) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _679 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _679 + (32 * _703) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _703:
                            revert with 'NH{q', 50
                        _1231 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1231
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1231, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1663 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1687 = mem[_1663]
                        require mem[_1663] <= test266151307()
                        require _1663 + mem[_1663] + 31 < _1663 + return_data.size
                        _1711 = mem[_1663 + mem[_1663]]
                        if mem[_1663 + mem[_1663]] > test266151307():
                            revert with 'NH{q', 65
                        if _1663 + ceil32(return_data.size) + floor32(mem[_1663 + mem[_1663]]) + 1 > test266151307() or floor32(mem[_1663 + mem[_1663]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1663 + ceil32(return_data.size) + floor32(mem[_1663 + mem[_1663]]) + 1
                        mem[_1663 + ceil32(return_data.size)] = _1711
                        require _1687 + (32 * _1711) + 32 <= return_data.size
                        idx = _1663 + _1687 + 32
                        s = _1663 + ceil32(return_data.size) + 32
                        while idx < _1663 + _1687 + (32 * _1711) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1711:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1231
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1231
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2047] == bool(mem[_2047])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _680 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _704 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _704
                        require _680 + (32 * _704) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _680 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _680 + (32 * _704) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _704:
                            revert with 'NH{q', 50
                        _1232 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1232
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1232, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1664 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1688 = mem[_1664]
                        require mem[_1664] <= test266151307()
                        require _1664 + mem[_1664] + 31 < _1664 + return_data.size
                        _1712 = mem[_1664 + mem[_1664]]
                        if mem[_1664 + mem[_1664]] > test266151307():
                            revert with 'NH{q', 65
                        if _1664 + ceil32(return_data.size) + floor32(mem[_1664 + mem[_1664]]) + 1 > test266151307() or floor32(mem[_1664 + mem[_1664]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1664 + ceil32(return_data.size) + floor32(mem[_1664 + mem[_1664]]) + 1
                        mem[_1664 + ceil32(return_data.size)] = _1712
                        require _1688 + (32 * _1712) + 32 <= return_data.size
                        idx = _1664 + _1688 + 32
                        s = _1664 + ceil32(return_data.size) + 32
                        while idx < _1664 + _1688 + (32 * _1712) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1712:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1232
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1232
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2048] == bool(mem[_2048])
                    else:
                        _681 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _705 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _705
                        require _681 + (32 * _705) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _681 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _681 + (32 * _705) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _705:
                            revert with 'NH{q', 50
                        _1233 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1233
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1233, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1665 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1689 = mem[_1665]
                        require mem[_1665] <= test266151307()
                        require _1665 + mem[_1665] + 31 < _1665 + return_data.size
                        _1713 = mem[_1665 + mem[_1665]]
                        if mem[_1665 + mem[_1665]] > test266151307():
                            revert with 'NH{q', 65
                        if _1665 + ceil32(return_data.size) + floor32(mem[_1665 + mem[_1665]]) + 1 > test266151307() or floor32(mem[_1665 + mem[_1665]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1665 + ceil32(return_data.size) + floor32(mem[_1665 + mem[_1665]]) + 1
                        mem[_1665 + ceil32(return_data.size)] = _1713
                        require _1689 + (32 * _1713) + 32 <= return_data.size
                        idx = _1665 + _1689 + 32
                        s = _1665 + ceil32(return_data.size) + 32
                        while idx < _1665 + _1689 + (32 * _1713) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1713:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1233
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1233
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2049] == bool(mem[_2049])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _682 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _706 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _706
                        require _682 + (32 * _706) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _682 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _682 + (32 * _706) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _706:
                            revert with 'NH{q', 50
                        _1234 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1234
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1234, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1666 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1690 = mem[_1666]
                        require mem[_1666] <= test266151307()
                        require _1666 + mem[_1666] + 31 < _1666 + return_data.size
                        _1714 = mem[_1666 + mem[_1666]]
                        if mem[_1666 + mem[_1666]] > test266151307():
                            revert with 'NH{q', 65
                        if _1666 + ceil32(return_data.size) + floor32(mem[_1666 + mem[_1666]]) + 1 > test266151307() or floor32(mem[_1666 + mem[_1666]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1666 + ceil32(return_data.size) + floor32(mem[_1666 + mem[_1666]]) + 1
                        mem[_1666 + ceil32(return_data.size)] = _1714
                        require _1690 + (32 * _1714) + 32 <= return_data.size
                        idx = _1666 + _1690 + 32
                        s = _1666 + ceil32(return_data.size) + 32
                        while idx < _1666 + _1690 + (32 * _1714) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1714:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1234
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1234
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2050] == bool(mem[_2050])
                    else:
                        _683 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _707 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _707
                        require _683 + (32 * _707) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _683 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _683 + (32 * _707) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _707:
                            revert with 'NH{q', 50
                        _1235 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1235
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1235, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1667 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1691 = mem[_1667]
                        require mem[_1667] <= test266151307()
                        require _1667 + mem[_1667] + 31 < _1667 + return_data.size
                        _1715 = mem[_1667 + mem[_1667]]
                        if mem[_1667 + mem[_1667]] > test266151307():
                            revert with 'NH{q', 65
                        if _1667 + ceil32(return_data.size) + floor32(mem[_1667 + mem[_1667]]) + 1 > test266151307() or floor32(mem[_1667 + mem[_1667]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1667 + ceil32(return_data.size) + floor32(mem[_1667 + mem[_1667]]) + 1
                        mem[_1667 + ceil32(return_data.size)] = _1715
                        require _1691 + (32 * _1715) + 32 <= return_data.size
                        idx = _1667 + _1691 + 32
                        s = _1667 + ceil32(return_data.size) + 32
                        while idx < _1667 + _1691 + (32 * _1715) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1715:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1235
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1235
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2051] == bool(mem[_2051])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _660 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _684 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _684
                    require _660 + (32 * _684) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _660 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _660 + (32 * _684) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _684:
                        revert with 'NH{q', 50
                    _1212 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1212
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1212, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1644 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1668 = mem[_1644]
                    require mem[_1644] <= test266151307()
                    require _1644 + mem[_1644] + 31 < _1644 + return_data.size
                    _1692 = mem[_1644 + mem[_1644]]
                    if mem[_1644 + mem[_1644]] > test266151307():
                        revert with 'NH{q', 65
                    if _1644 + ceil32(return_data.size) + floor32(mem[_1644 + mem[_1644]]) + 1 > test266151307() or floor32(mem[_1644 + mem[_1644]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1644 + ceil32(return_data.size) + floor32(mem[_1644 + mem[_1644]]) + 1
                    mem[_1644 + ceil32(return_data.size)] = _1692
                    require _1668 + (32 * _1692) + 32 <= return_data.size
                    idx = _1644 + _1668 + 32
                    s = _1644 + ceil32(return_data.size) + 32
                    while idx < _1644 + _1668 + (32 * _1692) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1692:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1212
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1212
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2028] == bool(mem[_2028])
                else:
                    _661 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _685 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _685
                    require _661 + (32 * _685) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _661 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _661 + (32 * _685) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _685:
                        revert with 'NH{q', 50
                    _1213 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1213
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1213, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1669 = mem[_1645]
                    require mem[_1645] <= test266151307()
                    require _1645 + mem[_1645] + 31 < _1645 + return_data.size
                    _1693 = mem[_1645 + mem[_1645]]
                    if mem[_1645 + mem[_1645]] > test266151307():
                        revert with 'NH{q', 65
                    if _1645 + ceil32(return_data.size) + floor32(mem[_1645 + mem[_1645]]) + 1 > test266151307() or floor32(mem[_1645 + mem[_1645]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1645 + ceil32(return_data.size) + floor32(mem[_1645 + mem[_1645]]) + 1
                    mem[_1645 + ceil32(return_data.size)] = _1693
                    require _1669 + (32 * _1693) + 32 <= return_data.size
                    idx = _1645 + _1669 + 32
                    s = _1645 + ceil32(return_data.size) + 32
                    while idx < _1645 + _1669 + (32 * _1693) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1693:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1213
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1213
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2029] == bool(mem[_2029])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg3
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _662 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _686 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _686
                    require _662 + (32 * _686) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _662 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _662 + (32 * _686) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _686:
                        revert with 'NH{q', 50
                    _1214 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1214
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1214, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1646 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1670 = mem[_1646]
                    require mem[_1646] <= test266151307()
                    require _1646 + mem[_1646] + 31 < _1646 + return_data.size
                    _1694 = mem[_1646 + mem[_1646]]
                    if mem[_1646 + mem[_1646]] > test266151307():
                        revert with 'NH{q', 65
                    if _1646 + ceil32(return_data.size) + floor32(mem[_1646 + mem[_1646]]) + 1 > test266151307() or floor32(mem[_1646 + mem[_1646]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1646 + ceil32(return_data.size) + floor32(mem[_1646 + mem[_1646]]) + 1
                    mem[_1646 + ceil32(return_data.size)] = _1694
                    require _1670 + (32 * _1694) + 32 <= return_data.size
                    idx = _1646 + _1670 + 32
                    s = _1646 + ceil32(return_data.size) + 32
                    while idx < _1646 + _1670 + (32 * _1694) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1694:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1214
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1214
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2030] == bool(mem[_2030])
                else:
                    _663 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _687 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _687
                    require _663 + (32 * _687) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _663 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _663 + (32 * _687) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _687:
                        revert with 'NH{q', 50
                    _1215 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1215
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1215, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1647 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1671 = mem[_1647]
                    require mem[_1647] <= test266151307()
                    require _1647 + mem[_1647] + 31 < _1647 + return_data.size
                    _1695 = mem[_1647 + mem[_1647]]
                    if mem[_1647 + mem[_1647]] > test266151307():
                        revert with 'NH{q', 65
                    if _1647 + ceil32(return_data.size) + floor32(mem[_1647 + mem[_1647]]) + 1 > test266151307() or floor32(mem[_1647 + mem[_1647]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1647 + ceil32(return_data.size) + floor32(mem[_1647 + mem[_1647]]) + 1
                    mem[_1647 + ceil32(return_data.size)] = _1695
                    require _1671 + (32 * _1695) + 32 <= return_data.size
                    idx = _1647 + _1671 + 32
                    s = _1647 + ceil32(return_data.size) + 32
                    while idx < _1647 + _1671 + (32 * _1695) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1695:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1215
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1215
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2031] == bool(mem[_2031])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _664 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _688 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _688
                        require _664 + (32 * _688) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _664 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _664 + (32 * _688) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _688:
                            revert with 'NH{q', 50
                        _1216 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1216
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1216, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1648 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1672 = mem[_1648]
                        require mem[_1648] <= test266151307()
                        require _1648 + mem[_1648] + 31 < _1648 + return_data.size
                        _1696 = mem[_1648 + mem[_1648]]
                        if mem[_1648 + mem[_1648]] > test266151307():
                            revert with 'NH{q', 65
                        if _1648 + ceil32(return_data.size) + floor32(mem[_1648 + mem[_1648]]) + 1 > test266151307() or floor32(mem[_1648 + mem[_1648]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1648 + ceil32(return_data.size) + floor32(mem[_1648 + mem[_1648]]) + 1
                        mem[_1648 + ceil32(return_data.size)] = _1696
                        require _1672 + (32 * _1696) + 32 <= return_data.size
                        idx = _1648 + _1672 + 32
                        s = _1648 + ceil32(return_data.size) + 32
                        while idx < _1648 + _1672 + (32 * _1696) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1696:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1216
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1216
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2032 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2032] == bool(mem[_2032])
                    else:
                        _665 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _689 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _689
                        require _665 + (32 * _689) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _665 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _665 + (32 * _689) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _689:
                            revert with 'NH{q', 50
                        _1217 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1217
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1217, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1649 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1673 = mem[_1649]
                        require mem[_1649] <= test266151307()
                        require _1649 + mem[_1649] + 31 < _1649 + return_data.size
                        _1697 = mem[_1649 + mem[_1649]]
                        if mem[_1649 + mem[_1649]] > test266151307():
                            revert with 'NH{q', 65
                        if _1649 + ceil32(return_data.size) + floor32(mem[_1649 + mem[_1649]]) + 1 > test266151307() or floor32(mem[_1649 + mem[_1649]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1649 + ceil32(return_data.size) + floor32(mem[_1649 + mem[_1649]]) + 1
                        mem[_1649 + ceil32(return_data.size)] = _1697
                        require _1673 + (32 * _1697) + 32 <= return_data.size
                        idx = _1649 + _1673 + 32
                        s = _1649 + ceil32(return_data.size) + 32
                        while idx < _1649 + _1673 + (32 * _1697) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1697:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1217
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1217
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2033 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2033] == bool(mem[_2033])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _666 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _690 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _690
                        require _666 + (32 * _690) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _666 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _666 + (32 * _690) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _690:
                            revert with 'NH{q', 50
                        _1218 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1218
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1218, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1650 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1674 = mem[_1650]
                        require mem[_1650] <= test266151307()
                        require _1650 + mem[_1650] + 31 < _1650 + return_data.size
                        _1698 = mem[_1650 + mem[_1650]]
                        if mem[_1650 + mem[_1650]] > test266151307():
                            revert with 'NH{q', 65
                        if _1650 + ceil32(return_data.size) + floor32(mem[_1650 + mem[_1650]]) + 1 > test266151307() or floor32(mem[_1650 + mem[_1650]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1650 + ceil32(return_data.size) + floor32(mem[_1650 + mem[_1650]]) + 1
                        mem[_1650 + ceil32(return_data.size)] = _1698
                        require _1674 + (32 * _1698) + 32 <= return_data.size
                        idx = _1650 + _1674 + 32
                        s = _1650 + ceil32(return_data.size) + 32
                        while idx < _1650 + _1674 + (32 * _1698) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1698:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1218
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1218
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2034] == bool(mem[_2034])
                    else:
                        _667 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _691 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _691
                        require _667 + (32 * _691) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _667 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _667 + (32 * _691) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _691:
                            revert with 'NH{q', 50
                        _1219 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1219
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1219, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1651 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1675 = mem[_1651]
                        require mem[_1651] <= test266151307()
                        require _1651 + mem[_1651] + 31 < _1651 + return_data.size
                        _1699 = mem[_1651 + mem[_1651]]
                        if mem[_1651 + mem[_1651]] > test266151307():
                            revert with 'NH{q', 65
                        if _1651 + ceil32(return_data.size) + floor32(mem[_1651 + mem[_1651]]) + 1 > test266151307() or floor32(mem[_1651 + mem[_1651]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1651 + ceil32(return_data.size) + floor32(mem[_1651 + mem[_1651]]) + 1
                        mem[_1651 + ceil32(return_data.size)] = _1699
                        require _1675 + (32 * _1699) + 32 <= return_data.size
                        idx = _1651 + _1675 + 32
                        s = _1651 + ceil32(return_data.size) + 32
                        while idx < _1651 + _1675 + (32 * _1699) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1699:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1219
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1219
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2035 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2035] == bool(mem[_2035])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _668 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _692 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _692
                        require _668 + (32 * _692) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _668 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _668 + (32 * _692) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _692:
                            revert with 'NH{q', 50
                        _1220 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1220
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1220, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1652 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1676 = mem[_1652]
                        require mem[_1652] <= test266151307()
                        require _1652 + mem[_1652] + 31 < _1652 + return_data.size
                        _1700 = mem[_1652 + mem[_1652]]
                        if mem[_1652 + mem[_1652]] > test266151307():
                            revert with 'NH{q', 65
                        if _1652 + ceil32(return_data.size) + floor32(mem[_1652 + mem[_1652]]) + 1 > test266151307() or floor32(mem[_1652 + mem[_1652]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1652 + ceil32(return_data.size) + floor32(mem[_1652 + mem[_1652]]) + 1
                        mem[_1652 + ceil32(return_data.size)] = _1700
                        require _1676 + (32 * _1700) + 32 <= return_data.size
                        idx = _1652 + _1676 + 32
                        s = _1652 + ceil32(return_data.size) + 32
                        while idx < _1652 + _1676 + (32 * _1700) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1700:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1220
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1220
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2036 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2036] == bool(mem[_2036])
                    else:
                        _669 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _693 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _693
                        require _669 + (32 * _693) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _669 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _669 + (32 * _693) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _693:
                            revert with 'NH{q', 50
                        _1221 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1221
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1221, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1653 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1677 = mem[_1653]
                        require mem[_1653] <= test266151307()
                        require _1653 + mem[_1653] + 31 < _1653 + return_data.size
                        _1701 = mem[_1653 + mem[_1653]]
                        if mem[_1653 + mem[_1653]] > test266151307():
                            revert with 'NH{q', 65
                        if _1653 + ceil32(return_data.size) + floor32(mem[_1653 + mem[_1653]]) + 1 > test266151307() or floor32(mem[_1653 + mem[_1653]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1653 + ceil32(return_data.size) + floor32(mem[_1653 + mem[_1653]]) + 1
                        mem[_1653 + ceil32(return_data.size)] = _1701
                        require _1677 + (32 * _1701) + 32 <= return_data.size
                        idx = _1653 + _1677 + 32
                        s = _1653 + ceil32(return_data.size) + 32
                        while idx < _1653 + _1677 + (32 * _1701) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1701:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1221
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1221
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2037 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2037] == bool(mem[_2037])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg3
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _670 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _694 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _694
                        require _670 + (32 * _694) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _670 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _670 + (32 * _694) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _694:
                            revert with 'NH{q', 50
                        _1222 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1222
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1222, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1654 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1678 = mem[_1654]
                        require mem[_1654] <= test266151307()
                        require _1654 + mem[_1654] + 31 < _1654 + return_data.size
                        _1702 = mem[_1654 + mem[_1654]]
                        if mem[_1654 + mem[_1654]] > test266151307():
                            revert with 'NH{q', 65
                        if _1654 + ceil32(return_data.size) + floor32(mem[_1654 + mem[_1654]]) + 1 > test266151307() or floor32(mem[_1654 + mem[_1654]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1654 + ceil32(return_data.size) + floor32(mem[_1654 + mem[_1654]]) + 1
                        mem[_1654 + ceil32(return_data.size)] = _1702
                        require _1678 + (32 * _1702) + 32 <= return_data.size
                        idx = _1654 + _1678 + 32
                        s = _1654 + ceil32(return_data.size) + 32
                        while idx < _1654 + _1678 + (32 * _1702) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1702:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1222
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1222
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2038 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2038] == bool(mem[_2038])
                    else:
                        _671 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _695 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _695
                        require _671 + (32 * _695) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _671 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _671 + (32 * _695) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _695:
                            revert with 'NH{q', 50
                        _1223 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1223
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1223, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1679 = mem[_1655]
                        require mem[_1655] <= test266151307()
                        require _1655 + mem[_1655] + 31 < _1655 + return_data.size
                        _1703 = mem[_1655 + mem[_1655]]
                        if mem[_1655 + mem[_1655]] > test266151307():
                            revert with 'NH{q', 65
                        if _1655 + ceil32(return_data.size) + floor32(mem[_1655 + mem[_1655]]) + 1 > test266151307() or floor32(mem[_1655 + mem[_1655]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1655 + ceil32(return_data.size) + floor32(mem[_1655 + mem[_1655]]) + 1
                        mem[_1655 + ceil32(return_data.size)] = _1703
                        require _1679 + (32 * _1703) + 32 <= return_data.size
                        idx = _1655 + _1679 + 32
                        s = _1655 + ceil32(return_data.size) + 32
                        while idx < _1655 + _1679 + (32 * _1703) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1703:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1223
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1223
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2039 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2039] == bool(mem[_2039])
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _672 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _696 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _696
                    require _672 + (32 * _696) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _672 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _672 + (32 * _696) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _696:
                        revert with 'NH{q', 50
                    _1224 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1224
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1224, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1656 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1680 = mem[_1656]
                    require mem[_1656] <= test266151307()
                    require _1656 + mem[_1656] + 31 < _1656 + return_data.size
                    _1704 = mem[_1656 + mem[_1656]]
                    if mem[_1656 + mem[_1656]] > test266151307():
                        revert with 'NH{q', 65
                    if _1656 + ceil32(return_data.size) + floor32(mem[_1656 + mem[_1656]]) + 1 > test266151307() or floor32(mem[_1656 + mem[_1656]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1656 + ceil32(return_data.size) + floor32(mem[_1656 + mem[_1656]]) + 1
                    mem[_1656 + ceil32(return_data.size)] = _1704
                    require _1680 + (32 * _1704) + 32 <= return_data.size
                    idx = _1656 + _1680 + 32
                    s = _1656 + ceil32(return_data.size) + 32
                    while idx < _1656 + _1680 + (32 * _1704) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1704:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1224
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1224
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2040] == bool(mem[_2040])
                else:
                    _673 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _697 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _697
                    require _673 + (32 * _697) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _673 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _673 + (32 * _697) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _697:
                        revert with 'NH{q', 50
                    _1225 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1225
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1225, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1657 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1681 = mem[_1657]
                    require mem[_1657] <= test266151307()
                    require _1657 + mem[_1657] + 31 < _1657 + return_data.size
                    _1705 = mem[_1657 + mem[_1657]]
                    if mem[_1657 + mem[_1657]] > test266151307():
                        revert with 'NH{q', 65
                    if _1657 + ceil32(return_data.size) + floor32(mem[_1657 + mem[_1657]]) + 1 > test266151307() or floor32(mem[_1657 + mem[_1657]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1657 + ceil32(return_data.size) + floor32(mem[_1657 + mem[_1657]]) + 1
                    mem[_1657 + ceil32(return_data.size)] = _1705
                    require _1681 + (32 * _1705) + 32 <= return_data.size
                    idx = _1657 + _1681 + 32
                    s = _1657 + ceil32(return_data.size) + 32
                    while idx < _1657 + _1681 + (32 * _1705) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1705:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1225
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1225
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2041 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2041] == bool(mem[_2041])
            else:
                mem[160] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[(2 * ceil32(return_data.size)) + 228] = arg2
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = 64
                mem[(4 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = 128
                t = (4 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                if not arg2:
                    _674 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _698 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _698
                    require _674 + (32 * _698) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _674 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _674 + (32 * _698) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _698:
                        revert with 'NH{q', 50
                    _1226 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1226
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1226, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1658 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1682 = mem[_1658]
                    require mem[_1658] <= test266151307()
                    require _1658 + mem[_1658] + 31 < _1658 + return_data.size
                    _1706 = mem[_1658 + mem[_1658]]
                    if mem[_1658 + mem[_1658]] > test266151307():
                        revert with 'NH{q', 65
                    if _1658 + ceil32(return_data.size) + floor32(mem[_1658 + mem[_1658]]) + 1 > test266151307() or floor32(mem[_1658 + mem[_1658]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1658 + ceil32(return_data.size) + floor32(mem[_1658 + mem[_1658]]) + 1
                    mem[_1658 + ceil32(return_data.size)] = _1706
                    require _1682 + (32 * _1706) + 32 <= return_data.size
                    idx = _1658 + _1682 + 32
                    s = _1658 + ceil32(return_data.size) + 32
                    while idx < _1658 + _1682 + (32 * _1706) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1706:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1226
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1226
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2042 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2042] == bool(mem[_2042])
                else:
                    _675 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _699 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _699
                    require _675 + (32 * _699) + 32 <= return_data.size
                    idx = (4 * ceil32(return_data.size)) + _675 + 224
                    s = (6 * ceil32(return_data.size)) + 224
                    while idx < (4 * ceil32(return_data.size)) + _675 + (32 * _699) + 224:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _699:
                        revert with 'NH{q', 50
                    _1227 = mem[(6 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1227
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 60
                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1227, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1659 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1683 = mem[_1659]
                    require mem[_1659] <= test266151307()
                    require _1659 + mem[_1659] + 31 < _1659 + return_data.size
                    _1707 = mem[_1659 + mem[_1659]]
                    if mem[_1659 + mem[_1659]] > test266151307():
                        revert with 'NH{q', 65
                    if _1659 + ceil32(return_data.size) + floor32(mem[_1659 + mem[_1659]]) + 1 > test266151307() or floor32(mem[_1659 + mem[_1659]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1659 + ceil32(return_data.size) + floor32(mem[_1659 + mem[_1659]]) + 1
                    mem[_1659 + ceil32(return_data.size)] = _1707
                    require _1683 + (32 * _1707) + 32 <= return_data.size
                    idx = _1659 + _1683 + 32
                    s = _1659 + ceil32(return_data.size) + 32
                    while idx < _1659 + _1683 + (32 * _1707) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 1 >= _1707:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1227
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1227
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2043 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2043] == bool(mem[_2043])
        else:
            require not arg3
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _676 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _700 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _700
                        require _676 + (32 * _700) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _676 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _676 + (32 * _700) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _700:
                            revert with 'NH{q', 50
                        _1228 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1228
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1228, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1660 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1684 = mem[_1660]
                        require mem[_1660] <= test266151307()
                        require _1660 + mem[_1660] + 31 < _1660 + return_data.size
                        _1708 = mem[_1660 + mem[_1660]]
                        if mem[_1660 + mem[_1660]] > test266151307():
                            revert with 'NH{q', 65
                        if _1660 + ceil32(return_data.size) + floor32(mem[_1660 + mem[_1660]]) + 1 > test266151307() or floor32(mem[_1660 + mem[_1660]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1660 + ceil32(return_data.size) + floor32(mem[_1660 + mem[_1660]]) + 1
                        mem[_1660 + ceil32(return_data.size)] = _1708
                        require _1684 + (32 * _1708) + 32 <= return_data.size
                        idx = _1660 + _1684 + 32
                        s = _1660 + ceil32(return_data.size) + 32
                        while idx < _1660 + _1684 + (32 * _1708) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1708:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1228
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1228
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2044] == bool(mem[_2044])
                    else:
                        _677 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _701 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _701
                        require _677 + (32 * _701) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _677 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _677 + (32 * _701) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _701:
                            revert with 'NH{q', 50
                        _1229 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1229
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1229, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1661 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1685 = mem[_1661]
                        require mem[_1661] <= test266151307()
                        require _1661 + mem[_1661] + 31 < _1661 + return_data.size
                        _1709 = mem[_1661 + mem[_1661]]
                        if mem[_1661 + mem[_1661]] > test266151307():
                            revert with 'NH{q', 65
                        if _1661 + ceil32(return_data.size) + floor32(mem[_1661 + mem[_1661]]) + 1 > test266151307() or floor32(mem[_1661 + mem[_1661]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1661 + ceil32(return_data.size) + floor32(mem[_1661 + mem[_1661]]) + 1
                        mem[_1661 + ceil32(return_data.size)] = _1709
                        require _1685 + (32 * _1709) + 32 <= return_data.size
                        idx = _1661 + _1685 + 32
                        s = _1661 + ceil32(return_data.size) + 32
                        while idx < _1661 + _1685 + (32 * _1709) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1709:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1229
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1229
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2045] == bool(mem[_2045])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _678 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _702 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _702
                        require _678 + (32 * _702) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _678 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _678 + (32 * _702) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _702:
                            revert with 'NH{q', 50
                        _1230 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1230
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1230, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1662 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1686 = mem[_1662]
                        require mem[_1662] <= test266151307()
                        require _1662 + mem[_1662] + 31 < _1662 + return_data.size
                        _1710 = mem[_1662 + mem[_1662]]
                        if mem[_1662 + mem[_1662]] > test266151307():
                            revert with 'NH{q', 65
                        if _1662 + ceil32(return_data.size) + floor32(mem[_1662 + mem[_1662]]) + 1 > test266151307() or floor32(mem[_1662 + mem[_1662]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1662 + ceil32(return_data.size) + floor32(mem[_1662 + mem[_1662]]) + 1
                        mem[_1662 + ceil32(return_data.size)] = _1710
                        require _1686 + (32 * _1710) + 32 <= return_data.size
                        idx = _1662 + _1686 + 32
                        s = _1662 + ceil32(return_data.size) + 32
                        while idx < _1662 + _1686 + (32 * _1710) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1710:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1230
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1230
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2046] == bool(mem[_2046])
                    else:
                        _679 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _703 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _703
                        require _679 + (32 * _703) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _679 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _679 + (32 * _703) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _703:
                            revert with 'NH{q', 50
                        _1231 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1231
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1231, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1663 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1687 = mem[_1663]
                        require mem[_1663] <= test266151307()
                        require _1663 + mem[_1663] + 31 < _1663 + return_data.size
                        _1711 = mem[_1663 + mem[_1663]]
                        if mem[_1663 + mem[_1663]] > test266151307():
                            revert with 'NH{q', 65
                        if _1663 + ceil32(return_data.size) + floor32(mem[_1663 + mem[_1663]]) + 1 > test266151307() or floor32(mem[_1663 + mem[_1663]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1663 + ceil32(return_data.size) + floor32(mem[_1663 + mem[_1663]]) + 1
                        mem[_1663 + ceil32(return_data.size)] = _1711
                        require _1687 + (32 * _1711) + 32 <= return_data.size
                        idx = _1663 + _1687 + 32
                        s = _1663 + ceil32(return_data.size) + 32
                        while idx < _1663 + _1687 + (32 * _1711) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1711:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1231
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1231
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2047] == bool(mem[_2047])
            else:
                mem[128] = address(ext_call.return_data[0])
                if not arg2:
                    mem[160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _680 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _704 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _704
                        require _680 + (32 * _704) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _680 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _680 + (32 * _704) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _704:
                            revert with 'NH{q', 50
                        _1232 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1232
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1232, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1664 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1688 = mem[_1664]
                        require mem[_1664] <= test266151307()
                        require _1664 + mem[_1664] + 31 < _1664 + return_data.size
                        _1712 = mem[_1664 + mem[_1664]]
                        if mem[_1664 + mem[_1664]] > test266151307():
                            revert with 'NH{q', 65
                        if _1664 + ceil32(return_data.size) + floor32(mem[_1664 + mem[_1664]]) + 1 > test266151307() or floor32(mem[_1664 + mem[_1664]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1664 + ceil32(return_data.size) + floor32(mem[_1664 + mem[_1664]]) + 1
                        mem[_1664 + ceil32(return_data.size)] = _1712
                        require _1688 + (32 * _1712) + 32 <= return_data.size
                        idx = _1664 + _1688 + 32
                        s = _1664 + ceil32(return_data.size) + 32
                        while idx < _1664 + _1688 + (32 * _1712) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1712:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1232
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1232
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2048] == bool(mem[_2048])
                    else:
                        _681 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _705 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _705
                        require _681 + (32 * _705) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _681 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _681 + (32 * _705) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _705:
                            revert with 'NH{q', 50
                        _1233 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1233
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1233, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1665 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1689 = mem[_1665]
                        require mem[_1665] <= test266151307()
                        require _1665 + mem[_1665] + 31 < _1665 + return_data.size
                        _1713 = mem[_1665 + mem[_1665]]
                        if mem[_1665 + mem[_1665]] > test266151307():
                            revert with 'NH{q', 65
                        if _1665 + ceil32(return_data.size) + floor32(mem[_1665 + mem[_1665]]) + 1 > test266151307() or floor32(mem[_1665 + mem[_1665]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1665 + ceil32(return_data.size) + floor32(mem[_1665 + mem[_1665]]) + 1
                        mem[_1665 + ceil32(return_data.size)] = _1713
                        require _1689 + (32 * _1713) + 32 <= return_data.size
                        idx = _1665 + _1689 + 32
                        s = _1665 + ceil32(return_data.size) + 32
                        while idx < _1665 + _1689 + (32 * _1713) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1713:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1233
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1233
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2049] == bool(mem[_2049])
                else:
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    if not arg2:
                        _682 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _706 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _706
                        require _682 + (32 * _706) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _682 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _682 + (32 * _706) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _706:
                            revert with 'NH{q', 50
                        _1234 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1234
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1234, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1666 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1690 = mem[_1666]
                        require mem[_1666] <= test266151307()
                        require _1666 + mem[_1666] + 31 < _1666 + return_data.size
                        _1714 = mem[_1666 + mem[_1666]]
                        if mem[_1666 + mem[_1666]] > test266151307():
                            revert with 'NH{q', 65
                        if _1666 + ceil32(return_data.size) + floor32(mem[_1666 + mem[_1666]]) + 1 > test266151307() or floor32(mem[_1666 + mem[_1666]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1666 + ceil32(return_data.size) + floor32(mem[_1666 + mem[_1666]]) + 1
                        mem[_1666 + ceil32(return_data.size)] = _1714
                        require _1690 + (32 * _1714) + 32 <= return_data.size
                        idx = _1666 + _1690 + 32
                        s = _1666 + ceil32(return_data.size) + 32
                        while idx < _1666 + _1690 + (32 * _1714) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1714:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1234
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1234
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2050] == bool(mem[_2050])
                    else:
                        _683 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _707 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = _707
                        require _683 + (32 * _707) + 32 <= return_data.size
                        idx = (4 * ceil32(return_data.size)) + _683 + 224
                        s = (6 * ceil32(return_data.size)) + 224
                        while idx < (4 * ceil32(return_data.size)) + _683 + (32 * _707) + 224:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 0 >= _707:
                            revert with 'NH{q', 50
                        _1235 = mem[(6 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1235
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 60
                        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1235, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp + 60
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1667 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1691 = mem[_1667]
                        require mem[_1667] <= test266151307()
                        require _1667 + mem[_1667] + 31 < _1667 + return_data.size
                        _1715 = mem[_1667 + mem[_1667]]
                        if mem[_1667 + mem[_1667]] > test266151307():
                            revert with 'NH{q', 65
                        if _1667 + ceil32(return_data.size) + floor32(mem[_1667 + mem[_1667]]) + 1 > test266151307() or floor32(mem[_1667 + mem[_1667]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1667 + ceil32(return_data.size) + floor32(mem[_1667 + mem[_1667]]) + 1
                        mem[_1667 + ceil32(return_data.size)] = _1715
                        require _1691 + (32 * _1715) + 32 <= return_data.size
                        idx = _1667 + _1691 + 32
                        s = _1667 + ceil32(return_data.size) + 32
                        while idx < _1667 + _1691 + (32 * _1715) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if 1 >= _1715:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1235
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1235
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2051] == bool(mem[_2051])
}



}
