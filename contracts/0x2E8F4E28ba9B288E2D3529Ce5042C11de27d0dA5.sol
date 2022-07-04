contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function pairsLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4fd6a64a(?) payable {
    require calldata.size - 4 >= 64
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
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 12 len 20]
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_68 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        idx = 0
        s = floor32(('cd', 36).length) + 129
        t = mem[64] + 64
        while idx < _64:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _58 + (32 * _64) + -mem[64] + 64
    mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69 + 12 len 20]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_69 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 64
    while idx < _65:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _61 + (32 * _65) + -mem[64] + 64
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

function sub_ce829058(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _151 = mem[_147]
            require mem[_147] == mem[_147 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _170 = mem[_166]
            require mem[_166] == mem[_166 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_181] == mem[_181 + 18 len 14]
            require mem[_181 + 32] == mem[_181 + 50 len 14]
            if mem[_181 + 18 len 14] >= 5 * 10^10:
                if mem[_181 + 50 len 14] >= 5 * 10^10:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = address(_151)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = address(_170)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _148 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _148:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 96] = call.data[calldata.size len 96]
        mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _242 = mem[96]
        idx = 0
        while idx < _242:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _252 = mem[_250]
            require mem[_250] == mem[_250 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_260]
            require mem[_260] == mem[_260 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_267] == mem[_267 + 18 len 14]
            require mem[_267 + 32] == mem[_267 + 50 len 14]
            if mem[_267 + 18 len 14] >= 5 * 10^10:
                if mem[_267 + 50 len 14] >= 5 * 10^10:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = address(_252)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = address(_262)
            if idx == -1:
                revert with 'NH{q', 17
            _242 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _251 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _251:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
