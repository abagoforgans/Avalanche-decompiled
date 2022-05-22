contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0886d218(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[128] = 32
    mem[160] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 100).length) + 192
    u = 192
    while idx < ('cd', 100).length:
        mem[u] = t - 192
        require cd[s] < calldata.size + -cd[100] - 99
        require cd[(cd[100] + cd[s] + 36)] == address(cd[(cd[100] + cd[s] + 36)])
        mem[t] = address(cd[(cd[100] + cd[s] + 36)])
        require cd[(cd[100] + cd[s] + 68)] < calldata.size + -cd[100] + -cd[s] - 67
        require cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)] <= test266151307()
        require cd[100] + cd[s] + 36 <= calldata.size - cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)]
        mem[t + 32] = 64
        mem[t + 64] = cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)]
        mem[t + 96 len cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)]] = call.data[cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 68 len cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)]]
        mem[cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)] + t + 96] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 68)] + 36)]) + 96
        u = u + 32
        continue 
    _8 = mem[64]
    mem[64] = (32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 192
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 196] = cd[36]
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 228] = cd[68]
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 260] = this.address
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 292] = 128
    _10 = mem[_8]
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 324] = mem[_8]
    mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 356 len ceil32(_10)] = mem[_8 + 32 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + _10 + 356] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args cd[36], cd[68], address(this.address), 128, mem[(32 * ('cd', 100).length) + (96 * ('cd', 100).length) + 324 len ceil32(_10) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require cd[s] <= test266151307()
        require arg4.length + -cd[(arg4 + 36)] + -cd[s] - 32 >= 64
        _20 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)])
        mem[_20] = cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)]
        require cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] <= test266151307()
        require arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 99 < arg4 + arg4.length + 36
        if cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] > test266151307():
            revert with 'NH{q', 65
        _30 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1
        mem[_30] = cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]
        require cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] + 100 <= arg4.length + 36
        mem[_30 + 32 len cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]] = call.data[arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 100 len cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]]
        mem[_30 + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] + 32] = 0
        mem[_20 + 32] = _30
        mem[t] = _20
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _34 = mem[96]
    idx = 0
    while idx < _34:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _37 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _40 = mem[mem[(32 * idx) + 128] + 32]
        _41 = mem[64]
        _42 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _42:
            mem[s + _41] = mem[s + _40 + 32]
            _34 = mem[96]
            s = s + 32
            continue 
        if ceil32(_42) <= _42:
            call address(_37).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _42 + _41 + -mem[64] - 4]
            if return_data.size:
                _50 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_50] = return_data.size
                mem[_50 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_41 + _42] = 0
            call address(_37).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _42 + _41 + -mem[64] - 4]
            if return_data.size:
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_52] = return_data.size
                mem[_52 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
        if idx == -1:
            revert with 'NH{q', 17
        _34 = mem[96]
        idx = idx + 1
        continue 
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require cd[s] <= test266151307()
        require arg4.length + -cd[(arg4 + 36)] + -cd[s] - 32 >= 64
        _20 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)] == address(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)])
        mem[_20] = cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 68)]
        require cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] <= test266151307()
        require arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 99 < arg4 + arg4.length + 36
        if cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] > test266151307():
            revert with 'NH{q', 65
        _30 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)])) + 1
        mem[_30] = cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]
        require cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] + 100 <= arg4.length + 36
        mem[_30 + 32 len cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]] = call.data[arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 100 len cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)]]
        mem[_30 + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + cd[(arg4 + cd[(arg4 + 36)] + cd[s] + 100)] + 68)] + 32] = 0
        mem[_20 + 32] = _30
        mem[t] = _20
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _34 = mem[96]
    idx = 0
    while idx < _34:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _37 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _40 = mem[mem[(32 * idx) + 128] + 32]
        _41 = mem[64]
        _42 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _42:
            mem[s + _41] = mem[s + _40 + 32]
            _34 = mem[96]
            s = s + 32
            continue 
        if ceil32(_42) <= _42:
            call address(_37).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _42 + _41 + -mem[64] - 4]
            if return_data.size:
                _50 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_50] = return_data.size
                mem[_50 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_41 + _42] = 0
            call address(_37).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _42 + _41 + -mem[64] - 4]
            if return_data.size:
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_52] = return_data.size
                mem[_52 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
        if idx == -1:
            revert with 'NH{q', 17
        _34 = mem[96]
        idx = idx + 1
        continue 
}



}
