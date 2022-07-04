contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_83] == mem[_83 + 18 len 14]
            _97 = mem[_83 + 32]
            require mem[_83 + 32] == mem[_83 + 50 len 14]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129]] = mem[_83 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 32] = Mask(112, 0, _97)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _84 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _84:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    else:
        mem[64] = floor32(arg1.length) + (32 * arg1.length) + 193
        mem[floor32(arg1.length) + (32 * arg1.length) + 129 len 64] = call.data[calldata.size len 64]
        mem[var33001] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[floor32(arg1.length) + (32 * arg1.length) + 129 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _130 = mem[96]
        idx = 0
        while idx < _130:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_138] == mem[_138 + 18 len 14]
            _144 = mem[_138 + 32]
            require mem[_138 + 32] == mem[_138 + 50 len 14]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129]] = mem[_138 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + floor32(arg1.length) + 129] + 32] = Mask(112, 0, _144)
            if idx == -1:
                revert with 'NH{q', 17
            _130 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _139 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _139:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
