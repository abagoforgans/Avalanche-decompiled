contract main {




// =====================  Runtime code  =====================


function getSelector(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function sub_0c85295b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _87 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
        mem[_87] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_87 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
        mem[_87 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
        mem[s] = _87
        idx = idx + 32
        s = s + 32
        continue 
    if mem[96] <= 0:
        revert with 0, 'Invalid input'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'Invalid input'
    _124 = mem[96]
    idx = 0
    while idx < _124:
        if idx >= mem[96]:
            revert with 0, 50
        _126 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _128 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        _129 = mem[64]
        _130 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
        s = 0
        while s < _130:
            mem[s + _129] = mem[s + _128 + 32]
            _124 = mem[96]
            s = s + 32
            continue 
        if ceil32(_130) <= _130:
            call address(_126).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _130 + _129 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if not idx + 1:
                        revert with 0, 17
                    _124 = mem[96]
                    idx = idx + 1
                    continue 
                _161 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _163 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _163:
                    mem[idx + _161 + 68] = mem[idx + 128]
                    _124 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_163) > _163:
                    mem[_161 + _163 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_163) + _161 + -mem[64] + 68
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_158] = return_data.size
            mem[_158 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not idx + 1:
                    revert with 0, 17
                _124 = mem[96]
                idx = idx + 1
                continue 
            _162 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _162 + 68] = mem[idx + _158 + 32]
                _124 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_162 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _162 + -mem[64] + 68
        mem[_129 + _130] = 0
        call address(_126).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _130 + _129 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if not idx + 1:
                    revert with 0, 17
                _124 = mem[96]
                idx = idx + 1
                continue 
            _165 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _167 = mem[96]
            mem[mem[64] + 36] = mem[96]
            idx = 0
            while idx < _167:
                mem[idx + _165 + 68] = mem[idx + 128]
                _124 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_167) > _167:
                mem[_165 + _167 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_167) + _165 + -mem[64] + 68
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_160] = return_data.size
        mem[_160 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not idx + 1:
                revert with 0, 17
            _124 = mem[96]
            idx = idx + 1
            continue 
        _166 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        idx = 0
        while idx < return_data.size:
            mem[idx + _166 + 68] = mem[idx + _160 + 32]
            _124 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(return_data.size) > return_data.size:
            mem[_166 + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(return_data.size) + _166 + -mem[64] + 68
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x0c85295b(?????):
            require unknown_0x80a003ff(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + ('cd', 4).length + 36 <= calldata.size
            return Mask(32, 224, sha3(call.data[cd[4] + 36 len ('cd', 4).length]))
        require calldata.size - 4 >= 64
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 4).length
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        s = 160
        idx = cd[4] + 36
        while idx < cd[4] + (32 * ('cd', 4).length) + 36:
            require cd[idx] == address(cd[idx])
            mem[s] = cd[idx]
            s = s + 32
            idx = idx + 32
            continue 
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        idx = cd[36] + 36
        s = ceil32(32 * ('cd', 4).length) + 161
        while idx < cd[36] + (32 * ('cd', 36).length) + 36:
            require cd[idx] <= test266151307()
            require cd[36] + cd[idx] + 67 < calldata.size
            if cd[(cd[36] + cd[idx] + 36)] > test266151307():
                revert with 0, 65
            _92 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
            mem[_92] = cd[(cd[36] + cd[idx] + 36)]
            require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
            mem[_92 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
            mem[_92 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
            mem[s] = _92
            idx = idx + 32
            s = s + 32
            continue 
        if mem[128] <= 0:
            revert with 0, 'Invalid input'
        if mem[128] != mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 'Invalid input'
        _129 = mem[128]
        idx = 0
        while idx < _129:
            if idx >= mem[128]:
                revert with 0, 50
            _131 = mem[(32 * idx) + 160]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            _133 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
            _134 = mem[64]
            _135 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]]
            s = 0
            while s < _135:
                mem[s + _134] = mem[s + _133 + 32]
                _129 = mem[128]
                s = s + 32
                continue 
            if ceil32(_135) <= _135:
                call address(_131).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _135 + _134 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if not idx + 1:
                            revert with 0, 17
                        _129 = mem[128]
                        idx = idx + 1
                        continue 
                    _166 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _168 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _168:
                        mem[idx + _166 + 68] = mem[idx + 128]
                        _129 = mem[128]
                        idx = idx + 32
                        continue 
                    if ceil32(_168) > _168:
                        mem[_166 + _168 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_168) + _166 + -mem[64] + 68
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_163] = return_data.size
                mem[_163 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if not idx + 1:
                        revert with 0, 17
                    _129 = mem[128]
                    idx = idx + 1
                    continue 
                _167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _167 + 68] = mem[idx + _163 + 32]
                    _129 = mem[128]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[_167 + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _167 + -mem[64] + 68
            mem[_134 + _135] = 0
            call address(_131).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _135 + _134 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if not idx + 1:
                        revert with 0, 17
                    _129 = mem[128]
                    idx = idx + 1
                    continue 
                _170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _172 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _172:
                    mem[idx + _170 + 68] = mem[idx + 128]
                    _129 = mem[128]
                    idx = idx + 32
                    continue 
                if ceil32(_172) > _172:
                    mem[_170 + _172 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_172) + _170 + -mem[64] + 68
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_165] = return_data.size
            mem[_165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not idx + 1:
                    revert with 0, 17
                _129 = mem[128]
                idx = idx + 1
                continue 
            _171 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _171 + 68] = mem[idx + _165 + 32]
                _129 = mem[128]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_171 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _171 + -mem[64] + 68
}



}
