contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
array of address stor6;
array of uint256 stor7;

function _fallback() payable {
    revert
}

function showAddress() payable {
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    return address(stor6.field_0), address(stor6.field_256), address(stor7.field_0), address(stor7.field_256)
}

function getBalanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function returnTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1151b7bf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 0
    mem[164] = 160
    mem[260] = stor6.length
    mem[0] = 6
    idx = 0
    s = 0
    t = 292
    while idx < stor6.length:
        mem[t] = stor6[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[196] = this.address
    mem[228] = block.timestamp + 120
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 120, stor6.length, mem[292 len 32 * stor6.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _27 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _28 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _28
    require _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = _27 + 128
    t = ceil32(return_data.size) + 128
    while idx < _28:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    require mem[_52] == mem[_52]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    _54 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _53
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = stor7.length
    mem[0] = 7
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < stor7.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_54 + 100] = this.address
    mem[_54 + 132] = block.timestamp + 120
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _54 + (32 * stor7.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] <= test266151307()
    require _69 + mem[_69] + 31 < _69 + return_data.size
    _71 = mem[_69 + mem[_69]]
    if mem[_69 + mem[_69]] > test266151307():
        revert with 'NH{q', 65
    if _69 + ceil32(return_data.size) + floor32(mem[_69 + mem[_69]]) + 1 > test266151307() or floor32(mem[_69 + mem[_69]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _69 + ceil32(return_data.size) + floor32(mem[_69 + mem[_69]]) + 1
    mem[_69 + ceil32(return_data.size)] = _71
    require _70 + (32 * _71) + 32 <= return_data.size
    idx = 0
    s = _69 + _70 + 32
    t = _69 + ceil32(return_data.size) + 32
    while idx < _71:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_83] == mem[_83]
    if mem[_83] < arg2:
        revert with 'NH{q', 17
    if mem[_83] - arg2 <= arg1:
        revert with 0, 'Failed'
}

function sub_ebcbc3f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 0
    mem[164] = 160
    mem[260] = stor6.length
    mem[0] = 6
    idx = 0
    s = 0
    t = 292
    while idx < stor6.length:
        mem[t] = stor6[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[196] = this.address
    mem[228] = block.timestamp + 120
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 120, stor6.length, mem[292 len 32 * stor6.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _27 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _28 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _28
    require _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = _27 + 128
    t = ceil32(return_data.size) + 128
    while idx < _28:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    require mem[_52] == mem[_52]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    _54 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _53
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = stor7.length
    mem[0] = 7
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < stor7.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_54 + 100] = this.address
    mem[_54 + 132] = block.timestamp + 120
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _54 + (32 * stor7.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] <= test266151307()
    require _69 + mem[_69] + 31 < _69 + return_data.size
    _71 = mem[_69 + mem[_69]]
    if mem[_69 + mem[_69]] > test266151307():
        revert with 'NH{q', 65
    if _69 + ceil32(return_data.size) + floor32(mem[_69 + mem[_69]]) + 1 > test266151307() or floor32(mem[_69 + mem[_69]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _69 + ceil32(return_data.size) + floor32(mem[_69 + mem[_69]]) + 1
    mem[_69 + ceil32(return_data.size)] = _71
    require _70 + (32 * _71) + 32 <= return_data.size
    idx = 0
    s = _69 + _70 + 32
    t = _69 + ceil32(return_data.size) + 32
    while idx < _71:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_83] == mem[_83]
    if mem[_83] < arg2:
        revert with 'NH{q', 17
    if mem[_83] - arg2 <= arg1:
        revert with 0, 'Failed'
}



}
