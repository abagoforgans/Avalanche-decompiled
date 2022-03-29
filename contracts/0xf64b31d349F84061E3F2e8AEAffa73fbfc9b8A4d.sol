contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _30 = mem[_29]
        require mem[_29] == mem[_29 + 18 len 14]
        _31 = mem[_29 + 32]
        require mem[_29 + 32] == mem[_29 + 50 len 14]
        require mem[_29 + 64] == mem[_29 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _36 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128] + 64] = mem[_29 + 92 len 4]
        mem[_36 + 32] = Mask(112, 0, _31)
        mem[_34] = Mask(112, 0, _30)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _21:
        _39 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_39 + 50 len 14]
        mem[t + 64] = mem[_39 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _20 + (96 * _21) + -mem[64] + 64
}



}
