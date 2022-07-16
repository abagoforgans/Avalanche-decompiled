contract main {




// =====================  Runtime code  =====================


#
#  - sub_6fd5d48e(?)
#
function _fallback() payable {
    revert
}

function sub_9a961bf9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if ext_code.size(cd[((32 * idx) + cd[4] + 36)]) <= 0:
                _127 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_127] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_127 + 32] = 0
                mem[_127 + 64] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _127
            else:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if ext_call.success:
                    _139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _142 = mem[_139]
                    require mem[_139] == mem[_139 + 18 len 14]
                    _152 = mem[_139 + 32]
                    require mem[_139 + 32] == mem[_139 + 50 len 14]
                    require mem[_139 + 64] == mem[_139 + 92 len 4]
                    _200 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_200] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_200 + 32] = Mask(112, 0, _142)
                    mem[_200 + 64] = Mask(112, 0, _152)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _200
                else:
                    if return_data.size <= 3:
                        if not return_data.size:
                            _149 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_149] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_149 + 32] = 0
                            mem[_149 + 64] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _149
                        else:
                            _146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_146] = return_data.size
                            mem[_146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _150 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_150] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_150 + 32] = 0
                            mem[_150 + 64] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _150
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if not return_data.size:
                                _156 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_156] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_156 + 32] = 0
                                mem[_156 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _156
                            else:
                                _151 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_151] = return_data.size
                                mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _157 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_157] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_157 + 32] = 0
                                mem[_157 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _157
                        else:
                            if return_data.size < 68:
                                if not return_data.size:
                                    _168 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_168] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_168 + 32] = 0
                                    mem[_168 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _168
                                else:
                                    _159 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_159] = return_data.size
                                    mem[_159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _169 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_169] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_169 + 32] = 0
                                    mem[_169 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _169
                            else:
                                _153 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                    if not return_data.size:
                                        _176 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_176] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_176 + 32] = 0
                                        mem[_176 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _176
                                    else:
                                        _167 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_167] = return_data.size
                                        mem[_167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _177 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_177] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_177 + 32] = 0
                                        mem[_177 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _177
                                else:
                                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                        if not return_data.size:
                                            _178 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_178] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_178 + 32] = 0
                                            mem[_178 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = _178
                                        else:
                                            _173 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_173] = return_data.size
                                            mem[_173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _179 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_179] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_179 + 32] = 0
                                            mem[_179 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = _179
                                    else:
                                        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                            if not return_data.size:
                                                _183 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_183 + 32] = 0
                                                mem[_183 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = _183
                                            else:
                                                _174 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_174] = return_data.size
                                                mem[_174 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _184 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + 32] = 0
                                                mem[_184 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = _184
                                        else:
                                            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                                revert with 'NH{q', 65
                                            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                            if _153 + ext_call.return_data[0]:
                                                _189 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_189 + 32] = 0
                                                mem[_189 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = _189
                                            else:
                                                if not return_data.size:
                                                    _198 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 4).length:
                                                        revert with 'NH{q', 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_198] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_198 + 32] = 0
                                                    mem[_198 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = _198
                                                else:
                                                    _190 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_190] = return_data.size
                                                    mem[_190 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _199 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 4).length:
                                                        revert with 'NH{q', 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_199] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_199 + 32] = 0
                                                    mem[_199 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx) + 128] = _199
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _120 = mem[64]
        mem[mem[64]] = 32
        _121 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _121:
            _237 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_237 + 50 len 14]
            mem[t + 64] = mem[_237 + 82 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _120 + (96 * _121) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 224
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
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
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if ext_code.size(cd[((32 * idx) + cd[4] + 36)]) <= 0:
            _305 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_305] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[_305 + 32] = 0
            mem[_305 + 64] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _305
        else:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if ext_call.success:
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _313 = mem[_311]
                require mem[_311] == mem[_311 + 18 len 14]
                _318 = mem[_311 + 32]
                require mem[_311 + 32] == mem[_311 + 50 len 14]
                require mem[_311 + 64] == mem[_311 + 92 len 4]
                _345 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_345] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_345 + 32] = Mask(112, 0, _313)
                mem[_345 + 64] = Mask(112, 0, _318)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _345
            else:
                if return_data.size <= 3:
                    if not return_data.size:
                        _315 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_315] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_315 + 32] = 0
                        mem[_315 + 64] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _315
                    else:
                        _314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_314] = return_data.size
                        mem[_314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _316 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_316] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_316 + 32] = 0
                        mem[_316 + 64] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _316
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            _321 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_321] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_321 + 32] = 0
                            mem[_321 + 64] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _321
                        else:
                            _317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_317] = return_data.size
                            mem[_317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _322 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_322] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_322 + 32] = 0
                            mem[_322 + 64] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _322
                    else:
                        if return_data.size < 68:
                            if not return_data.size:
                                _327 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_327] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_327 + 32] = 0
                                mem[_327 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _327
                            else:
                                _324 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_324] = return_data.size
                                mem[_324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _328 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_328] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_328 + 32] = 0
                                mem[_328 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + 128] = _328
                        else:
                            _319 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                if not return_data.size:
                                    _331 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_331] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_331 + 32] = 0
                                    mem[_331 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _331
                                else:
                                    _326 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_326] = return_data.size
                                    mem[_326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _332 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_332] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_332 + 32] = 0
                                    mem[_332 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + 128] = _332
                            else:
                                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                    if not return_data.size:
                                        _333 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_333] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_333 + 32] = 0
                                        mem[_333 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _333
                                    else:
                                        _329 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_329] = return_data.size
                                        mem[_329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _334 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_334] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_334 + 32] = 0
                                        mem[_334 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + 128] = _334
                                else:
                                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                        if not return_data.size:
                                            _337 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_337] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_337 + 32] = 0
                                            mem[_337 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = _337
                                        else:
                                            _330 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_330] = return_data.size
                                            mem[_330 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _338 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_338] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_338 + 32] = 0
                                            mem[_338 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = _338
                                    else:
                                        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                            revert with 'NH{q', 65
                                        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                        if _319 + ext_call.return_data[0]:
                                            _339 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 'NH{q', 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_339] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_339 + 32] = 0
                                            mem[_339 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + 128] = _339
                                        else:
                                            if not return_data.size:
                                                _343 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_343] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_343 + 32] = 0
                                                mem[_343 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = _343
                                            else:
                                                _340 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_340] = return_data.size
                                                mem[_340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _344 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 'NH{q', 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_344] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_344 + 32] = 0
                                                mem[_344 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx) + 128] = _344
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _300 = mem[64]
    mem[mem[64]] = 32
    _301 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _301:
        _358 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_358 + 50 len 14]
        mem[t + 64] = mem[_358 + 82 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _300 + (96 * _301) + -mem[64] + 64
}



}
