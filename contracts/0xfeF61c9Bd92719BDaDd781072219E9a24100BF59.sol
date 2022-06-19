contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function getBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getAllowance(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
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

function getSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
}

function sub_892e20f4(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    mem[floor32(('cd', 100).length) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + 101] = cd[36]
    mem[floor32(('cd', 100).length) + 133] = cd[68]
    mem[floor32(('cd', 100).length) + 165] = 160
    mem[floor32(('cd', 100).length) + 261] = ('cd', 100).length
    idx = 0
    s = 128
    t = floor32(('cd', 100).length) + 293
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 100).length) + 197] = address(cd[132])
    mem[floor32(('cd', 100).length) + 229] = cd[164]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _31 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
    _32 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 100).length) + _31 + 129
    t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 129 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function sub_f1b3c712(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    mem[floor32(('cd', 100).length) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + 101] = cd[36]
    mem[floor32(('cd', 100).length) + 133] = cd[68]
    mem[floor32(('cd', 100).length) + 165] = 160
    mem[floor32(('cd', 100).length) + 261] = ('cd', 100).length
    idx = 0
    s = 128
    t = floor32(('cd', 100).length) + 293
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 100).length) + 197] = address(cd[132])
    mem[floor32(('cd', 100).length) + 229] = cd[164]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _31 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
    _32 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 100).length) + _31 + 129
    t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _32
    mem[mem[64] + 64 len 32 * _32] = mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 129 len 32 * _32]
    return Array(len=_32, data=mem[mem[64] + 64 len 32 * _32])
}

