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
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
                _132 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_132] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_132 + 32] = 0
                mem[_132 + 64] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _132
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if ext_call.success:
                    _137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _142 = mem[_137]
                    require mem[_137] == mem[_137 + 18 len 14]
                    _144 = mem[_137 + 32]
                    require mem[_137 + 32] == mem[_137 + 50 len 14]
                    _162 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_162] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_162 + 32] = Mask(112, 0, _142)
                    mem[_162 + 64] = Mask(112, 0, _144)
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _162
                else:
                    if return_data.size <= 3:
                        if not return_data.size:
                            _151 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_151] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_151 + 32] = 0
                            mem[_151 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _151
                        else:
                            _147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_147] = return_data.size
                            mem[_147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _152 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_152] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_152 + 32] = 0
                            mem[_152 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _152
                    else:
                        mem[0 len 4] = ext_call.return_data[0 len 4]
                        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                            if not return_data.size:
                                _155 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_155] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_155 + 32] = 0
                                mem[_155 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _155
                            else:
                                _148 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_148] = return_data.size
                                mem[_148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _156 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_156] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_156 + 32] = 0
                                mem[_156 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _156
                        else:
                            if return_data.size < 68:
                                if not return_data.size:
                                    _170 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_170] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_170 + 32] = 0
                                    mem[_170 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _170
                                else:
                                    _161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_161] = return_data.size
                                    mem[_161 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _171 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_171] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_171 + 32] = 0
                                    mem[_171 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _171
                            else:
                                _149 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                    if not return_data.size:
                                        _173 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_173] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_173 + 32] = 0
                                        mem[_173 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _173
                                    else:
                                        _166 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_166] = return_data.size
                                        mem[_166 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _174 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_174] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_174 + 32] = 0
                                        mem[_174 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _174
                                else:
                                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                        if not return_data.size:
                                            _179 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_179] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_179 + 32] = 0
                                            mem[_179 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _179
                                        else:
                                            _169 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_169] = return_data.size
                                            mem[_169 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _180 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_180] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_180 + 32] = 0
                                            mem[_180 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _180
                                    else:
                                        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                            if not return_data.size:
                                                _185 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_185 + 32] = 0
                                                mem[_185 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _185
                                            else:
                                                _172 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_172] = return_data.size
                                                mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _186 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_186 + 32] = 0
                                                mem[_186 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _186
                                        else:
                                            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                                revert with 0, 65
                                            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                            if _149 + ext_call.return_data[0]:
                                                _184 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_184 + 32] = 0
                                                mem[_184 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _184
                                            else:
                                                if not return_data.size:
                                                    _199 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 4).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_199] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_199 + 32] = 0
                                                    mem[_199 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = _199
                                                else:
                                                    _190 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_190] = return_data.size
                                                    mem[_190 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _200 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    if idx >= ('cd', 4).length:
                                                        revert with 0, 50
                                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_200] = address(cd[((32 * idx) + cd[4] + 36)])
                                                    mem[_200 + 32] = 0
                                                    mem[_200 + 64] = 0
                                                    if idx >= mem[96]:
                                                        revert with 0, 50
                                                    mem[(32 * idx) + 128] = _200
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _118 = mem[64]
        mem[mem[64]] = 32
        _119 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _119:
            _232 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_232 + 50 len 14]
            mem[t + 64] = mem[_232 + 82 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _118 + (96 * _119) + -mem[64] + 64
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
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
            _244 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[_244] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[_244 + 32] = 0
            mem[_244 + 64] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _244
        else:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if ext_call.success:
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _250 = mem[_248]
                require mem[_248] == mem[_248 + 18 len 14]
                _251 = mem[_248 + 32]
                require mem[_248 + 32] == mem[_248 + 50 len 14]
                _262 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[_262] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[_262 + 32] = Mask(112, 0, _250)
                mem[_262 + 64] = Mask(112, 0, _251)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _262
            else:
                if return_data.size <= 3:
                    if not return_data.size:
                        _256 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_256] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_256 + 32] = 0
                        mem[_256 + 64] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _256
                    else:
                        _252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_252] = return_data.size
                        mem[_252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        _257 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_257] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_257 + 32] = 0
                        mem[_257 + 64] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _257
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            _259 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_259] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_259 + 32] = 0
                            mem[_259 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _259
                        else:
                            _253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_253] = return_data.size
                            mem[_253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            _260 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_260] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_260 + 32] = 0
                            mem[_260 + 64] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _260
                    else:
                        if return_data.size < 68:
                            if not return_data.size:
                                _265 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_265] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_265 + 32] = 0
                                mem[_265 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _265
                            else:
                                _261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_261] = return_data.size
                                mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _266 = mem[64]
                                mem[64] = mem[64] + 96
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_266] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_266 + 32] = 0
                                mem[_266 + 64] = 0
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = _266
                        else:
                            _254 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                if not return_data.size:
                                    _268 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_268] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_268 + 32] = 0
                                    mem[_268 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _268
                                else:
                                    _263 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_263] = return_data.size
                                    mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _269 = mem[64]
                                    mem[64] = mem[64] + 96
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_269] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_269 + 32] = 0
                                    mem[_269 + 64] = 0
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = _269
                            else:
                                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                    if not return_data.size:
                                        _272 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_272] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_272 + 32] = 0
                                        mem[_272 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _272
                                    else:
                                        _264 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_264] = return_data.size
                                        mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _273 = mem[64]
                                        mem[64] = mem[64] + 96
                                        if idx >= ('cd', 4).length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_273] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_273 + 32] = 0
                                        mem[_273 + 64] = 0
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _273
                                else:
                                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                        if not return_data.size:
                                            _277 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_277] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_277 + 32] = 0
                                            mem[_277 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _277
                                        else:
                                            _267 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_267] = return_data.size
                                            mem[_267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _278 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_278] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_278 + 32] = 0
                                            mem[_278 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _278
                                    else:
                                        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                        if _254 + ext_call.return_data[0]:
                                            _276 = mem[64]
                                            mem[64] = mem[64] + 96
                                            if idx >= ('cd', 4).length:
                                                revert with 0, 50
                                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_276] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_276 + 32] = 0
                                            mem[_276 + 64] = 0
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _276
                                        else:
                                            if not return_data.size:
                                                _281 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_281] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_281 + 32] = 0
                                                mem[_281 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _281
                                            else:
                                                _279 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_279] = return_data.size
                                                mem[_279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _282 = mem[64]
                                                mem[64] = mem[64] + 96
                                                if idx >= ('cd', 4).length:
                                                    revert with 0, 50
                                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_282] = address(cd[((32 * idx) + cd[4] + 36)])
                                                mem[_282 + 32] = 0
                                                mem[_282 + 64] = 0
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _282
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _237 = mem[64]
    mem[mem[64]] = 32
    _238 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _238:
        _294 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_294 + 50 len 14]
        mem[t + 64] = mem[_294 + 82 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _237 + (96 * _238) + -mem[64] + 64
}



}
