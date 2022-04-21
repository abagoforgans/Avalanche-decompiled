contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f03ab34c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return ''
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(arg2), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                _55 = mem[64]
                mem[64] = mem[64] + 32
                mem[_55 + 32] = 32
                mem[_55 + 64] = mem[_55]
                idx = 0
                s = _55 + 32
                t = _55 + 96
                while idx < mem[_55]:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _55 + (32 * mem[_55]) + -mem[64] + 96
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_52] == mem[_52]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_52]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _45 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _45] = mem[ceil32(return_data.size) + 128 len 32 * _45]
        return 32, mem[mem[64] + 32 len (32 * _45) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _56 = mem[64]
            mem[64] = mem[64] + 32
            mem[_56 + 32] = 32
            mem[_56 + 64] = mem[_56]
            idx = 0
            s = _56 + 32
            t = _56 + 96
            while idx < mem[_56]:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _56 + (32 * mem[_56]) + -mem[64] + 96
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_54] == mem[_54]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_54]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _46 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _46] = mem[ceil32(return_data.size) + 128 len 32 * _46]
    return 32, mem[mem[64] + 32 len (32 * _46) + 32]
}

function sub_1da1d27e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_64]
        require mem[_64] == mem[_64]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = 0
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(cd[36]), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_77]
        require mem[_77] == mem[_77]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _79
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xc87b56dd with:
                gas gas_remaining wei
               args _79
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        _91 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_91]
        require mem[_91] <= test266151307()
        require _91 + mem[_91] + 31 < _91 + return_data.size
        _94 = mem[_91 + mem[_91]]
        if mem[_91 + mem[_91]] > test266151307():
            revert with 'NH{q', 65
        if _91 + ceil32(return_data.size) + ceil32(ceil32(mem[_91 + mem[_91]])) + 1 > test266151307() or ceil32(ceil32(mem[_91 + mem[_91]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _91 + ceil32(return_data.size) + ceil32(ceil32(mem[_91 + mem[_91]])) + 1
        mem[_91 + ceil32(return_data.size)] = _94
        require _92 + _94 + 32 <= return_data.size
        t = 0
        while t < _94:
            mem[_91 + ceil32(return_data.size) + t + 32] = mem[_91 + _92 + t + 32]
            t = t + 32
            continue 
        if ceil32(_94) > _94:
            mem[_91 + ceil32(return_data.size) + _94 + 32] = 0
        if s > -_66 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + _66
        idx = idx + 1
        continue 
    if not s:
        _27 = mem[64]
        mem[64] = mem[64] + 32
        mem[_27 + 32] = 32
        _31 = mem[_27]
        mem[_27 + 64] = mem[_27]
        idx = 0
        s = _27 + 32
        t = _27 + (32 * mem[_27]) + 96
        u = _27 + 96
        while idx < _31:
            mem[u] = t + -_27 - 96
            _110 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_110 + 32]
            _120 = mem[_110 + 64]
            mem[t + 64] = 96
            _124 = mem[_120]
            mem[t + 96] = mem[_120]
            v = 0
            while v < _124:
                mem[t + v + 128] = mem[_120 + v + 32]
                v = v + 32
                continue 
            if ceil32(_124) > _124:
                mem[t + _124 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_124) + 128
            u = u + 32
            continue 
    else:
        if s > test266151307():
            revert with 'NH{q', 65
        _26 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _136 = mem[_132]
                require mem[_132] == mem[_132]
                if mem[_132] > 0:
                    s = 0
                    t = 0
                    while s < _136:
                        mem[mem[64] + 4] = address(cd[36])
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(cd[36]), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _188 = mem[_186]
                        require mem[_186] == mem[_186]
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _188
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xc87b56dd with:
                                gas gas_remaining wei
                               args _188
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _201 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _202 = mem[_201]
                        require mem[_201] <= test266151307()
                        require _201 + mem[_201] + 31 < _201 + return_data.size
                        _204 = mem[_201 + mem[_201]]
                        if mem[_201 + mem[_201]] > test266151307():
                            revert with 'NH{q', 65
                        if _201 + ceil32(return_data.size) + ceil32(ceil32(mem[_201 + mem[_201]])) + 1 > test266151307() or ceil32(ceil32(mem[_201 + mem[_201]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _201 + ceil32(return_data.size) + ceil32(ceil32(mem[_201 + mem[_201]])) + 1
                        mem[_201 + ceil32(return_data.size)] = _204
                        require _202 + _204 + 32 <= return_data.size
                        u = 0
                        while u < _204:
                            mem[_201 + ceil32(return_data.size) + u + 32] = mem[_201 + _202 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_204) <= _204:
                            _230 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_230] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_230 + 32] = _188
                            mem[_230 + 64] = _201 + ceil32(return_data.size)
                            if t >= mem[_26]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _26 + 32] = _230
                        else:
                            mem[_201 + ceil32(return_data.size) + _204 + 32] = 0
                            _232 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_232] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_232 + 32] = _188
                            mem[_232 + 64] = _201 + ceil32(return_data.size)
                            if t >= mem[_26]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _26 + 32] = _232
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _112 = mem[64]
            mem[mem[64]] = 32
            _115 = mem[_26]
            mem[mem[64] + 32] = mem[_26]
            idx = 0
            s = _26 + 32
            t = mem[64] + (32 * _115) + 64
            u = mem[64] + 64
            while idx < _115:
                mem[u] = t + -_112 - 64
                _175 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_175 + 32]
                _183 = mem[_175 + 64]
                mem[t + 64] = 96
                _185 = mem[_183]
                mem[t + 96] = mem[_183]
                v = 0
                while v < _185:
                    mem[t + v + 128] = mem[_183 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_185) > _185:
                    mem[t + _185 + 128] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_185) + 128
                u = u + 32
                continue 
        else:
            mem[64] = _26 + (32 * s) + 128
            mem[_26 + (32 * s) + 32] = 0
            mem[_26 + (32 * s) + 64] = 0
            mem[_26 + (32 * s) + 96] = 96
            mem[var30001] = _26 + (32 * s) + 32
            t = var30001
            idx = var30002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[_26 + (32 * s) + 32] = 0
                mem[_26 + (32 * s) + 64] = 0
                mem[_26 + (32 * s) + 96] = 96
                mem[t + 32] = _26 + (32 * s) + 32
                t = t + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[36])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _243 = mem[_240]
                require mem[_240] == mem[_240]
                if mem[_240] > 0:
                    s = 0
                    t = 0
                    while s < _243:
                        mem[mem[64] + 4] = address(cd[36])
                        mem[mem[64] + 36] = s
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(cd[36]), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _269 = mem[_268]
                        require mem[_268] == mem[_268]
                        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _269
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xc87b56dd with:
                                gas gas_remaining wei
                               args _269
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        _273 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _274 = mem[_273]
                        require mem[_273] <= test266151307()
                        require _273 + mem[_273] + 31 < _273 + return_data.size
                        _275 = mem[_273 + mem[_273]]
                        if mem[_273 + mem[_273]] > test266151307():
                            revert with 'NH{q', 65
                        if _273 + ceil32(return_data.size) + ceil32(ceil32(mem[_273 + mem[_273]])) + 1 > test266151307() or ceil32(ceil32(mem[_273 + mem[_273]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _273 + ceil32(return_data.size) + ceil32(ceil32(mem[_273 + mem[_273]])) + 1
                        mem[_273 + ceil32(return_data.size)] = _275
                        require _274 + _275 + 32 <= return_data.size
                        u = 0
                        while u < _275:
                            mem[_273 + ceil32(return_data.size) + u + 32] = mem[_273 + _274 + u + 32]
                            u = u + 32
                            continue 
                        if ceil32(_275) <= _275:
                            _284 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_284] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_284 + 32] = _269
                            mem[_284 + 64] = _273 + ceil32(return_data.size)
                            if t >= mem[_26]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _26 + 32] = _284
                        else:
                            mem[_273 + ceil32(return_data.size) + _275 + 32] = 0
                            _286 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_286] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[_286 + 32] = _269
                            mem[_286 + 64] = _273 + ceil32(return_data.size)
                            if t >= mem[_26]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _26 + 32] = _286
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + 1
                        continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _228 = mem[64]
            mem[mem[64]] = 32
            _229 = mem[_26]
            mem[mem[64] + 32] = mem[_26]
            idx = 0
            s = _26 + 32
            t = mem[64] + (32 * _229) + 64
            u = mem[64] + 64
            while idx < _229:
                mem[u] = t + -_228 - 64
                _260 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_260 + 32]
                _265 = mem[_260 + 64]
                mem[t + 64] = 96
                _267 = mem[_265]
                mem[t + 96] = mem[_265]
                v = 0
                while v < _267:
                    mem[t + v + 128] = mem[_265 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_267) > _267:
                    mem[t + _267 + 128] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_267) + 128
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_5c8b64ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0
        mem[ceil32(return_data.size) + 128] = 0
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 160] = 64
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256 len 0] = None
        mem[ceil32(return_data.size) + 192] = 96
        mem[ceil32(return_data.size) + 256] = 0
        idx = 0
        s = ceil32(return_data.size) + 160
        t = ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + (32 * mem[ceil32(return_data.size) + 128]) + 288
        u = ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 288
        while idx < 0:
            mem[u] = t + -ceil32(return_data.size) - 288
            _370 = mem[s]
            _380 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _380:
                mem[t + v + 32] = mem[_370 + v + 32]
                v = v + 32
                continue 
            if ceil32(_380) > _380:
                mem[t + _380 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_380) + 32
            u = u + 32
            continue 
    else:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        _215 = mem[64]
                        _221 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_221 + 32] = 64
                        _237 = mem[_215]
                        mem[_221 + 96] = mem[_215]
                        idx = 0
                        s = _215 + 32
                        t = _221 + 128
                        while idx < _237:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_221 + 64] = (32 * _237) + 96
                        _375 = mem[_221]
                        mem[_221 + (32 * _237) + 128] = mem[_221]
                        idx = 0
                        s = _221 + 32
                        t = _221 + (32 * _237) + (32 * mem[_221]) + 160
                        u = _221 + (32 * _237) + 160
                        while idx < _375:
                            mem[u] = t + -_221 + -(32 * _237) - 160
                            _491 = mem[s]
                            _512 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _512:
                                mem[t + v + 32] = mem[_491 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_512) > _512:
                                mem[t + _512 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_512) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _207 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _217 = mem[_207]
                    require mem[_207] == mem[_207]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_207]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _217
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xc87b56dd with:
                            gas gas_remaining wei
                           args _217
                    if not ext_call.success:
                        _276 = mem[64]
                        _284 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_284 + 32] = 64
                        _306 = mem[_276]
                        mem[_284 + 96] = mem[_276]
                        idx = 0
                        s = _276 + 32
                        t = _284 + 128
                        while idx < _306:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_284 + 64] = (32 * _306) + 96
                        _376 = mem[_284]
                        mem[_284 + (32 * _306) + 128] = mem[_284]
                        idx = 0
                        s = _284 + 32
                        t = _284 + (32 * _306) + (32 * mem[_284]) + 160
                        u = _284 + (32 * _306) + 160
                        while idx < _376:
                            mem[u] = t + -_284 + -(32 * _306) - 160
                            _492 = mem[s]
                            _513 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _513:
                                mem[t + v + 32] = mem[_492 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_513) > _513:
                                mem[t + _513 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_513) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _272 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _277 = mem[_272]
                    require mem[_272] <= test266151307()
                    require _272 + mem[_272] + 31 < _272 + return_data.size
                    _286 = mem[_272 + mem[_272]]
                    if mem[_272 + mem[_272]] > test266151307():
                        revert with 'NH{q', 65
                    if _272 + ceil32(return_data.size) + ceil32(ceil32(mem[_272 + mem[_272]])) + 1 > test266151307() or ceil32(ceil32(mem[_272 + mem[_272]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _272 + ceil32(return_data.size) + ceil32(ceil32(mem[_272 + mem[_272]])) + 1
                    mem[_272 + ceil32(return_data.size)] = _286
                    require _277 + _286 + 32 <= return_data.size
                    s = 0
                    while s < _286:
                        mem[_272 + ceil32(return_data.size) + s + 32] = mem[_272 + _277 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_286) > _286:
                        mem[_272 + ceil32(return_data.size) + _286 + 32] = 0
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = _272 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _189 = mem[64]
                mem[mem[64]] = 64
                _194 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96 len 32 * _194] = mem[ceil32(return_data.size) + 128 len 32 * _194]
                mem[mem[64] + 32] = (32 * _194) + 96
                _374 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_189 + (32 * _194) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _189 + (32 * _194) + (32 * _374) + 128
                u = _189 + (32 * _194) + 128
                while idx < _374:
                    mem[u] = t + -_189 + -(32 * _194) - 128
                    _490 = mem[s]
                    _511 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _511:
                        mem[t + v + 32] = mem[_490 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_511) > _511:
                        mem[t + _511 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_511) + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                idx = ext_call.return_data[0]
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        _414 = mem[64]
                        _418 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_418 + 32] = 64
                        _431 = mem[_414]
                        mem[_418 + 96] = mem[_414]
                        idx = 0
                        s = _414 + 32
                        t = _418 + 128
                        while idx < _431:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_418 + 64] = (32 * _431) + 96
                        _515 = mem[_418]
                        mem[_418 + (32 * _431) + 128] = mem[_418]
                        idx = 0
                        s = _418 + 32
                        t = _418 + (32 * _431) + (32 * mem[_418]) + 160
                        u = _418 + (32 * _431) + 160
                        while idx < _515:
                            mem[u] = t + -_418 + -(32 * _431) - 160
                            _561 = mem[s]
                            _576 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _576:
                                mem[t + v + 32] = mem[_561 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_576) > _576:
                                mem[t + _576 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_576) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _416 = mem[_410]
                    require mem[_410] == mem[_410]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_410]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _416
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xc87b56dd with:
                            gas gas_remaining wei
                           args _416
                    if not ext_call.success:
                        _450 = mem[64]
                        _454 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_454 + 32] = 64
                        _466 = mem[_450]
                        mem[_454 + 96] = mem[_450]
                        idx = 0
                        s = _450 + 32
                        t = _454 + 128
                        while idx < _466:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_454 + 64] = (32 * _466) + 96
                        _516 = mem[_454]
                        mem[_454 + (32 * _466) + 128] = mem[_454]
                        idx = 0
                        s = _454 + 32
                        t = _454 + (32 * _466) + (32 * mem[_454]) + 160
                        u = _454 + (32 * _466) + 160
                        while idx < _516:
                            mem[u] = t + -_454 + -(32 * _466) - 160
                            _562 = mem[s]
                            _577 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _577:
                                mem[t + v + 32] = mem[_562 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_577) > _577:
                                mem[t + _577 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_577) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _448 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _451 = mem[_448]
                    require mem[_448] <= test266151307()
                    require _448 + mem[_448] + 31 < _448 + return_data.size
                    _456 = mem[_448 + mem[_448]]
                    if mem[_448 + mem[_448]] > test266151307():
                        revert with 'NH{q', 65
                    if _448 + ceil32(return_data.size) + ceil32(ceil32(mem[_448 + mem[_448]])) + 1 > test266151307() or ceil32(ceil32(mem[_448 + mem[_448]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _448 + ceil32(return_data.size) + ceil32(ceil32(mem[_448 + mem[_448]])) + 1
                    mem[_448 + ceil32(return_data.size)] = _456
                    require _451 + _456 + 32 <= return_data.size
                    s = 0
                    while s < _456:
                        mem[_448 + ceil32(return_data.size) + s + 32] = mem[_448 + _451 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_456) > _456:
                        mem[_448 + ceil32(return_data.size) + _456 + 32] = 0
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = _448 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _371 = mem[64]
                mem[mem[64]] = 64
                _381 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96 len 32 * _381] = mem[ceil32(return_data.size) + 128 len 32 * _381]
                mem[mem[64] + 32] = (32 * _381) + 96
                _514 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_371 + (32 * _381) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _371 + (32 * _381) + (32 * _514) + 128
                u = _371 + (32 * _381) + 128
                while idx < _514:
                    mem[u] = t + -_371 + -(32 * _381) - 128
                    _560 = mem[s]
                    _575 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _575:
                        mem[t + v + 32] = mem[_560 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_575) > _575:
                        mem[t + _575 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_575) + 32
                    u = u + 32
                    continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            if ext_call.return_data[0] > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        _216 = mem[64]
                        _223 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_223 + 32] = 64
                        _240 = mem[_216]
                        mem[_223 + 96] = mem[_216]
                        idx = 0
                        s = _216 + 32
                        t = _223 + 128
                        while idx < _240:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_223 + 64] = (32 * _240) + 96
                        _378 = mem[_223]
                        mem[_223 + (32 * _240) + 128] = mem[_223]
                        idx = 0
                        s = _223 + 32
                        t = _223 + (32 * _240) + (32 * mem[_223]) + 160
                        u = _223 + (32 * _240) + 160
                        while idx < _378:
                            mem[u] = t + -_223 + -(32 * _240) - 160
                            _498 = mem[s]
                            _518 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _518:
                                mem[t + v + 32] = mem[_498 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_518) > _518:
                                mem[t + _518 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_518) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _219 = mem[_208]
                    require mem[_208] == mem[_208]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_208]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _219
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xc87b56dd with:
                            gas gas_remaining wei
                           args _219
                    if not ext_call.success:
                        _279 = mem[64]
                        _285 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_285 + 32] = 64
                        _308 = mem[_279]
                        mem[_285 + 96] = mem[_279]
                        idx = 0
                        s = _279 + 32
                        t = _285 + 128
                        while idx < _308:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_285 + 64] = (32 * _308) + 96
                        _379 = mem[_285]
                        mem[_285 + (32 * _308) + 128] = mem[_285]
                        idx = 0
                        s = _285 + 32
                        t = _285 + (32 * _308) + (32 * mem[_285]) + 160
                        u = _285 + (32 * _308) + 160
                        while idx < _379:
                            mem[u] = t + -_285 + -(32 * _308) - 160
                            _499 = mem[s]
                            _519 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _519:
                                mem[t + v + 32] = mem[_499 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_519) > _519:
                                mem[t + _519 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_519) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _273 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _280 = mem[_273]
                    require mem[_273] <= test266151307()
                    require _273 + mem[_273] + 31 < _273 + return_data.size
                    _289 = mem[_273 + mem[_273]]
                    if mem[_273 + mem[_273]] > test266151307():
                        revert with 'NH{q', 65
                    if _273 + ceil32(return_data.size) + ceil32(ceil32(mem[_273 + mem[_273]])) + 1 > test266151307() or ceil32(ceil32(mem[_273 + mem[_273]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _273 + ceil32(return_data.size) + ceil32(ceil32(mem[_273 + mem[_273]])) + 1
                    mem[_273 + ceil32(return_data.size)] = _289
                    require _280 + _289 + 32 <= return_data.size
                    s = 0
                    while s < _289:
                        mem[_273 + ceil32(return_data.size) + s + 32] = mem[_273 + _280 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_289) > _289:
                        mem[_273 + ceil32(return_data.size) + _289 + 32] = 0
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = _273 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _190 = mem[64]
                mem[mem[64]] = 64
                _196 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96 len 32 * _196] = mem[ceil32(return_data.size) + 128 len 32 * _196]
                mem[mem[64] + 32] = (32 * _196) + 96
                _377 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_190 + (32 * _196) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _190 + (32 * _196) + (32 * _377) + 128
                u = _190 + (32 * _196) + 128
                while idx < _377:
                    mem[u] = t + -_190 + -(32 * _196) - 128
                    _497 = mem[s]
                    _517 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _517:
                        mem[t + v + 32] = mem[_497 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_517) > _517:
                        mem[t + _517 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_517) + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                idx = ext_call.return_data[0]
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        _415 = mem[64]
                        _419 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_419 + 32] = 64
                        _433 = mem[_415]
                        mem[_419 + 96] = mem[_415]
                        idx = 0
                        s = _415 + 32
                        t = _419 + 128
                        while idx < _433:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_419 + 64] = (32 * _433) + 96
                        _521 = mem[_419]
                        mem[_419 + (32 * _433) + 128] = mem[_419]
                        idx = 0
                        s = _419 + 32
                        t = _419 + (32 * _433) + (32 * mem[_419]) + 160
                        u = _419 + (32 * _433) + 160
                        while idx < _521:
                            mem[u] = t + -_419 + -(32 * _433) - 160
                            _567 = mem[s]
                            _579 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _579:
                                mem[t + v + 32] = mem[_567 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_579) > _579:
                                mem[t + _579 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_579) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _417 = mem[_411]
                    require mem[_411] == mem[_411]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_411]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _417
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xc87b56dd with:
                            gas gas_remaining wei
                           args _417
                    if not ext_call.success:
                        _452 = mem[64]
                        _455 = mem[64] + 32
                        mem[mem[64] + 32] = 0
                        mem[64] = mem[64] + 64
                        mem[_455 + 32] = 64
                        _467 = mem[_452]
                        mem[_455 + 96] = mem[_452]
                        idx = 0
                        s = _452 + 32
                        t = _455 + 128
                        while idx < _467:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_455 + 64] = (32 * _467) + 96
                        _522 = mem[_455]
                        mem[_455 + (32 * _467) + 128] = mem[_455]
                        idx = 0
                        s = _455 + 32
                        t = _455 + (32 * _467) + (32 * mem[_455]) + 160
                        u = _455 + (32 * _467) + 160
                        while idx < _522:
                            mem[u] = t + -_455 + -(32 * _467) - 160
                            _568 = mem[s]
                            _580 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _580:
                                mem[t + v + 32] = mem[_568 + v + 32]
                                v = v + 32
                                continue 
                            if ceil32(_580) > _580:
                                mem[t + _580 + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + ceil32(_580) + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len t - mem[64]
                    _449 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _453 = mem[_449]
                    require mem[_449] <= test266151307()
                    require _449 + mem[_449] + 31 < _449 + return_data.size
                    _457 = mem[_449 + mem[_449]]
                    if mem[_449 + mem[_449]] > test266151307():
                        revert with 'NH{q', 65
                    if _449 + ceil32(return_data.size) + ceil32(ceil32(mem[_449 + mem[_449]])) + 1 > test266151307() or ceil32(ceil32(mem[_449 + mem[_449]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _449 + ceil32(return_data.size) + ceil32(ceil32(mem[_449 + mem[_449]])) + 1
                    mem[_449 + ceil32(return_data.size)] = _457
                    require _453 + _457 + 32 <= return_data.size
                    s = 0
                    while s < _457:
                        mem[_449 + ceil32(return_data.size) + s + 32] = mem[_449 + _453 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_457) > _457:
                        mem[_449 + ceil32(return_data.size) + _457 + 32] = 0
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = _449 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _372 = mem[64]
                mem[mem[64]] = 64
                _382 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96 len 32 * _382] = mem[ceil32(return_data.size) + 128 len 32 * _382]
                mem[mem[64] + 32] = (32 * _382) + 96
                _520 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_372 + (32 * _382) + 96] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _372 + (32 * _382) + (32 * _520) + 128
                u = _372 + (32 * _382) + 128
                while idx < _520:
                    mem[u] = t + -_372 + -(32 * _382) - 128
                    _566 = mem[s]
                    _578 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _578:
                        mem[t + v + 32] = mem[_566 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_578) > _578:
                        mem[t + _578 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_578) + 32
                    u = u + 32
                    continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
