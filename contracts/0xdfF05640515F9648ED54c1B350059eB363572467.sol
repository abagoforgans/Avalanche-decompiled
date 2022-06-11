contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b434bc89(?) payable {
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
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 195
            require calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 36 >= 160
            _72 = mem[64]
            if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 160
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[_72] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] > test266151307():
                revert with 0, 65
            _78 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1
            mem[_78] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 68 <= calldata.size
            mem[_78 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
            mem[_78 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 32] = 0
            mem[_72 + 32] = _78
            mem[_72 + 64] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]
            mem[_72 + 96] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == bool(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            mem[_72 + 128] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            _84 = mem[64]
            s = 0
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]:
                mem[s + _84] = mem[s + _78 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]) <= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]:
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] wei
                     gas cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] wei
                    args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _84 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                    else:
                        _141 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _141
                else:
                    _134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_134] = return_data.size
                    mem[_134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _134
                    else:
                        _143 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _143
            else:
                mem[_84 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] wei
                     gas cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] wei
                    args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _84 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                    else:
                        _147 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _147
                else:
                    _138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_138] = return_data.size
                    mem[_138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _138
                    else:
                        _149 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _149
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _65 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _65:
            mem[t] = u + -_64 - 64
            _126 = mem[s]
            _127 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _127:
                mem[v + u + 32] = mem[v + _126 + 32]
                v = v + 32
                continue 
            if ceil32(_127) > _127:
                mem[u + _127 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_127) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 195
            require calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 36 >= 160
            _151 = mem[64]
            if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 160
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[_151] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 67 < calldata.size
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] > test266151307():
                revert with 0, 65
            _154 = mem[64]
            if mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)])) + 1
            mem[_154] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 68 <= calldata.size
            mem[_154 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]]
            mem[_154 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + 32] = 0
            mem[_151 + 32] = _154
            mem[_151 + 64] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]
            mem[_151 + 96] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == bool(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            mem[_151 + 128] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            _159 = mem[64]
            s = 0
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]:
                mem[s + _159] = mem[s + _154 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]) <= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]:
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] wei
                     gas cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] wei
                    args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _159 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                    else:
                        _189 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _189
                else:
                    _185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_185] = return_data.size
                    mem[_185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _185
                    else:
                        _191 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _191
            else:
                mem[_159 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)]] = 0
                call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]).mem[mem[64] len 4] with:
                   value cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] wei
                     gas cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] wei
                    args mem[mem[64] + 4 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] + 36)] + _159 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                    else:
                        _195 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _195
                else:
                    _187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_187] = return_data.size
                    mem[_187 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _187
                    else:
                        _197 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _197
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _130 = mem[64]
        mem[mem[64]] = 32
        _131 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _131:
            mem[t] = u + -_130 - 64
            _179 = mem[s]
            _180 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _180:
                mem[v + u + 32] = mem[v + _179 + 32]
                v = v + 32
                continue 
            if ceil32(_180) > _180:
                mem[u + _180 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_180) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
