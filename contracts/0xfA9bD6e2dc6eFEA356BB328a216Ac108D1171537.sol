contract main {




// =====================  Runtime code  =====================


const sub_3dda755d(?) = 0


address narwhalAddress;

function narwhal() payable {
    return narwhalAddress
}

function _fallback() payable {
    revert
}

function sub_1d0e6b59(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 100).length:
        _19 = mem[64]
        mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64] + 68] = address(cd[4])
        mem[mem[64] + 100] = address(cd[36])
        mem[mem[64] + 132] = cd[68]
        mem[mem[64] + 164] = 0
        _20 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_20 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_20 + 36 len 28]
        _23 = mem[_20]
        v = _20 + 32
        w = mem[64]
        u = mem[_20]
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[mem[64] + floor32(mem[_20])] = mem[_20 + floor32(mem[_20]) + -(mem[_20] % 32) + 64 len mem[_20] % 32] or Mask(8 * -(mem[_20] % 32) + 32, -(8 * -(mem[_20] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_20])])
        staticcall narwhalAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _23 + _19 + -mem[64] + 192]
        if not return_data.size:
            if not ext_call.success:
                if 0 <= s:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = 0
                t = cd[((32 * idx) + cd[100] + 36)]
                continue 
            require mem[96] >= 32
            if mem[128] <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = mem[128]
            t = cd[((32 * idx) + cd[100] + 36)]
            continue 
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_37] = return_data.size
        mem[_37 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if 0 <= s:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = 0
            t = cd[((32 * idx) + cd[100] + 36)]
            continue 
        require return_data.size >= 32
        if mem[_37 + 32] <= s:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = mem[_37 + 32]
        t = cd[((32 * idx) + cd[100] + 36)]
        continue 
    return t, s
}

