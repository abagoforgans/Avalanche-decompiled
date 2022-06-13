contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0c85295b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _89 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_89] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_89 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_89 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _89
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] <= 0:
        revert with 0, 'Invalid input'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'Invalid input'
    _124 = mem[96]
    idx = 0
    while idx < _124:
        require idx < mem[96]
        _126 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _128 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _129 = mem[64]
        _130 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
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
