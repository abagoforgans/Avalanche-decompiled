contract main {




// =====================  Runtime code  =====================


#
#  - sub_129e8603(?)
#
function _fallback() payable {
    revert
}

function sub_5c1389b5(?) payable {
    require calldata.size - 4 >= 64
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
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _124 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _131 = mem[_127]
            require mem[_127] == mem[_127 + 12 len 20]
            require ext_code.size(address(_124))
            staticcall address(_124).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _149 = mem[_145]
            require mem[_145] == mem[_145 + 18 len 14]
            _156 = mem[_145 + 32]
            require mem[_145 + 32] == mem[_145 + 50 len 14]
            require mem[_145 + 64] == mem[_145 + 92 len 4]
            if address(_131) == address(cd[36]):
                _161 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_161] = mem[(32 * idx) + 140 len 20]
                mem[_161 + 32] = Mask(112, 0, _149)
                mem[_161 + 64] = Mask(112, 0, _156)
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _161
            else:
                _163 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_163] = mem[(32 * idx) + 140 len 20]
                mem[_163 + 32] = Mask(112, 0, _156)
                mem[_163 + 64] = Mask(112, 0, _149)
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _163
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _123 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _128:
            _178 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_178 + 32]
            mem[t + 64] = mem[_178 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _123 + (96 * _128) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[var42001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var42001
    idx = var42002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _211 = mem[96]
    idx = 0
    while idx < _211:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _214 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _219 = mem[_217]
        require mem[_217] == mem[_217 + 12 len 20]
        require ext_code.size(address(_214))
        staticcall address(_214).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _227 = mem[_225]
        require mem[_225] == mem[_225 + 18 len 14]
        _229 = mem[_225 + 32]
        require mem[_225 + 32] == mem[_225 + 50 len 14]
        require mem[_225 + 64] == mem[_225 + 92 len 4]
        if address(_219) == address(cd[36]):
            _231 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_231] = mem[(32 * idx) + 140 len 20]
            mem[_231 + 32] = Mask(112, 0, _227)
            mem[_231 + 64] = Mask(112, 0, _229)
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _231
        else:
            _233 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_233] = mem[(32 * idx) + 140 len 20]
            mem[_233 + 32] = Mask(112, 0, _229)
            mem[_233 + 64] = Mask(112, 0, _227)
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _233
        if idx == -1:
            revert with 'NH{q', 17
        _211 = mem[96]
        idx = idx + 1
        continue 
    _213 = mem[64]
    mem[mem[64]] = 32
    _218 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _218:
        _239 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_239 + 32]
        mem[t + 64] = mem[_239 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _213 + (96 * _218) + -mem[64] + 64
}



}
