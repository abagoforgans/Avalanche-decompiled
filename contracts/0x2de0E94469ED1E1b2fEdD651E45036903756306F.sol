contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function etherBalances(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = 1
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            _44 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_27 + 32] = _44
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _27
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _30:
            mem[u] = t + -_29 - 64
            _53 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _58 = mem[_53 + 32]
            mem[t + 32] = 64
            _59 = mem[_58]
            mem[t + 64] = mem[_58]
            v = 0
            while v < _59:
                mem[t + v + 96] = mem[_58 + v + 32]
                v = v + 32
                continue 
            if ceil32(_59) > _59:
                mem[t + _59 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_59) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 96
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            _72 = mem[64]
            mem[64] = mem[64] + 64
            mem[_72] = 1
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = eth.balance(cd[((32 * idx) + arg1 + 36)])
            _81 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_72 + 32] = _81
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _72
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _74:
            mem[u] = t + -_73 - 64
            _84 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _87 = mem[_84 + 32]
            mem[t + 32] = 64
            _88 = mem[_87]
            mem[t + 64] = mem[_87]
            v = 0
            while v < _88:
                mem[t + v + 96] = mem[_87 + v + 32]
                v = v + 32
                continue 
            if ceil32(_88) > _88:
                mem[t + _88 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_88) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tokenBalances(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _95 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
            _102 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_102 + 32] = mem[_102 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[64] = _95 + 132
            mem[_95 + 68] = 0
            mem[_95 + 100] = 96
            if ext_code.size(arg2) <= 0:
                mem[_95 + 132] = 0
                mem[64] = _95 + 228
                mem[_95 + 196] = 0
                mem[_95 + 164] = _95 + 196
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _95 + 132
            else:
                _115 = mem[_102]
                s = 0
                while s < _115:
                    mem[_95 + s + 132] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_115) > _115:
                    mem[_95 + _115 + 132] = 0
                staticcall arg2.mem[_95 + 132 len 4] with:
                        gas 20000 wei
                       args mem[_95 + 136 len _115 - 4]
                if not return_data.size:
                    if ext_call.success:
                        mem[64] = _95 + 196
                        mem[_95 + 132] = bool(ext_call.success)
                        mem[_95 + 164] = 96
                    else:
                        mem[_95 + 132] = 0
                        mem[64] = _95 + 228
                        mem[_95 + 196] = 0
                        mem[_95 + 164] = _95 + 196
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _95 + 132
                else:
                    mem[_95 + 132] = return_data.size
                    mem[_95 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[64] = _95 + ceil32(return_data.size) + 197
                        mem[_95 + ceil32(return_data.size) + 133] = bool(ext_call.success)
                        mem[_95 + ceil32(return_data.size) + 165] = _95 + 132
                    else:
                        mem[_95 + ceil32(return_data.size) + 133] = 0
                        mem[64] = _95 + ceil32(return_data.size) + 229
                        mem[_95 + ceil32(return_data.size) + 197] = 0
                        mem[_95 + ceil32(return_data.size) + 165] = _95 + ceil32(return_data.size) + 197
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _95 + ceil32(return_data.size) + 133
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _89:
            mem[u] = t + -_88 - 64
            _173 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _181 = mem[_173 + 32]
            mem[t + 32] = 64
            _185 = mem[_181]
            mem[t + 64] = mem[_181]
            v = 0
            while v < _185:
                mem[t + v + 96] = mem[_181 + v + 32]
                v = v + 32
                continue 
            if ceil32(_185) > _185:
                mem[t + _185 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_185) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 96
        mem[var26001] = (32 * arg1.length) + 128
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _252 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg1 + 36)])
            _255 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_255 + 32] = mem[_255 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[64] = _252 + 132
            mem[_252 + 68] = 0
            mem[_252 + 100] = 96
            if ext_code.size(arg2) <= 0:
                mem[_252 + 132] = 0
                mem[64] = _252 + 228
                mem[_252 + 196] = 0
                mem[_252 + 164] = _252 + 196
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _252 + 132
            else:
                _263 = mem[_255]
                s = 0
                while s < _263:
                    mem[_252 + s + 132] = mem[_255 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_263) > _263:
                    mem[_252 + _263 + 132] = 0
                staticcall arg2.mem[_252 + 132 len 4] with:
                        gas 20000 wei
                       args mem[_252 + 136 len _263 - 4]
                if not return_data.size:
                    if ext_call.success:
                        mem[64] = _252 + 196
                        mem[_252 + 132] = bool(ext_call.success)
                        mem[_252 + 164] = 96
                    else:
                        mem[_252 + 132] = 0
                        mem[64] = _252 + 228
                        mem[_252 + 196] = 0
                        mem[_252 + 164] = _252 + 196
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _252 + 132
                else:
                    mem[_252 + 132] = return_data.size
                    mem[_252 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[64] = _252 + ceil32(return_data.size) + 197
                        mem[_252 + ceil32(return_data.size) + 133] = bool(ext_call.success)
                        mem[_252 + ceil32(return_data.size) + 165] = _252 + 132
                    else:
                        mem[_252 + ceil32(return_data.size) + 133] = 0
                        mem[64] = _252 + ceil32(return_data.size) + 229
                        mem[_252 + ceil32(return_data.size) + 197] = 0
                        mem[_252 + ceil32(return_data.size) + 165] = _252 + ceil32(return_data.size) + 197
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _252 + ceil32(return_data.size) + 133
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _247 = mem[64]
        mem[mem[64]] = 32
        _248 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _248:
            mem[u] = t + -_247 - 64
            _289 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _296 = mem[_289 + 32]
            mem[t + 32] = 64
            _300 = mem[_296]
            mem[t + 64] = mem[_296]
            v = 0
            while v < _300:
                mem[t + v + 96] = mem[_296 + v + 32]
                v = v + 32
                continue 
            if ceil32(_300) > _300:
                mem[t + _300 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_300) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tokensBalance(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    if not arg2.length:
        mem[(32 * arg2.length) + 164] = arg1
        mem[(32 * arg2.length) + 128] = 36
        mem[64] = (32 * arg2.length) + 196
        mem[(32 * arg2.length) + 164 len 28] = address(arg1) << 64
        mem[(32 * arg2.length) + 160 len 4] = unknown_0x70a08231(?????)
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 0
            mem[_97 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg2 + 36)]) <= 0:
                _101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_101] = 0
                _102 = mem[64]
                mem[64] = mem[64] + 32
                mem[_102] = 0
                mem[_101 + 32] = _102
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _101
            else:
                _103 = mem[64]
                _105 = mem[(32 * arg2.length) + 128]
                s = 0
                while s < _105:
                    mem[_103 + s] = mem[(32 * arg2.length) + s + 160]
                    s = s + 32
                    continue 
                if ceil32(_105) <= _105:
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                            gas 20000 wei
                           args mem[mem[64] + 4 len _103 + _105 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _180 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_180] = bool(ext_call.success)
                            mem[_180 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _180
                        else:
                            _183 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_183] = 0
                            _184 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_184] = 0
                            mem[_183 + 32] = _184
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _183
                    else:
                        _176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_176] = return_data.size
                        mem[_176 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _181 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_181] = bool(ext_call.success)
                            mem[_181 + 32] = _176
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _181
                        else:
                            _185 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_185] = 0
                            _186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_186] = 0
                            mem[_185 + 32] = _186
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _185
                else:
                    mem[_103 + _105] = 0
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                            gas 20000 wei
                           args mem[mem[64] + 4 len _103 + _105 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_187] = bool(ext_call.success)
                            mem[_187 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _187
                        else:
                            _191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_191] = 0
                            _192 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_192] = 0
                            mem[_191 + 32] = _192
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _191
                    else:
                        _179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_179] = return_data.size
                        mem[_179 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _188 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_188] = bool(ext_call.success)
                            mem[_188 + 32] = _179
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _188
                        else:
                            _193 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_193] = 0
                            _194 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_194] = 0
                            mem[_193 + 32] = _194
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _193
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _88 = mem[64]
        mem[mem[64]] = 32
        _90 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _90:
            mem[u] = t + -_88 - 64
            _170 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _178 = mem[_170 + 32]
            mem[t + 32] = 64
            _182 = mem[_178]
            mem[t + 64] = mem[_178]
            v = 0
            while v < _182:
                mem[t + v + 96] = mem[_178 + v + 32]
                v = v + 32
                continue 
            if ceil32(_182) > _182:
                mem[t + _182 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_182) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2.length) + 192
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 96
        mem[var26001] = (32 * arg2.length) + 128
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2.length) + 128] = 0
            mem[(32 * arg2.length) + 160] = 96
            mem[s + 32] = (32 * arg2.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[mem[64] + 36] = arg1
        _199 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_199 + 32 len 4] = unknown_0x70a08231(?????)
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            _249 = mem[64]
            mem[64] = mem[64] + 64
            mem[_249] = 0
            mem[_249 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg2 + 36)]) <= 0:
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 0
                _253 = mem[64]
                mem[64] = mem[64] + 32
                mem[_253] = 0
                mem[_252 + 32] = _253
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _252
            else:
                _254 = mem[64]
                _256 = mem[_199]
                s = 0
                while s < _256:
                    mem[_254 + s] = mem[_199 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_256) <= _256:
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                            gas 20000 wei
                           args mem[mem[64] + 4 len _254 + _256 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _292 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_292] = bool(ext_call.success)
                            mem[_292 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _292
                        else:
                            _295 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_295] = 0
                            _296 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_296] = 0
                            mem[_295 + 32] = _296
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _295
                    else:
                        _288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_288] = return_data.size
                        mem[_288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_293] = bool(ext_call.success)
                            mem[_293 + 32] = _288
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _293
                        else:
                            _297 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_297] = 0
                            _298 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_298] = 0
                            mem[_297 + 32] = _298
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _297
                else:
                    mem[_254 + _256] = 0
                    staticcall address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
                            gas 20000 wei
                           args mem[mem[64] + 4 len _254 + _256 + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_299] = bool(ext_call.success)
                            mem[_299 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _299
                        else:
                            _303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_303] = 0
                            _304 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_304] = 0
                            mem[_303 + 32] = _304
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _303
                    else:
                        _291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_291] = return_data.size
                        mem[_291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _300 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_300] = bool(ext_call.success)
                            mem[_300 + 32] = _291
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _300
                        else:
                            _305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_305] = 0
                            _306 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_306] = 0
                            mem[_305 + 32] = _306
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _305
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _244 = mem[64]
        mem[mem[64]] = 32
        _245 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _245:
            mem[u] = t + -_244 - 64
            _283 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _290 = mem[_283 + 32]
            mem[t + 32] = 64
            _294 = mem[_290]
            mem[t + 64] = mem[_290]
            v = 0
            while v < _294:
                mem[t + v + 96] = mem[_290 + v + 32]
                v = v + 32
                continue 
            if ceil32(_294) > _294:
                mem[t + _294 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_294) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function call(address[] arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length != arg2.length:
        revert with 0, 'Length must be equal'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_95] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_95 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_95 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 0
            mem[_99 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg1 + 36)]) <= 0:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 0
                _103 = mem[64]
                mem[64] = mem[64] + 32
                mem[_103] = 0
                mem[_102 + 32] = _103
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _102
            else:
                _104 = mem[64]
                s = 0
                while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    mem[_104 + s] = mem[_95 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _104 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_177] = bool(ext_call.success)
                            mem[_177 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _177
                        else:
                            _180 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_180] = 0
                            _181 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_181] = 0
                            mem[_180 + 32] = _181
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _180
                    else:
                        _172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_172] = return_data.size
                        mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _178 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_178] = bool(ext_call.success)
                            mem[_178 + 32] = _172
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _178
                        else:
                            _182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_182] = 0
                            _183 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_183] = 0
                            mem[_182 + 32] = _183
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _182
                else:
                    mem[_104 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _104 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _184 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_184] = bool(ext_call.success)
                            mem[_184 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _184
                        else:
                            _188 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_188] = 0
                            _189 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_189] = 0
                            mem[_188 + 32] = _189
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _188
                    else:
                        _175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_175] = return_data.size
                        mem[_175 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _185 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_185] = bool(ext_call.success)
                            mem[_185 + 32] = _175
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _185
                        else:
                            _190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_190] = 0
                            _191 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_191] = 0
                            mem[_190 + 32] = _191
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _190
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _86 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _87:
            mem[u] = t + -_86 - 64
            _167 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _174 = mem[_167 + 32]
            mem[t + 32] = 64
            _179 = mem[_174]
            mem[t + 64] = mem[_174]
            v = 0
            while v < _179:
                mem[t + v + 96] = mem[_174 + v + 32]
                v = v + 32
                continue 
            if ceil32(_179) > _179:
                mem[t + _179 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_179) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 96
        mem[var25001] = (32 * arg1.length) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_245] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_245 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_245 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            _247 = mem[64]
            mem[64] = mem[64] + 64
            mem[_247] = 0
            mem[_247 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg1 + 36)]) <= 0:
                _248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_248] = 0
                _249 = mem[64]
                mem[64] = mem[64] + 32
                mem[_249] = 0
                mem[_248 + 32] = _249
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _248
            else:
                _250 = mem[64]
                s = 0
                while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    mem[_250 + s] = mem[_245 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _250 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _288 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_288] = bool(ext_call.success)
                            mem[_288 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _288
                        else:
                            _291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_291] = 0
                            _292 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_292] = 0
                            mem[_291 + 32] = _292
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _291
                    else:
                        _284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_284] = return_data.size
                        mem[_284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_289] = bool(ext_call.success)
                            mem[_289 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _289
                        else:
                            _293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_293] = 0
                            _294 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_294] = 0
                            mem[_293 + 32] = _294
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _293
                else:
                    mem[_250 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _250 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _295 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_295] = bool(ext_call.success)
                            mem[_295 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _295
                        else:
                            _299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_299] = 0
                            _300 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_300] = 0
                            mem[_299 + 32] = _300
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _299
                    else:
                        _287 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_287] = return_data.size
                        mem[_287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_296] = bool(ext_call.success)
                            mem[_296 + 32] = _287
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _296
                        else:
                            _301 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_301] = 0
                            _302 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_302] = 0
                            mem[_301 + 32] = _302
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _301
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 32
        _240 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _240:
            mem[u] = t + -_239 - 64
            _279 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _286 = mem[_279 + 32]
            mem[t + 32] = 64
            _290 = mem[_286]
            mem[t + 64] = mem[_286]
            v = 0
            while v < _290:
                mem[t + v + 96] = mem[_286 + v + 32]
                v = v + 32
                continue 
            if ceil32(_290) > _290:
                mem[t + _290 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_290) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function call(address[] arg1, bytes[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if arg1.length != arg2.length:
        revert with 0, 'Length must be equal'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_98] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_98 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_98 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 0
            mem[_99 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg1 + 36)]) <= 0:
                _104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_104] = 0
                _105 = mem[64]
                mem[64] = mem[64] + 32
                mem[_105] = 0
                mem[_104 + 32] = _105
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _104
            else:
                _106 = mem[64]
                s = 0
                while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    mem[_106 + s] = mem[_98 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas arg3 wei
                           args mem[mem[64] + 4 len _106 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_177] = bool(ext_call.success)
                            mem[_177 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _177
                        else:
                            _180 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_180] = 0
                            _181 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_181] = 0
                            mem[_180 + 32] = _181
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _180
                    else:
                        _172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_172] = return_data.size
                        mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _178 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_178] = bool(ext_call.success)
                            mem[_178 + 32] = _172
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _178
                        else:
                            _182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_182] = 0
                            _183 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_183] = 0
                            mem[_182 + 32] = _183
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _182
                else:
                    mem[_106 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas arg3 wei
                           args mem[mem[64] + 4 len _106 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _184 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_184] = bool(ext_call.success)
                            mem[_184 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _184
                        else:
                            _189 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_189] = 0
                            _190 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_190] = 0
                            mem[_189 + 32] = _190
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _189
                    else:
                        _176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_176] = return_data.size
                        mem[_176 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _185 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_185] = bool(ext_call.success)
                            mem[_185 + 32] = _176
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _185
                        else:
                            _191 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_191] = 0
                            _192 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_192] = 0
                            mem[_191 + 32] = _192
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _191
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _86 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _87:
            mem[u] = t + -_86 - 64
            _167 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _175 = mem[_167 + 32]
            mem[t + 32] = 64
            _179 = mem[_175]
            mem[t + 64] = mem[_175]
            v = 0
            while v < _179:
                mem[t + v + 96] = mem[_175 + v + 32]
                v = v + 32
                continue 
            if ceil32(_179) > _179:
                mem[t + _179 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_179) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 96
        mem[var31001] = (32 * arg1.length) + 128
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 'NH{q', 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_246] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_246 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_246 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            _247 = mem[64]
            mem[64] = mem[64] + 64
            mem[_247] = 0
            mem[_247 + 32] = 96
            if ext_code.size(cd[((32 * idx) + arg1 + 36)]) <= 0:
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 0
                _250 = mem[64]
                mem[64] = mem[64] + 32
                mem[_250] = 0
                mem[_249 + 32] = _250
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _249
            else:
                _251 = mem[64]
                s = 0
                while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    mem[_251 + s] = mem[_246 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas arg3 wei
                           args mem[mem[64] + 4 len _251 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _288 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_288] = bool(ext_call.success)
                            mem[_288 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _288
                        else:
                            _291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_291] = 0
                            _292 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_292] = 0
                            mem[_291 + 32] = _292
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _291
                    else:
                        _284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_284] = return_data.size
                        mem[_284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_289] = bool(ext_call.success)
                            mem[_289 + 32] = _284
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _289
                        else:
                            _293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_293] = 0
                            _294 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_294] = 0
                            mem[_293 + 32] = _294
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _293
                else:
                    mem[_251 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                            gas arg3 wei
                           args mem[mem[64] + 4 len _251 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                    if not return_data.size:
                        if ext_call.success:
                            _295 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_295] = bool(ext_call.success)
                            mem[_295 + 32] = 96
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _295
                        else:
                            _299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_299] = 0
                            _300 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_300] = 0
                            mem[_299 + 32] = _300
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _299
                    else:
                        _287 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_287] = return_data.size
                        mem[_287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            _296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_296] = bool(ext_call.success)
                            mem[_296 + 32] = _287
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _296
                        else:
                            _301 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_301] = 0
                            _302 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_302] = 0
                            mem[_301 + 32] = _302
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _301
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 32
        _240 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _240:
            mem[u] = t + -_239 - 64
            _279 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _286 = mem[_279 + 32]
            mem[t + 32] = 64
            _290 = mem[_286]
            mem[t + 64] = mem[_286]
            v = 0
            while v < _290:
                mem[t + v + 96] = mem[_286 + v + 32]
                v = v + 32
                continue 
            if ceil32(_290) > _290:
                mem[t + _290 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_290) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