function sub_7668919c(?) payable {
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[96] = ('cd', 100).length
    if not ('cd', 100).length:
        if address(cd[4]) == address(cd[36]):
            mem[(32 * ('cd', 100).length) + 224 len floor32(('cd', 100).length)] = mem[128 len floor32(('cd', 100).length)]
            return Array(len=('cd', 100).length, data=mem[128 len floor32(('cd', 100).length)], mem[(32 * ('cd', 100).length) + floor32(('cd', 100).length) + 224 len (32 * ('cd', 100).length) - floor32(('cd', 100).length)]), 
                   cd[68]
        mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
        if not ('cd', 100).length:
            mem[(64 * ('cd', 100).length) + 160] = ('cd', 100).length
            mem[64] = (98 * ('cd', 100).length) + 192
            idx = 0
            while idx < ('cd', 100).length:
                _1070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1070] = 26
                mem[_1070 + 32] = 'SafeMath: division by zero'
                if not cd[132]:
                    _1075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1075 + 68] = mem[idx + _1070 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1075 + 68] = mem[_1075 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1075 + -mem[64] + 100
                require idx < ('cd', 100).length
                _1159 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 68] = address(cd[4])
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[68] / cd[132]
                mem[mem[64] + 164] = 0
                _1160 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1160 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_1160 + 36 len 28]
                _1163 = mem[_1160]
                t = _1160 + 32
                u = mem[64]
                s = mem[_1160]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1160])] = mem[_1160 + floor32(mem[_1160]) + -(mem[_1160] % 32) + 64 len mem[_1160] % 32] or Mask(8 * -(mem[_1160] % 32) + 32, -(8 * -(mem[_1160] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1160])])
                staticcall narwhalAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1163 + _1159 + -mem[64] + 192]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[128]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[128]
                else:
                    _2139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2139] = return_data.size
                    mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_2139 + 32]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < cd[132]:
                t = 1
                u = 0
                while t < mem[(32 * ('cd', 100).length) + 128]:
                    require u < mem[(32 * ('cd', 100).length) + 128]
                    require t < mem[(32 * ('cd', 100).length) + 128]
                    if mem[(32 * t) + (32 * ('cd', 100).length) + 160] <= mem[(32 * u) + (32 * ('cd', 100).length) + 160]:
                        t = t + 1
                        u = u
                        continue 
                    t = t + 1
                    u = t
                    continue 
                require u < mem[(32 * ('cd', 100).length) + 128]
                _3150 = mem[(32 * u) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * u) + (32 * ('cd', 100).length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require u < mem[96]
                mem[(32 * u) + 128] = mem[(32 * u) + 128] + 1
                require u < mem[96]
                _3186 = mem[(32 * u) + 128]
                if not cd[68]:
                    _3198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3198] = 26
                    mem[_3198 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3203 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3203 + 68] = mem[idx + _3198 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3203 + 68] = mem[_3203 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3203 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3150 + s
                        continue 
                    require u < ('cd', 100).length
                    _3262 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = 0 / cd[132]
                    mem[mem[64] + 164] = 0
                    _3263 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3263 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3263 + 36 len 28]
                    _3266 = mem[_3263]
                    v = _3263 + 32
                    w = mem[64]
                    t = mem[_3263]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3263])] = mem[_3263 + floor32(mem[_3263]) + -(mem[_3263] % 32) + 64 len mem[_3263] % 32] or Mask(8 * -(mem[_3263] % 32) + 32, -(8 * -(mem[_3263] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3263])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3266 + _3262 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4220 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4269 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4269] = 30
                            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
                            if _4220 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4220
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4269 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4104 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4270 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4315 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4315] = 30
                            mem[_4315 + 32] = 'SafeMath: subtraction overflow'
                            if _4270 <= _4104:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4104 - _4270
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4104
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4315 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4057 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4057] = return_data.size
                        mem[_4057 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4223 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4272] = 30
                            mem[_4272 + 32] = 'SafeMath: subtraction overflow'
                            if _4223 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4223
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4272 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4105 = mem[_4057 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4057 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4105
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4273 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4317] = 30
                            mem[_4317 + 32] = 'SafeMath: subtraction overflow'
                            if _4273 <= _4105:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4105 - _4273
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4105
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4317 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if cd[68] + (mem[(32 * u) + 128] * cd[68]) / cd[68] != mem[(32 * u) + 128] + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3202] = 26
                    mem[_3202 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3218 + 68] = mem[idx + _3202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3218 + 68] = mem[_3218 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3218 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3150 + s
                        continue 
                    require u < ('cd', 100).length
                    _3282 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[68] + (_3186 * cd[68]) / cd[132]
                    mem[mem[64] + 164] = 0
                    _3283 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3283 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3283 + 36 len 28]
                    _3286 = mem[_3283]
                    v = _3283 + 32
                    w = mem[64]
                    t = mem[_3283]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3283])] = mem[_3283 + floor32(mem[_3283]) + -(mem[_3283] % 32) + 64 len mem[_3283] % 32] or Mask(8 * -(mem[_3283] % 32) + 32, -(8 * -(mem[_3283] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3283])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3286 + _3282 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4214 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4263] = 30
                            mem[_4263 + 32] = 'SafeMath: subtraction overflow'
                            if _4214 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4214
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4263 + 32]
                                s = s + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4102 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4264 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4311] = 30
                            mem[_4311 + 32] = 'SafeMath: subtraction overflow'
                            if _4264 <= _4102:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4102 - _4264
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4102
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4311 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4054] = return_data.size
                        mem[_4054 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4217 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4266] = 30
                            mem[_4266 + 32] = 'SafeMath: subtraction overflow'
                            if _4217 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4217
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4266 + 32]
                                s = s + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4103 = mem[_4054 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4054 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4103
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4267 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4313] = 30
                            mem[_4313 + 32] = 'SafeMath: subtraction overflow'
                            if _4267 <= _4103:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4103 - _4267
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4103
                                idx = idx + 1
                                s = _3150 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4313 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[2401 len 32 * ('cd', 100).length]
            mem[(64 * ('cd', 100).length) + 160] = ('cd', 100).length
            mem[64] = (98 * ('cd', 100).length) + 192
            mem[(64 * ('cd', 100).length) + 192 len 32 * ('cd', 100).length] = code.data[2401 len 32 * ('cd', 100).length]
            idx = 0
            while idx < ('cd', 100).length:
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                if not cd[132]:
                    _1079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1079 + 68] = mem[idx + _1071 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1079 + 68] = mem[_1079 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1079 + -mem[64] + 100
                require idx < ('cd', 100).length
                _1165 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 68] = address(cd[4])
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[68] / cd[132]
                mem[mem[64] + 164] = 0
                _1166 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1166 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_1166 + 36 len 28]
                _1169 = mem[_1166]
                t = _1166 + 32
                u = mem[64]
                s = mem[_1166]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1166])] = mem[_1166 + floor32(mem[_1166]) + -(mem[_1166] % 32) + 64 len mem[_1166] % 32] or Mask(8 * -(mem[_1166] % 32) + 32, -(8 * -(mem[_1166] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1166])])
                staticcall narwhalAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1169 + _1165 + -mem[64] + 192]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[128]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[128]
                else:
                    _2143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2143] = return_data.size
                    mem[_2143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_2143 + 32]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < cd[132]:
                t = 1
                u = 0
                while t < mem[(32 * ('cd', 100).length) + 128]:
                    require u < mem[(32 * ('cd', 100).length) + 128]
                    require t < mem[(32 * ('cd', 100).length) + 128]
                    if mem[(32 * t) + (32 * ('cd', 100).length) + 160] <= mem[(32 * u) + (32 * ('cd', 100).length) + 160]:
                        t = t + 1
                        u = u
                        continue 
                    t = t + 1
                    u = t
                    continue 
                require u < mem[(32 * ('cd', 100).length) + 128]
                _3153 = mem[(32 * u) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * u) + (32 * ('cd', 100).length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require u < mem[96]
                mem[(32 * u) + 128] = mem[(32 * u) + 128] + 1
                require u < mem[96]
                _3187 = mem[(32 * u) + 128]
                if not cd[68]:
                    _3199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3199] = 26
                    mem[_3199 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3207 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3207 + 68] = mem[idx + _3199 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3207 + 68] = mem[_3207 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3207 + -mem[64] + 100
                    if idx + 1 < cd[132]:
                        require u < ('cd', 100).length
                        _3267 = mem[64]
                        mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                        mem[mem[64] + 68] = address(cd[4])
                        mem[mem[64] + 100] = address(cd[36])
                        mem[mem[64] + 132] = 0 / cd[132]
                        mem[mem[64] + 164] = 0
                        _3268 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_3268 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3268 + 36 len 28]
                        _3271 = mem[_3268]
                        v = _3268 + 32
                        w = _3267 + 196
                        t = mem[_3268]
                        while t >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            t = t - 32
                            continue 
                        mem[_3267 + floor32(mem[_3268]) + 196] = mem[_3268 + -(mem[_3268] % 32) + floor32(mem[_3268]) + 64 len mem[_3268] % 32] or Mask(8 * -(mem[_3268] % 32) + 32, -(8 * -(mem[_3268] % 32) + 32) + 256, mem[_3267 + floor32(mem[_3268]) + 196])
                        staticcall narwhalAddress.mem[_3267 + 196 len 4] with:
                                gas gas_remaining wei
                               args mem[_3267 + 200 len _3271 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                else:
                                    require u < mem[(64 * ('cd', 100).length) + 160]
                                    _4232 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                                    mem[64] = _3267 + 260
                                    mem[_3267 + 196] = 30
                                    mem[_3267 + 228] = 'SafeMath: subtraction overflow'
                                    if _4232 > 0:
                                        mem[_3267 + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3267 + 264] = 32
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + _3267 + 328] = mem[idx + _3267 + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4232
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                else:
                                    require u < mem[(64 * ('cd', 100).length) + 160]
                                    _4282 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                                    mem[64] = _3267 + 260
                                    mem[_3267 + 196] = 30
                                    mem[_3267 + 228] = 'SafeMath: subtraction overflow'
                                    if _4282 > mem[128]:
                                        mem[_3267 + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3267 + 264] = 32
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + _3267 + 328] = mem[idx + _3267 + 228]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = mem[128] - _4282
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                        else:
                            mem[64] = _3267 + ceil32(return_data.size) + 197
                            mem[_3267 + 196] = return_data.size
                            mem[_3267 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                else:
                                    require u < mem[(64 * ('cd', 100).length) + 160]
                                    _4235 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                                    mem[64] = _3267 + ceil32(return_data.size) + 261
                                    mem[_3267 + ceil32(return_data.size) + 197] = 30
                                    mem[_3267 + ceil32(return_data.size) + 229] = 'SafeMath: subtraction overflow'
                                    if _4235 > 0:
                                        mem[_3267 + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3267 + ceil32(return_data.size) + 265] = 32
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + _3267 + ceil32(return_data.size) + 329] = mem[idx + _3267 + ceil32(return_data.size) + 229]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4235
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                _4109 = mem[_3267 + 228]
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                if mem[_3267 + 228] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                else:
                                    require u < mem[(64 * ('cd', 100).length) + 160]
                                    _4285 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                                    mem[64] = _3267 + ceil32(return_data.size) + 261
                                    mem[_3267 + ceil32(return_data.size) + 197] = 30
                                    mem[_3267 + ceil32(return_data.size) + 229] = 'SafeMath: subtraction overflow'
                                    if _4285 > _4109:
                                        mem[_3267 + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_3267 + ceil32(return_data.size) + 265] = 32
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + _3267 + ceil32(return_data.size) + 329] = mem[idx + _3267 + ceil32(return_data.size) + 229]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require u < mem[(32 * ('cd', 100).length) + 128]
                                    mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4109 - _4285
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4109
                    idx = idx + 1
                    s = _3153 + s
                    continue 
                if cd[68] + (mem[(32 * u) + 128] * cd[68]) / cd[68] != mem[(32 * u) + 128] + 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3206] = 26
                mem[_3206 + 32] = 'SafeMath: division by zero'
                if not cd[132]:
                    _3222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3222 + 68] = mem[idx + _3206 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3222 + 68] = mem[_3222 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3222 + -mem[64] + 100
                if idx + 1 >= cd[132]:
                    idx = idx + 1
                    s = _3153 + s
                    continue 
                require u < ('cd', 100).length
                _3291 = mem[64]
                mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                mem[mem[64] + 68] = address(cd[4])
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[68] + (_3187 * cd[68]) / cd[132]
                mem[mem[64] + 164] = 0
                _3292 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_3292 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3292 + 36 len 28]
                _3295 = mem[_3292]
                v = _3292 + 32
                w = mem[64]
                t = mem[_3292]
                while t >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_3292])] = mem[_3292 + floor32(mem[_3292]) + -(mem[_3292] % 32) + 64 len mem[_3292] % 32] or Mask(8 * -(mem[_3292] % 32) + 32, -(8 * -(mem[_3292] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3292])])
                staticcall narwhalAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3295 + _3291 + -mem[64] + 192]
                if not return_data.size:
                    if not ext_call.success:
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        _4226 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                        _4275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4275] = 30
                        mem[_4275 + 32] = 'SafeMath: subtraction overflow'
                        if _4226 <= 0:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4226
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        s = 32
                        while s < 30:
                            mem[s + mem[64] + 68] = mem[s + _4275 + 32]
                            s = s + 32
                            continue 
                    else:
                        require mem[96] >= 32
                        _4106 = mem[128]
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        _4276 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                        _4319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4319] = 30
                        mem[_4319 + 32] = 'SafeMath: subtraction overflow'
                        if _4276 <= _4106:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4106 - _4276
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4106
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _4319 + 32]
                            idx = idx + 32
                            continue 
                else:
                    _4060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4060] = return_data.size
                    mem[_4060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        _4229 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                        _4278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4278] = 30
                        mem[_4278 + 32] = 'SafeMath: subtraction overflow'
                        if _4229 <= 0:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4229
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        s = 32
                        while s < 30:
                            mem[s + mem[64] + 68] = mem[s + _4278 + 32]
                            s = s + 32
                            continue 
                    else:
                        require return_data.size >= 32
                        _4107 = mem[_4060 + 32]
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        if mem[_4060 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4107
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        require u < mem[(64 * ('cd', 100).length) + 160]
                        _4279 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                        _4321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4321] = 30
                        mem[_4321 + 32] = 'SafeMath: subtraction overflow'
                        if _4279 <= _4107:
                            require u < mem[(32 * ('cd', 100).length) + 128]
                            mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4107 - _4279
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4107
                            idx = idx + 1
                            s = _3153 + s
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _4321 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
    else:
        mem[128 len 32 * ('cd', 100).length] = code.data[2401 len 32 * ('cd', 100).length]
        if address(cd[4]) == address(cd[36]):
            mem[(32 * ('cd', 100).length) + 224 len floor32(('cd', 100).length)] = code.data[2401 len floor32(('cd', 100).length)]
            return Array(len=('cd', 100).length, data=code.data[2401 len floor32(('cd', 100).length)], mem[(32 * ('cd', 100).length) + floor32(('cd', 100).length) + 224 len (32 * ('cd', 100).length) - floor32(('cd', 100).length)]), 
                   cd[68]
        mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
        if not ('cd', 100).length:
            mem[(64 * ('cd', 100).length) + 160] = ('cd', 100).length
            mem[64] = (98 * ('cd', 100).length) + 192
            idx = 0
            while idx < ('cd', 100).length:
                _1072 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1072] = 26
                mem[_1072 + 32] = 'SafeMath: division by zero'
                if not cd[132]:
                    _1083 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1083 + 68] = mem[idx + _1072 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1083 + 68] = mem[_1083 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1083 + -mem[64] + 100
                require idx < ('cd', 100).length
                _1171 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 68] = address(cd[4])
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[68] / cd[132]
                mem[mem[64] + 164] = 0
                _1172 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1172 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_1172 + 36 len 28]
                _1175 = mem[_1172]
                t = _1172 + 32
                u = mem[64]
                s = mem[_1172]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1172])] = mem[_1172 + floor32(mem[_1172]) + -(mem[_1172] % 32) + 64 len mem[_1172] % 32] or Mask(8 * -(mem[_1172] % 32) + 32, -(8 * -(mem[_1172] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1172])])
                staticcall narwhalAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1175 + _1171 + -mem[64] + 192]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[128]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[128]
                else:
                    _2147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2147] = return_data.size
                    mem[_2147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_2147 + 32]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < cd[132]:
                t = 1
                u = 0
                while t < mem[(32 * ('cd', 100).length) + 128]:
                    require u < mem[(32 * ('cd', 100).length) + 128]
                    require t < mem[(32 * ('cd', 100).length) + 128]
                    if mem[(32 * t) + (32 * ('cd', 100).length) + 160] <= mem[(32 * u) + (32 * ('cd', 100).length) + 160]:
                        t = t + 1
                        u = u
                        continue 
                    t = t + 1
                    u = t
                    continue 
                require u < mem[(32 * ('cd', 100).length) + 128]
                _3156 = mem[(32 * u) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * u) + (32 * ('cd', 100).length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require u < mem[96]
                mem[(32 * u) + 128] = mem[(32 * u) + 128] + 1
                require u < mem[96]
                _3188 = mem[(32 * u) + 128]
                if not cd[68]:
                    _3200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3200] = 26
                    mem[_3200 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3211 + 68] = mem[idx + _3200 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 68] = mem[_3211 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3156 + s
                        continue 
                    require u < ('cd', 100).length
                    _3272 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = 0 / cd[132]
                    mem[mem[64] + 164] = 0
                    _3273 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3273 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3273 + 36 len 28]
                    _3276 = mem[_3273]
                    v = _3273 + 32
                    w = mem[64]
                    t = mem[_3273]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3273])] = mem[_3273 + floor32(mem[_3273]) + -(mem[_3273] % 32) + 64 len mem[_3273] % 32] or Mask(8 * -(mem[_3273] % 32) + 32, -(8 * -(mem[_3273] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3273])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3276 + _3272 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4244 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4293] = 30
                            mem[_4293 + 32] = 'SafeMath: subtraction overflow'
                            if _4244 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4244
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4293 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4112 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4294 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4331] = 30
                            mem[_4331 + 32] = 'SafeMath: subtraction overflow'
                            if _4294 <= _4112:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4112 - _4294
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4112
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4331 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4069] = return_data.size
                        mem[_4069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4247 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4296] = 30
                            mem[_4296 + 32] = 'SafeMath: subtraction overflow'
                            if _4247 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4247
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4296 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4113 = mem[_4069 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4069 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4113
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4297 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4333 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4333] = 30
                            mem[_4333 + 32] = 'SafeMath: subtraction overflow'
                            if _4297 <= _4113:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4113 - _4297
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4113
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4333 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if cd[68] + (mem[(32 * u) + 128] * cd[68]) / cd[68] != mem[(32 * u) + 128] + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3210] = 26
                    mem[_3210 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3226 + 68] = mem[idx + _3210 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3226 + 68] = mem[_3226 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3226 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3156 + s
                        continue 
                    require u < ('cd', 100).length
                    _3300 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[68] + (_3188 * cd[68]) / cd[132]
                    mem[mem[64] + 164] = 0
                    _3301 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3301 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3301 + 36 len 28]
                    _3304 = mem[_3301]
                    v = _3301 + 32
                    w = mem[64]
                    t = mem[_3301]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3301])] = mem[_3301 + floor32(mem[_3301]) + -(mem[_3301] % 32) + 64 len mem[_3301] % 32] or Mask(8 * -(mem[_3301] % 32) + 32, -(8 * -(mem[_3301] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3301])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3304 + _3300 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4238 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4287] = 30
                            mem[_4287 + 32] = 'SafeMath: subtraction overflow'
                            if _4238 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4238
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4287 + 32]
                                s = s + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4110 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4288 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4327 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4327] = 30
                            mem[_4327 + 32] = 'SafeMath: subtraction overflow'
                            if _4288 <= _4110:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4110 - _4288
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4110
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4327 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4066 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4066] = return_data.size
                        mem[_4066 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4241 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4290 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4290] = 30
                            mem[_4290 + 32] = 'SafeMath: subtraction overflow'
                            if _4241 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4241
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4290 + 32]
                                s = s + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4111 = mem[_4066 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4066 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4111
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4291 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4329 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4329] = 30
                            mem[_4329 + 32] = 'SafeMath: subtraction overflow'
                            if _4291 <= _4111:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4111 - _4291
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4111
                                idx = idx + 1
                                s = _3156 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4329 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[2401 len 32 * ('cd', 100).length]
            mem[(64 * ('cd', 100).length) + 160] = ('cd', 100).length
            mem[64] = (98 * ('cd', 100).length) + 192
            mem[(64 * ('cd', 100).length) + 192 len 32 * ('cd', 100).length] = code.data[2401 len 32 * ('cd', 100).length]
            idx = 0
            while idx < ('cd', 100).length:
                _1073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1073] = 26
                mem[_1073 + 32] = 'SafeMath: division by zero'
                if not cd[132]:
                    _1087 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1087 + 68] = mem[idx + _1073 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1087 + 68] = mem[_1087 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1087 + -mem[64] + 100
                require idx < ('cd', 100).length
                _1177 = mem[64]
                mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
                mem[mem[64] + 68] = address(cd[4])
                mem[mem[64] + 100] = address(cd[36])
                mem[mem[64] + 132] = cd[68] / cd[132]
                mem[mem[64] + 164] = 0
                _1178 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1178 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_1178 + 36 len 28]
                _1181 = mem[_1178]
                t = _1178 + 32
                u = mem[64]
                s = mem[_1178]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1178])] = mem[_1178 + floor32(mem[_1178]) + -(mem[_1178] % 32) + 64 len mem[_1178] % 32] or Mask(8 * -(mem[_1178] % 32) + 32, -(8 * -(mem[_1178] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1178])])
                staticcall narwhalAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1181 + _1177 + -mem[64] + 192]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[128]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[128]
                else:
                    _2151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2151] = return_data.size
                    mem[_2151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = 0
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_2151 + 32]
                        require idx < mem[(32 * ('cd', 100).length) + 128]
                        require idx < mem[(64 * ('cd', 100).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 100).length) + 192] = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while idx < cd[132]:
                t = 1
                u = 0
                while t < mem[(32 * ('cd', 100).length) + 128]:
                    require u < mem[(32 * ('cd', 100).length) + 128]
                    require t < mem[(32 * ('cd', 100).length) + 128]
                    if mem[(32 * t) + (32 * ('cd', 100).length) + 160] <= mem[(32 * u) + (32 * ('cd', 100).length) + 160]:
                        t = t + 1
                        u = u
                        continue 
                    t = t + 1
                    u = t
                    continue 
                require u < mem[(32 * ('cd', 100).length) + 128]
                _3159 = mem[(32 * u) + (32 * ('cd', 100).length) + 160]
                if mem[(32 * u) + (32 * ('cd', 100).length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require u < mem[96]
                mem[(32 * u) + 128] = mem[(32 * u) + 128] + 1
                require u < mem[96]
                _3189 = mem[(32 * u) + 128]
                if not cd[68]:
                    _3201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3201] = 26
                    mem[_3201 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3215 + 68] = mem[idx + _3201 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3215 + 68] = mem[_3215 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3215 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3159 + s
                        continue 
                    require u < ('cd', 100).length
                    _3277 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = 0 / cd[132]
                    mem[mem[64] + 164] = 0
                    _3278 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3278 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3278 + 36 len 28]
                    _3281 = mem[_3278]
                    v = _3278 + 32
                    w = mem[64]
                    t = mem[_3278]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3278])] = mem[_3278 + floor32(mem[_3278]) + -(mem[_3278] % 32) + 64 len mem[_3278] % 32] or Mask(8 * -(mem[_3278] % 32) + 32, -(8 * -(mem[_3278] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3278])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3281 + _3277 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4256 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4305] = 30
                            mem[_4305 + 32] = 'SafeMath: subtraction overflow'
                            if _4256 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4256
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4305 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4116 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4306 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4339 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4339] = 30
                            mem[_4339 + 32] = 'SafeMath: subtraction overflow'
                            if _4306 <= _4116:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4116 - _4306
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4116
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4339 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4075] = return_data.size
                        mem[_4075 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4259 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4308 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4308] = 30
                            mem[_4308 + 32] = 'SafeMath: subtraction overflow'
                            if _4259 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4259
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4308 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4117 = mem[_4075 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4075 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4117
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4309 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4341] = 30
                            mem[_4341 + 32] = 'SafeMath: subtraction overflow'
                            if _4309 <= _4117:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4117 - _4309
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4117
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4341 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if cd[68] + (mem[(32 * u) + 128] * cd[68]) / cd[68] != mem[(32 * u) + 128] + 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3214] = 26
                    mem[_3214 + 32] = 'SafeMath: division by zero'
                    if not cd[132]:
                        _3230 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3230 + 68] = mem[idx + _3214 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3230 + 68] = mem[_3230 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3230 + -mem[64] + 100
                    if idx + 1 >= cd[132]:
                        idx = idx + 1
                        s = _3159 + s
                        continue 
                    require u < ('cd', 100).length
                    _3309 = mem[64]
                    mem[mem[64] + 36] = cd[((32 * u) + cd[100] + 36)]
                    mem[mem[64] + 68] = address(cd[4])
                    mem[mem[64] + 100] = address(cd[36])
                    mem[mem[64] + 132] = cd[68] + (_3189 * cd[68]) / cd[132]
                    mem[mem[64] + 164] = 0
                    _3310 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_3310 + 32] = 0x4214577200000000000000000000000000000000000000000000000000000000 or mem[_3310 + 36 len 28]
                    _3313 = mem[_3310]
                    v = _3310 + 32
                    w = mem[64]
                    t = mem[_3310]
                    while t >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[_3310])] = mem[_3310 + floor32(mem[_3310]) + -(mem[_3310] % 32) + 64 len mem[_3310] % 32] or Mask(8 * -(mem[_3310] % 32) + 32, -(8 * -(mem[_3310] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3310])])
                    staticcall narwhalAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3313 + _3309 + -mem[64] + 192]
                    if not return_data.size:
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4250 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4299] = 30
                            mem[_4299 + 32] = 'SafeMath: subtraction overflow'
                            if _4250 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4250
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4299 + 32]
                                s = s + 32
                                continue 
                        else:
                            require mem[96] >= 32
                            _4114 = mem[128]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[128] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = mem[128]
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4300 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4335] = 30
                            mem[_4335 + 32] = 'SafeMath: subtraction overflow'
                            if _4300 <= _4114:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4114 - _4300
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4114
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4335 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        _4072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4072] = return_data.size
                        mem[_4072 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if 0 <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4253 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4302 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4302] = 30
                            mem[_4302 + 32] = 'SafeMath: subtraction overflow'
                            if _4253 <= 0:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = -_4253
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = 0
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            s = 32
                            while s < 30:
                                mem[s + mem[64] + 68] = mem[s + _4302 + 32]
                                s = s + 32
                                continue 
                        else:
                            require return_data.size >= 32
                            _4115 = mem[_4072 + 32]
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            if mem[_4072 + 32] <= mem[(32 * u) + (64 * ('cd', 100).length) + 192]:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = 0
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4115
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            require u < mem[(64 * ('cd', 100).length) + 160]
                            _4303 = mem[(32 * u) + (64 * ('cd', 100).length) + 192]
                            _4337 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4337] = 30
                            mem[_4337 + 32] = 'SafeMath: subtraction overflow'
                            if _4303 <= _4115:
                                require u < mem[(32 * ('cd', 100).length) + 128]
                                mem[(32 * u) + (32 * ('cd', 100).length) + 160] = _4115 - _4303
                                require u < mem[(64 * ('cd', 100).length) + 160]
                                mem[(32 * u) + (64 * ('cd', 100).length) + 192] = _4115
                                idx = idx + 1
                                s = _3159 + s
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _4337 + 32]
                                idx = idx + 32
                                continue 
                revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64] + 32] = s
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 64, s, mem[mem[64] + 64 len (32 * mem[96]) + 32]
}



}
