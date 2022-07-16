contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_17c7013d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _20 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_20] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_20 + 32] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _20
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _21 = mem[64]
        mem[mem[64]] = 32
        _22 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _22:
            _36 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_36 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _21 + (64 * _22) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _39 = mem[64]
        mem[64] = mem[64] + 64
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[_39] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[_39 + 32] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _39
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _41 = mem[64]
    mem[mem[64]] = 32
    _42 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _42:
        _48 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_48 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _41 + (64 * _42) + -mem[64] + 64
}

function sub_cee4e194(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[36] + 36)]):
                _125 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_125] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_125 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_125 + 64] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _125
            else:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _139 = mem[_135]
                    _145 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_145] = address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_145 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_145 + 64] = _139
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _145
                else:
                    if return_data.size <= 3:
                        if not return_data.size:
                            _150 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_150] = address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_150 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_150 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _150
                        else:
                            _144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_144] = return_data.size
                            mem[_144 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _151 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_151] = address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_151 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_151 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _151
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if not return_data.size:
                                _154 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_154] = address(cd[((32 * idx) + cd[36] + 36)])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_154 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_154 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _154
                            else:
                                _146 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_146] = return_data.size
                                mem[_146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _155 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_155] = address(cd[((32 * idx) + cd[36] + 36)])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_155 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_155 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _155
                        else:
                            if return_data.size < 68:
                                if not return_data.size:
                                    _168 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_168] = address(cd[((32 * idx) + cd[36] + 36)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_168 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_168 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _168
                                else:
                                    _159 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_159] = return_data.size
                                    mem[_159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _169 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_169] = address(cd[((32 * idx) + cd[36] + 36)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_169 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_169 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _169
                            else:
                                _147 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                    if not return_data.size:
                                        _171 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_171] = address(cd[((32 * idx) + cd[36] + 36)])
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_171 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_171 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _171
                                    else:
                                        _161 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_161] = return_data.size
                                        mem[_161 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _172 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_172] = address(cd[((32 * idx) + cd[36] + 36)])
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_172 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_172 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _172
                                else:
                                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                        if not return_data.size:
                                            _174 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_174] = address(cd[((32 * idx) + cd[36] + 36)])
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_174 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_174 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _174
                                        else:
                                            _164 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_164] = return_data.size
                                            mem[_164 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _175 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_175] = address(cd[((32 * idx) + cd[36] + 36)])
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_175 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_175 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _175
                                    else:
                                        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                            if not return_data.size:
                                                _180 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 36).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                mem[_180] = address(cd[((32 * idx) + cd[36] + 36)])
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_180 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_180 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _180
                                            else:
                                                _167 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_167] = return_data.size
                                                mem[_167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _181 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 36).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                mem[_181] = address(cd[((32 * idx) + cd[36] + 36)])
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_181 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_181 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _181
                                        else:
                                            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                            if _147 + ext_call.return_data[0]:
                                                _178 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 36).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                mem[_178] = address(cd[((32 * idx) + cd[36] + 36)])
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_178 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_178 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _178
                                            else:
                                                if not return_data.size:
                                                    _194 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                    mem[_194] = address(cd[((32 * idx) + cd[36] + 36)])
                                                    if idx >= ('cd', 4).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_194 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_194 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = _194
                                                else:
                                                    _179 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_179] = return_data.size
                                                    mem[_179 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _195 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                    mem[_195] = address(cd[((32 * idx) + cd[36] + 36)])
                                                    if idx >= ('cd', 4).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_195 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_195 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = _195
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _116 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _117:
            _228 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_228 + 44 len 20]
            mem[t + 64] = mem[_228 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _116 + (96 * _117) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 224
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not ext_code.size(cd[((32 * idx) + cd[36] + 36)]):
            _240 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_240] = address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_240 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[_240 + 64] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _240
        else:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _245 = mem[_244]
                _248 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[_248] = address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_248 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_248 + 64] = _245
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _248
            else:
                if return_data.size <= 3:
                    if not return_data.size:
                        _253 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_253] = address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_253 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_253 + 64] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _253
                    else:
                        _247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_247] = return_data.size
                        mem[_247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _254 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_254] = address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_254 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_254 + 64] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _254
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            _255 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_255] = address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_255 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_255 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _255
                        else:
                            _249 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_249] = return_data.size
                            mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _256 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_256] = address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_256 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_256 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _256
                    else:
                        if return_data.size < 68:
                            if not return_data.size:
                                _261 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_261] = address(cd[((32 * idx) + cd[36] + 36)])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_261 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_261 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _261
                            else:
                                _257 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_257] = return_data.size
                                mem[_257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _262 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_262] = address(cd[((32 * idx) + cd[36] + 36)])
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_262 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_262 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _262
                        else:
                            _250 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                if not return_data.size:
                                    _263 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_263] = address(cd[((32 * idx) + cd[36] + 36)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_263 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_263 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _263
                                else:
                                    _258 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_258] = return_data.size
                                    mem[_258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _264 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_264] = address(cd[((32 * idx) + cd[36] + 36)])
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_264 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_264 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _264
                            else:
                                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                    if not return_data.size:
                                        _265 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_265] = address(cd[((32 * idx) + cd[36] + 36)])
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_265 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_265 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _265
                                    else:
                                        _259 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_259] = return_data.size
                                        mem[_259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _266 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_266] = address(cd[((32 * idx) + cd[36] + 36)])
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_266 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_266 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _266
                                else:
                                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                        if not return_data.size:
                                            _270 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_270] = address(cd[((32 * idx) + cd[36] + 36)])
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_270 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_270 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _270
                                        else:
                                            _260 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_260] = return_data.size
                                            mem[_260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _271 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_271] = address(cd[((32 * idx) + cd[36] + 36)])
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_271 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_271 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _271
                                    else:
                                        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                        if _250 + ext_call.return_data[0]:
                                            _268 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_268] = address(cd[((32 * idx) + cd[36] + 36)])
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_268 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_268 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _268
                                        else:
                                            if not return_data.size:
                                                _276 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 36).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                mem[_276] = address(cd[((32 * idx) + cd[36] + 36)])
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_276 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_276 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _276
                                            else:
                                                _269 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_269] = return_data.size
                                                mem[_269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _277 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 36).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                mem[_277] = address(cd[((32 * idx) + cd[36] + 36)])
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_277 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_277 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _277
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _233 = mem[64]
    mem[mem[64]] = 32
    _234 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _234:
        _289 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_289 + 44 len 20]
        mem[t + 64] = mem[_289 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _233 + (96 * _234) + -mem[64] + 64
}



}
