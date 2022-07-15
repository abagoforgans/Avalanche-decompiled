contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_61ed35bf(?) payable {
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
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 <= calldata.size - cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
            _50 = mem[64]
            mem[mem[64] len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
            mem[cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + mem[64]] = 0
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _50 + -mem[64] - 4]
            if not return_data.size:
                _54 = mem[64]
                mem[64] = mem[64] + 64
                mem[_54] = bool(ext_call.success)
                mem[_54 + 32] = 96
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _54
            else:
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_52] = return_data.size
                mem[_52 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _56 = mem[64]
                mem[64] = mem[64] + 64
                mem[_56] = bool(ext_call.success)
                mem[_56 + 32] = _52
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _56
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _35 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _35:
            mem[u] = t + -_34 - 96
            _64 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _66 = mem[_64 + 32]
            mem[t + 32] = 64
            _67 = mem[_66]
            mem[t + 64] = mem[_66]
            v = 0
            while v < _67:
                mem[v + t + 96] = mem[v + _66 + 32]
                v = v + 32
                continue 
            if ceil32(_67) > _67:
                mem[t + _67 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_67) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 96
        mem[128] = (32 * ('cd', 4).length) + 128
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 <= calldata.size - cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
            _78 = mem[64]
            mem[mem[64] len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
            mem[cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + mem[64]] = 0
            staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _78 + -mem[64] - 4]
            if not return_data.size:
                _81 = mem[64]
                mem[64] = mem[64] + 64
                mem[_81] = bool(ext_call.success)
                mem[_81 + 32] = 96
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _81
            else:
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_80] = return_data.size
                mem[_80 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _83 = mem[64]
                mem[64] = mem[64] + 64
                mem[_83] = bool(ext_call.success)
                mem[_83 + 32] = _80
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _83
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _69 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _70 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 96
        u = mem[64] + 96
        while idx < _70:
            mem[u] = t + -_69 - 96
            _86 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _88 = mem[_86 + 32]
            mem[t + 32] = 64
            _89 = mem[_88]
            mem[t + 64] = mem[_88]
            v = 0
            while v < _89:
                mem[v + t + 96] = mem[v + _88 + 32]
                v = v + 32
                continue 
            if ceil32(_89) > _89:
                mem[t + _89 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_89) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_66ed38b1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if block.number < cd[36]:
        mem[96] = block.number
        mem[128] = 64
        mem[160] = block.number
        idx = 0
        s = 128
        t = (32 * block.number) + 192
        u = 192
        while idx < block.number:
            mem[u] = t - 192
            _68 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _70 = mem[_68 + 32]
            mem[t + 32] = 64
            _71 = mem[_70]
            mem[t + 64] = mem[_70]
            v = 0
            while v < _71:
                mem[v + t + 96] = mem[v + _70 + 32]
                v = v + 32
                continue 
            if ceil32(_71) > _71:
                mem[t + _71 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_71) + t + 96
            u = u + 32
            continue 
    else:
        if cd[68] > test266151307():
            revert with 0, 65
        mem[96] = cd[68]
        mem[64] = (32 * cd[68]) + 128
        if not cd[68]:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] <= test266151307()
                require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 <= calldata.size - cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                mem[_88] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
                mem[_88 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                mem[_88 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 32] = 0
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)] <= test266151307()
                require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)])
                _92 = mem[64]
                mem[64] = mem[64] + (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]) + 32
                mem[_92] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]
                mem[_92 + 32 len 32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 68 len 32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]]
                mem[_92 + (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]) + 32] = 0
                s = 0
                t = 0
                while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]:
                    if s >= mem[_92]:
                        revert with 0, 50
                    _138 = mem[(32 * s) + _92 + 32]
                    _139 = mem[64]
                    _140 = mem[_88]
                    idx = 0
                    while idx < _140:
                        mem[idx + _139] = mem[idx + _88 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_140) <= _140:
                        staticcall address(_138).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _140 + _139 + -mem[64] - 4]
                        if not return_data.size:
                            _199 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_199] = bool(ext_call.success)
                            mem[_199 + 32] = 96
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _199
                        else:
                            _197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_197] = return_data.size
                            mem[_197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _200 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_200] = bool(ext_call.success)
                            mem[_200 + 32] = _197
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _200
                    else:
                        mem[_139 + _140] = 0
                        staticcall address(_138).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _140 + _139 + -mem[64] - 4]
                        if not return_data.size:
                            _203 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_203] = bool(ext_call.success)
                            mem[_203 + 32] = 96
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _203
                        else:
                            _201 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_201] = return_data.size
                            mem[_201 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_204] = bool(ext_call.success)
                            mem[_204 + 32] = _201
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _204
                    if not s + 1:
                        revert with 0, 17
                    s = s + 1
                    t = t + 1
                    continue 
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _73 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _75 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _75:
                mem[u] = t + -_73 - 96
                _132 = mem[s]
                mem[t] = bool(mem[mem[s]])
                _134 = mem[_132 + 32]
                mem[t + 32] = 64
                _135 = mem[_134]
                mem[t + 64] = mem[_134]
                v = 0
                while v < _135:
                    mem[v + t + 96] = mem[v + _134 + 32]
                    v = v + 32
                    continue 
                if ceil32(_135) > _135:
                    mem[t + _135 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_135) + t + 96
                u = u + 32
                continue 
        else:
            mem[64] = (32 * cd[68]) + 192
            mem[(32 * cd[68]) + 128] = 0
            mem[(32 * cd[68]) + 160] = 96
            mem[128] = (32 * cd[68]) + 128
            s = 128
            idx = cd[68]
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * cd[68]) + 128] = 0
                mem[(32 * cd[68]) + 160] = 96
                mem[s + 32] = (32 * cd[68]) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] <= test266151307()
                require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 <= calldata.size - cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]) + 32
                mem[_154] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
                mem[_154 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
                mem[_154 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 32] = 0
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 99
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
                require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)] <= test266151307()
                require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)])
                _164 = mem[64]
                mem[64] = mem[64] + (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]) + 32
                mem[_164] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]
                mem[_164 + 32 len 32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 68 len 32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]]
                mem[_164 + (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]) + 32] = 0
                s = 0
                t = 0
                while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] + 36)]:
                    if s >= mem[_164]:
                        revert with 0, 50
                    _192 = mem[(32 * s) + _164 + 32]
                    _193 = mem[64]
                    _194 = mem[_154]
                    idx = 0
                    while idx < _194:
                        mem[idx + _193] = mem[idx + _154 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_194) <= _194:
                        staticcall address(_192).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _194 + _193 + -mem[64] - 4]
                        if not return_data.size:
                            _226 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_226] = bool(ext_call.success)
                            mem[_226 + 32] = 96
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _226
                        else:
                            _224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_224] = return_data.size
                            mem[_224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _227 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_227] = bool(ext_call.success)
                            mem[_227 + 32] = _224
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _227
                    else:
                        mem[_193 + _194] = 0
                        staticcall address(_192).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _194 + _193 + -mem[64] - 4]
                        if not return_data.size:
                            _229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_229] = bool(ext_call.success)
                            mem[_229 + 32] = 96
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _229
                        else:
                            _228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_228] = return_data.size
                            mem[_228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_230] = bool(ext_call.success)
                            mem[_230 + 32] = _228
                            if not t + 1:
                                revert with 0, 17
                            if t >= mem[96]:
                                revert with 0, 50
                            mem[(32 * t) + 128] = _230
                    if not s + 1:
                        revert with 0, 17
                    s = s + 1
                    t = t + 1
                    continue 
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _141 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 64
            _143 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _143:
                mem[u] = t + -_141 - 96
                _186 = mem[s]
                mem[t] = bool(mem[mem[s]])
                _188 = mem[_186 + 32]
                mem[t + 32] = 64
                _189 = mem[_188]
                mem[t + 64] = mem[_188]
                v = 0
                while v < _189:
                    mem[v + t + 96] = mem[v + _188 + 32]
                    v = v + 32
                    continue 
                if ceil32(_189) > _189:
                    mem[t + _189 + 96] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_189) + t + 96
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
