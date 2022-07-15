contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0a5b494b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _40 = mem[_38]
            require mem[_38] == mem[_38 + 18 len 14]
            _47 = mem[_38 + 32]
            require mem[_38 + 32] == mem[_38 + 50 len 14]
            require mem[_38 + 64] == mem[_38 + 92 len 4]
            _52 = mem[64]
            mem[64] = mem[64] + 64
            mem[_52] = Mask(112, 0, _40)
            mem[_52 + 32] = Mask(112, 0, _47)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _52
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = Mask(112, 0, _47)
            s = Mask(112, 0, _40)
            continue 
        mem[mem[64]] = 32
        _31 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _31:
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
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128 len 64] = call.data[calldata.size len 64]
        mem[var17001] = (32 * ('cd', 4).length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _81 = mem[_80]
            require mem[_80] == mem[_80 + 18 len 14]
            _83 = mem[_80 + 32]
            require mem[_80 + 32] == mem[_80 + 50 len 14]
            require mem[_80 + 64] == mem[_80 + 92 len 4]
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = Mask(112, 0, _81)
            mem[_85 + 32] = Mask(112, 0, _83)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _85
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = Mask(112, 0, _83)
            s = Mask(112, 0, _81)
            continue 
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _74:
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
