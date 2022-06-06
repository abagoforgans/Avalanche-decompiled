contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4c0770b9(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 100).length == ('cd', 68).length
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
                mem[_94] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                mem[_94 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
                mem[_94 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
                _98 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                staticcall cd[((32 * idx) + cd[68] + 36)].mem[_94 + 32 len 4] with:
                        gas cd[4] wei
                       args mem[_94 + 36 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 4]
                if return_data.size < cd[36]:
                    mem[64] = _98 + ceil32(return_data.size) + 1
                    mem[_98] = return_data.size
                    mem[_98 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _98
                mem[(32 * idx) + 128] = ext_call.success
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _64 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _66 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _66) + 128
            _124 = mem[(32 * ('cd', 68).length) + 128]
            mem[_64 + (32 * _66) + 128] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = _64 + (32 * _66) + (32 * _124) + 160
            u = _64 + (32 * _66) + 160
            while idx < _124:
                mem[u] = t + -_64 + -(32 * _66) - 160
                _166 = mem[s]
                _167 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _167:
                    mem[v + t + 32] = mem[v + _166 + 32]
                    v = v + 32
                    continue 
                if ceil32(_167) > _167:
                    mem[t + _167 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_167) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * ('cd', 68).length) + 160] = 96
            s = (32 * ('cd', 68).length) + 160
            idx = ('cd', 68).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
                mem[_152] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                mem[_152 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
                mem[_152 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
                _154 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                staticcall cd[((32 * idx) + cd[68] + 36)].mem[_152 + 32 len 4] with:
                        gas cd[4] wei
                       args mem[_152 + 36 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 4]
                if return_data.size < cd[36]:
                    mem[64] = _154 + ceil32(return_data.size) + 1
                    mem[_154] = return_data.size
                    mem[_154 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _154
                mem[(32 * idx) + 128] = ext_call.success
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _128 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _132 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _132) + 128
            _168 = mem[(32 * ('cd', 68).length) + 128]
            mem[_128 + (32 * _132) + 128] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = _128 + (32 * _132) + (32 * _168) + 160
            u = _128 + (32 * _132) + 160
            while idx < _168:
                mem[u] = t + -_128 + -(32 * _132) - 160
                _187 = mem[s]
                _188 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _188:
                    mem[v + t + 32] = mem[v + _187 + 32]
                    v = v + 32
                    continue 
                if ceil32(_188) > _188:
                    mem[t + _188 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_188) + t + 32
                u = u + 32
                continue 
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
                mem[_96] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                mem[_96 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
                mem[_96 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
                _100 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                staticcall cd[((32 * idx) + cd[68] + 36)].mem[_96 + 32 len 4] with:
                        gas cd[4] wei
                       args mem[_96 + 36 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 4]
                if return_data.size < cd[36]:
                    mem[64] = _100 + ceil32(return_data.size) + 1
                    mem[_100] = return_data.size
                    mem[_100 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _100
                mem[(32 * idx) + 128] = ext_call.success
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _65 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _67 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _67) + 128
            _126 = mem[(32 * ('cd', 68).length) + 128]
            mem[_65 + (32 * _67) + 128] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = _65 + (32 * _67) + (32 * _126) + 160
            u = _65 + (32 * _67) + 160
            while idx < _126:
                mem[u] = t + -_65 + -(32 * _67) - 160
                _170 = mem[s]
                _171 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _171:
                    mem[v + t + 32] = mem[v + _170 + 32]
                    v = v + 32
                    continue 
                if ceil32(_171) > _171:
                    mem[t + _171 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_171) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * ('cd', 68).length) + 160] = 96
            s = (32 * ('cd', 68).length) + 160
            idx = ('cd', 68).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
                mem[_153] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                mem[_153 + 32 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
                mem[_153 + cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] + 32] = 0
                _156 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                staticcall cd[((32 * idx) + cd[68] + 36)].mem[_153 + 32 len 4] with:
                        gas cd[4] wei
                       args mem[_153 + 36 len cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 4]
                if return_data.size < cd[36]:
                    mem[64] = _156 + ceil32(return_data.size) + 1
                    mem[_156] = return_data.size
                    mem[_156 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = _156
                mem[(32 * idx) + 128] = ext_call.success
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _129 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _135 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 64] = (32 * _135) + 128
            _172 = mem[(32 * ('cd', 68).length) + 128]
            mem[_129 + (32 * _135) + 128] = mem[(32 * ('cd', 68).length) + 128]
            idx = 0
            s = (32 * ('cd', 68).length) + 160
            t = _129 + (32 * _135) + (32 * _172) + 160
            u = _129 + (32 * _135) + 160
            while idx < _172:
                mem[u] = t + -_129 + -(32 * _135) - 160
                _190 = mem[s]
                _191 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _191:
                    mem[v + t + 32] = mem[v + _190 + 32]
                    v = v + 32
                    continue 
                if ceil32(_191) > _191:
                    mem[t + _191 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_191) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