function sub_3050b4d7(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 > test266151307() or floor32(('cd', 132).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 132).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 100 > test266151307() or floor32(('cd', 164).length) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 100
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 131
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    require cd[228] == cd[228]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _117 = mem[128]
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _119 = mem[160]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 100] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 104] = _117
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 136] = _119
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 168] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 264] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 200] = address(cd[196])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 232] = cd[228]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 68).length) + -mem[64] + 292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _151 = mem[_150]
    require mem[_150] <= test266151307()
    require _150 + mem[_150] + 31 < _150 + return_data.size
    _152 = mem[_150 + mem[_150]]
    if mem[_150 + mem[_150]] > test266151307():
        revert with 'NH{q', 65
    if _150 + ceil32(return_data.size) + floor32(mem[_150 + mem[_150]]) + 1 > test266151307() or floor32(mem[_150 + mem[_150]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _150 + ceil32(return_data.size) + floor32(mem[_150 + mem[_150]]) + 1
    mem[_150 + ceil32(return_data.size)] = _152
    require _151 + (32 * _152) + 32 <= return_data.size
    idx = 0
    s = _150 + _151 + 32
    t = _150 + ceil32(return_data.size) + 32
    while idx < _152:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        revert with 'NH{q', 50
    _176 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
    if 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
        revert with 'NH{q', 50
    _178 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 162]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _176
    mem[mem[64] + 36] = _178
    mem[mem[64] + 68] = 160
    _180 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99]
    mem[mem[64] + 164] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 131
    t = mem[64] + 196
    while idx < _180:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = address(cd[196])
    mem[mem[64] + 132] = cd[228]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _176, _178, 160, address(cd[196]), cd[228], mem[mem[64] + 164 len (32 * _180) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _196 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _197 = mem[_196]
    require mem[_196] <= test266151307()
    require _196 + mem[_196] + 31 < _196 + return_data.size
    _198 = mem[_196 + mem[_196]]
    if mem[_196 + mem[_196]] > test266151307():
        revert with 'NH{q', 65
    if _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1 > test266151307() or floor32(mem[_196 + mem[_196]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1
    mem[_196 + ceil32(return_data.size)] = _198
    require _197 + (32 * _198) + 32 <= return_data.size
    idx = 0
    s = _196 + _197 + 32
    t = _196 + ceil32(return_data.size) + 32
    while idx < _198:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _208 = mem[64]
    mem[mem[64]] = 64
    _209 = mem[_150 + ceil32(return_data.size)]
    mem[mem[64] + 64] = mem[_150 + ceil32(return_data.size)]
    mem[mem[64] + 96 len 32 * _209] = mem[_150 + ceil32(return_data.size) + 32 len 32 * _209]
    mem[mem[64] + 32] = (32 * _209) + 96
    mem[_208 + (32 * _209) + 96] = _198
    mem[_208 + (32 * _209) + 128 len 32 * _198] = mem[_196 + ceil32(return_data.size) + 32 len 32 * _198]
    return memory
      from mem[64]
       len _208 + (32 * _209) + (32 * _198) + -mem[64] + 128
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _398 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_398] == mem[_398 + 18 len 14]
                    _430 = mem[_398 + 32]
                    require mem[_398 + 32] == mem[_398 + 50 len 14]
                    _446 = mem[_398 + 64]
                    require mem[_398 + 64] == mem[_398 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_398 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _430)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_446)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _366 = mem[64]
                mem[mem[64]] = 96
                _406 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _406:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _406) + 128
                _518 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_366 + (32 * _406) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _366 + (32 * _406) + 160
                while idx < _518:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_366 + 64] = (32 * _406) + (32 * _518) + 160
                _566 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_366 + (32 * _406) + (32 * _518) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _366 + (32 * _406) + (32 * _518) + 192
                while idx < _566:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _366 + (32 * _406) + (32 * _518) + (32 * _566) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_399] == mem[_399 + 18 len 14]
                _431 = mem[_399 + 32]
                require mem[_399 + 32] == mem[_399 + 50 len 14]
                _447 = mem[_399 + 64]
                require mem[_399 + 64] == mem[_399 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_399 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _431)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_447)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _370 = mem[64]
            mem[mem[64]] = 96
            _407 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _407:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _407) + 128
            _519 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_370 + (32 * _407) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _370 + (32 * _407) + 160
            while idx < _519:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_370 + 64] = (32 * _407) + (32 * _519) + 160
            _567 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_370 + (32 * _407) + (32 * _519) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _370 + (32 * _407) + (32 * _519) + 192
            while idx < _567:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _370 + (32 * _407) + (32 * _519) + (32 * _567) + -mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_400] == mem[_400 + 18 len 14]
                _432 = mem[_400 + 32]
                require mem[_400 + 32] == mem[_400 + 50 len 14]
                _448 = mem[_400 + 64]
                require mem[_400 + 64] == mem[_400 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_400 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _432)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_448)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _374 = mem[64]
            mem[mem[64]] = 96
            _408 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _408:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _408) + 128
            _520 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_374 + (32 * _408) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _374 + (32 * _408) + 160
            while idx < _520:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_374 + 64] = (32 * _408) + (32 * _520) + 160
            _568 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_374 + (32 * _408) + (32 * _520) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _374 + (32 * _408) + (32 * _520) + 192
            while idx < _568:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _374 + (32 * _408) + (32 * _520) + (32 * _568) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_401] == mem[_401 + 18 len 14]
            _433 = mem[_401 + 32]
            require mem[_401 + 32] == mem[_401 + 50 len 14]
            _449 = mem[_401 + 64]
            require mem[_401 + 64] == mem[_401 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_401 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _433)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_449)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 96
        _409 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _409:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_378 + 32] = (32 * _409) + 128
        _521 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_378 + (32 * _409) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _378 + (32 * _409) + 160
        while idx < _521:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_378 + 64] = (32 * _409) + (32 * _521) + 160
        _569 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_378 + (32 * _409) + (32 * _521) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _378 + (32 * _409) + (32 * _521) + 192
        while idx < _569:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _378 + (32 * _409) + (32 * _521) + (32 * _569) + -mem[64] + 192
    mem[floor32(arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_402] == mem[_402 + 18 len 14]
                _434 = mem[_402 + 32]
                require mem[_402 + 32] == mem[_402 + 50 len 14]
                _450 = mem[_402 + 64]
                require mem[_402 + 64] == mem[_402 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_402 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _434)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_450)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _382 = mem[64]
            mem[mem[64]] = 96
            _410 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _410:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _410) + 128
            _522 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_382 + (32 * _410) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _382 + (32 * _410) + 160
            while idx < _522:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_382 + 64] = (32 * _410) + (32 * _522) + 160
            _570 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_382 + (32 * _410) + (32 * _522) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _382 + (32 * _410) + (32 * _522) + 192
            while idx < _570:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _382 + (32 * _410) + (32 * _522) + (32 * _570) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_403] == mem[_403 + 18 len 14]
            _435 = mem[_403 + 32]
            require mem[_403 + 32] == mem[_403 + 50 len 14]
            _451 = mem[_403 + 64]
            require mem[_403 + 64] == mem[_403 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_403 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _435)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_451)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _386 = mem[64]
        mem[mem[64]] = 96
        _411 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _411:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _411) + 128
        _523 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_386 + (32 * _411) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _386 + (32 * _411) + 160
        while idx < _523:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_386 + 64] = (32 * _411) + (32 * _523) + 160
        _571 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_386 + (32 * _411) + (32 * _523) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _386 + (32 * _411) + (32 * _523) + 192
        while idx < _571:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _386 + (32 * _411) + (32 * _523) + (32 * _571) + -mem[64] + 192
    mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
    mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_404] == mem[_404 + 18 len 14]
            _436 = mem[_404 + 32]
            require mem[_404 + 32] == mem[_404 + 50 len 14]
            _452 = mem[_404 + 64]
            require mem[_404 + 64] == mem[_404 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_404 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _436)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_452)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _390 = mem[64]
        mem[mem[64]] = 96
        _412 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _412:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _412) + 128
        _524 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_390 + (32 * _412) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _390 + (32 * _412) + 160
        while idx < _524:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_390 + 64] = (32 * _412) + (32 * _524) + 160
        _572 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_390 + (32 * _412) + (32 * _524) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _390 + (32 * _412) + (32 * _524) + 192
        while idx < _572:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _390 + (32 * _412) + (32 * _524) + (32 * _572) + -mem[64] + 192
    mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_405] == mem[_405 + 18 len 14]
        _437 = mem[_405 + 32]
        require mem[_405 + 32] == mem[_405 + 50 len 14]
        _453 = mem[_405 + 64]
        require mem[_405 + 64] == mem[_405 + 92 len 4]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_405 + 18 len 14]
        if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _437)
        if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_453)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _394 = mem[64]
    mem[mem[64]] = 96
    _413 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 128
    while idx < _413:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _413) + 128
    _525 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    mem[_394 + (32 * _413) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    idx = 0
    s = floor32(arg1.length) + (32 * arg1.length) + 161
    t = _394 + (32 * _413) + 160
    while idx < _525:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_394 + 64] = (32 * _413) + (32 * _525) + 160
    _573 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    mem[_394 + (32 * _413) + (32 * _525) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    idx = 0
    s = floor32(arg1.length) + (64 * arg1.length) + 193
    t = _394 + (32 * _413) + (32 * _525) + 192
    while idx < _573:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _394 + (32 * _413) + (32 * _525) + (32 * _573) + -mem[64] + 192
}



}
