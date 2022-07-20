contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d693e337(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function sub_1088b1af(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length and 2 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = 2 * ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 129
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_78] == mem[_78 + 18 len 14]
            _86 = mem[_78 + 32]
            require mem[_78 + 32] == mem[_78 + 50 len 14]
            require mem[_78 + 64] == mem[_78 + 92 len 4]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(64 * idx) + floor32(('cd', 4).length) + 129] = mem[_78 + 18 len 14]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + floor32(('cd', 4).length) + 129] = Mask(112, 0, _86)
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _80 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _80] = mem[floor32(('cd', 4).length) + 129 len 32 * _80]
        return 32, mem[mem[64] + 32 len (32 * _80) + 32]
    mem[floor32(('cd', 4).length) + 129 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_79] == mem[_79 + 18 len 14]
        _87 = mem[_79 + 32]
        require mem[_79 + 32] == mem[_79 + 50 len 14]
        require mem[_79 + 64] == mem[_79 + 92 len 4]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(64 * idx) + floor32(('cd', 4).length) + 129] = mem[_79 + 18 len 14]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + floor32(('cd', 4).length) + 129] = Mask(112, 0, _87)
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _81 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _81] = mem[floor32(('cd', 4).length) + 129 len 32 * _81]
    return 32, mem[mem[64] + 32 len (32 * _81) + 32]
}



}
