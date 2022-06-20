contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_6fba20e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 31 len 1]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_68 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _66 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _66] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _66]
        return 32, mem[mem[64] + 32 len (32 * _66) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69 + 31 len 1]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_69 + 31 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _67 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _67] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _67]
    return 32, mem[mem[64] + 32 len (32 * _67) + 32]
}

function sub_a52bf2a0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _81 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_81))
            staticcall address(_81).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_86]
            require mem[_86] <= test266151307()
            require _86 + mem[_86] + 31 < _86 + return_data.size
            _99 = mem[_86 + mem[_86]]
            if mem[_86 + mem[_86]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_86 + mem[_86]])) + 1 < 0 or _86 + ceil32(return_data.size) + ceil32(ceil32(mem[_86 + mem[_86]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _86 + ceil32(return_data.size) + ceil32(ceil32(mem[_86 + mem[_86]])) + 1
            mem[_86 + ceil32(return_data.size)] = _99
            require _95 + _99 + 32 <= return_data.size
            s = 0
            while s < _99:
                mem[s + _86 + ceil32(return_data.size) + 32] = mem[s + _86 + _95 + 32]
                s = s + 32
                continue 
            if ceil32(_99) > _99:
                mem[_86 + ceil32(return_data.size) + _99 + 32] = 0
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _86 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = 32
        _84 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _84) + 64
        while idx < _84:
            mem[t] = u + -_80 - 64
            _115 = mem[s]
            _116 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _116:
                mem[v + u + 32] = mem[v + _115 + 32]
                v = v + 32
                continue 
            if ceil32(_116) > _116:
                mem[u + _116 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_116) + u + 32
            continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + 129] = 96
        s = ceil32(32 * ('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _114 = mem[96]
        idx = 0
        while idx < _114:
            if idx >= mem[96]:
                revert with 0, 50
            _121 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_121))
            staticcall address(_121).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _132 = mem[_127]
            require mem[_127] <= test266151307()
            require _127 + mem[_127] + 31 < _127 + return_data.size
            _134 = mem[_127 + mem[_127]]
            if mem[_127 + mem[_127]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_127 + mem[_127]])) + 1 < 0 or _127 + ceil32(return_data.size) + ceil32(ceil32(mem[_127 + mem[_127]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _127 + ceil32(return_data.size) + ceil32(ceil32(mem[_127 + mem[_127]])) + 1
            mem[_127 + ceil32(return_data.size)] = _134
            require _132 + _134 + 32 <= return_data.size
            s = 0
            while s < _134:
                mem[s + _127 + ceil32(return_data.size) + 32] = mem[s + _127 + _132 + 32]
                _114 = mem[96]
                s = s + 32
                continue 
            if ceil32(_134) > _134:
                mem[_127 + ceil32(return_data.size) + _134 + 32] = 0
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _127 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            _114 = mem[96]
            idx = idx + 1
            continue 
        _120 = mem[64]
        mem[mem[64]] = 32
        _124 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _124) + 64
        while idx < _124:
            mem[t] = u + -_120 - 64
            _140 = mem[s]
            _141 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _141:
                mem[v + u + 32] = mem[v + _140 + 32]
                v = v + 32
                continue 
            if ceil32(_141) > _141:
                mem[u + _141 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_141) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_e987875b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _60 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1
        mem[_60] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _60 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _60
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _52 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _53 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _52) + 32
    if not _52:
        idx = 0
        while idx < mem[96]:
            if idx < mem[96]:
                if 0 < mem[mem[(32 * idx) + 128]]:
                    _109 = mem[mem[(32 * idx) + 128] + 32]
                    if idx < mem[96]:
                        if var45003 > mem[mem[(32 * idx) + 128]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx < mem[96]:
                            _259 = mem[(32 * idx) + 128]
                            _260 = mem[mem[(32 * idx) + 128]]
                            s = var47001
                            while s < _260:
                                _263 = mem[(32 * s) + _259 + 32]
                                mem[mem[64] + 4] = address(_109)
                                require ext_code.size(address(_263))
                                staticcall address(_263).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_109)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _271 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx >= mem[_53]:
                                    revert with 0, 50
                                if s < 1:
                                    revert with 0, 17
                                if s - 1 >= 20:
                                    revert with 0, 50
                                mem[(32 * s - 1) + mem[(32 * idx) + _53 + 32]] = mem[_271]
                                if s == -1:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s + 1 > mem[mem[(32 * idx) + 128]]:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= mem[96]:
                                    revert with 0, 50
                                s = s + 1
                                continue 
            revert with 0, 50
        mem[_53 + (32 * _52) + 32] = 32
        _108 = mem[_53]
        mem[_53 + (32 * _52) + 64] = mem[_53]
        s = 0
        t = _53 + (32 * _52) + 96
        u = _53 + 32
        while s < _108:
            idx = 0
            s = t
            v = mem[u]
            while idx < 20:
                mem[s] = mem[v]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            idx = 21
            t = t + 640
            u = u + 32
            continue 
    else:
        mem[64] = _53 + (32 * _52) + 672
        mem[_53 + (32 * _52) + 32 len 640] = call.data[calldata.size len 640]
        mem[var23001] = _53 + (32 * _52) + 32
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 640
            mem[_53 + (32 * _52) + 32 len 640] = call.data[calldata.size len 640]
            mem[s + 32] = _53 + (32 * _52) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx < mem[96]:
                if 0 < mem[mem[(32 * idx) + 128]]:
                    _205 = mem[mem[(32 * idx) + 128] + 32]
                    if idx < mem[96]:
                        if var52003 > mem[mem[(32 * idx) + 128]]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx < mem[96]:
                            _305 = mem[(32 * idx) + 128]
                            _306 = mem[mem[(32 * idx) + 128]]
                            s = var54001
                            while s < _306:
                                _307 = mem[(32 * s) + _305 + 32]
                                mem[mem[64] + 4] = address(_205)
                                require ext_code.size(address(_307))
                                staticcall address(_307).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_205)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx >= mem[_53]:
                                    revert with 0, 50
                                if s < 1:
                                    revert with 0, 17
                                if s - 1 >= 20:
                                    revert with 0, 50
                                mem[(32 * s - 1) + mem[(32 * idx) + _53 + 32]] = mem[_310]
                                if s == -1:
                                    revert with 0, 17
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if s + 1 > mem[mem[(32 * idx) + 128]]:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= mem[96]:
                                    revert with 0, 50
                                s = s + 1
                                continue 
            revert with 0, 50
        mem[mem[64]] = 32
        _204 = mem[_53]
        mem[mem[64] + 32] = mem[_53]
        s = 0
        t = mem[64] + 64
        u = _53 + 32
        while s < _204:
            idx = 0
            s = t
            v = mem[u]
            while idx < 20:
                mem[s] = mem[v]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            idx = 21
            t = t + 640
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_bdfc2b01(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = address(_100)
            require ext_code.size(stor2)
            staticcall stor2.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor1, address(_100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105 + 12 len 20]
            if not mem[_105 + 12 len 20]:
                _121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_121] = 0
                mem[_121 + 32] = 0
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _121
            else:
                require ext_code.size(mem[_105 + 12 len 20])
                staticcall mem[_105 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _126 = mem[_125]
                require mem[_125] == mem[_125 + 18 len 14]
                _132 = mem[_125 + 32]
                require mem[_125 + 32] == mem[_125 + 50 len 14]
                require mem[_125 + 64] == mem[_125 + 92 len 4]
                _135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_135] = Mask(112, 0, _126)
                mem[_135 + 32] = Mask(112, 0, _132)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _135
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _102 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _102:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    else:
        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 64] = call.data[calldata.size len 64]
        mem[var25001] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _165 = mem[96]
        idx = 0
        while idx < _165:
            if idx >= mem[96]:
                revert with 0, 50
            _170 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = address(_170)
            require ext_code.size(stor2)
            staticcall stor2.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor1, address(_170)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_176] == mem[_176 + 12 len 20]
            if not mem[_176 + 12 len 20]:
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 0
                mem[_182 + 32] = 0
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _182
            else:
                require ext_code.size(mem[_176 + 12 len 20])
                staticcall mem[_176 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _185 = mem[_184]
                require mem[_184] == mem[_184 + 18 len 14]
                _186 = mem[_184 + 32]
                require mem[_184 + 32] == mem[_184 + 50 len 14]
                require mem[_184 + 64] == mem[_184 + 92 len 4]
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = Mask(112, 0, _185)
                mem[_188 + 32] = Mask(112, 0, _186)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _188
            if idx == -1:
                revert with 0, 17
            _165 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _173 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _173:
            u = 0
            v = t
            w = mem[w]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            w = mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[mem[w] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 64] + 96
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
