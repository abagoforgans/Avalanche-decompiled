contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _61 = mem[_53]
            require mem[_53] == mem[_53 + 18 len 14]
            _63 = mem[_53 + 32]
            require mem[_53 + 32] == mem[_53 + 50 len 14]
            require mem[_53 + 64] == mem[_53 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _68 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _71 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_53 + 92 len 4]
            mem[_71 + 32] = Mask(112, 0, _63)
            mem[_68] = Mask(112, 0, _61)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            _80 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_80 + 50 len 14]
            mem[t + 64] = mem[_80 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _42 + (96 * _43) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 224
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[128] = (32 * arg1.length) + 128
    s = 128
    idx = arg1.length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _95 = mem[_94]
        require mem[_94] == mem[_94 + 18 len 14]
        _96 = mem[_94 + 32]
        require mem[_94 + 32] == mem[_94 + 50 len 14]
        require mem[_94 + 64] == mem[_94 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _99 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _101 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[(32 * idx) + 128] + 64] = mem[_94 + 92 len 4]
        mem[_101 + 32] = Mask(112, 0, _96)
        mem[_99] = Mask(112, 0, _95)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _85 = mem[64]
    mem[mem[64]] = 32
    _86 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _86:
        _104 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_104 + 50 len 14]
        mem[t + 64] = mem[_104 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _85 + (96 * _86) + -mem[64] + 64
}



}
