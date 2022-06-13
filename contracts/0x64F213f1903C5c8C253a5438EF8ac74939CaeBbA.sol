contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0c85295b(?) payable {
    require calldata.size - 4 >= 64
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _95 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
        mem[_95] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_95 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
        mem[_95 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
        mem[s] = _95
        idx = idx + 32
        s = s + 32
        continue 
    if mem[96] <= 0:
        revert with 0, 'Invalid input'
    if mem[96] != mem[floor32(('cd', 4).length) + 97]:
        revert with 0, 'Invalid input'
    _124 = mem[96]
    idx = 0
    while idx < _124:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _126 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _128 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        _129 = mem[64]
        _130 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]]
        s = 0
        while s < _130:
            mem[_129 + s] = mem[_128 + s + 32]
            _124 = mem[96]
            s = s + 32
            continue 
        if ceil32(_130) <= _130:
            call address(_126).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _129 + _130 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _124 = mem[96]
                    idx = idx + 1
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _165 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _165:
                    mem[_161 + idx + 68] = mem[idx + 128]
                    _124 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_165) > _165:
                    mem[_161 + _165 + 68] = 0
                revert with memory
                  from mem[64]
                   len _161 + ceil32(_165) + -mem[64] + 68
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_158] = return_data.size
            mem[_158 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                _124 = mem[96]
                idx = idx + 1
                continue 
            _162 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[_162 + idx + 68] = mem[_158 + idx + 32]
                _124 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_162 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len _162 + ceil32(return_data.size) + -mem[64] + 68
        mem[_129 + _130] = 0
        call address(_126).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _129 + _130 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                _124 = mem[96]
                idx = idx + 1
                continue 
            _163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _167 = mem[96]
            mem[mem[64] + 36] = mem[96]
            idx = 0
            while idx < _167:
                mem[_163 + idx + 68] = mem[idx + 128]
                _124 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_167) > _167:
                mem[_163 + _167 + 68] = 0
            revert with memory
              from mem[64]
               len _163 + ceil32(_167) + -mem[64] + 68
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_160] = return_data.size
        mem[_160 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            _124 = mem[96]
            idx = idx + 1
            continue 
        _164 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        idx = 0
        while idx < return_data.size:
            mem[_164 + idx + 68] = mem[_160 + idx + 32]
            _124 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(return_data.size) > return_data.size:
            mem[_164 + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len _164 + ceil32(return_data.size) + -mem[64] + 68
}



}
