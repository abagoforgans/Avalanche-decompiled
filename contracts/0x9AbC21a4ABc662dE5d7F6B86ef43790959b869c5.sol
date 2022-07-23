contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6861ea15(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            staticcall address(_59).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = mem[_67]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _66 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _66] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _66]
        return 32, mem[mem[64] + 32 len (32 * _66) + 32]
    mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _63 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        staticcall address(_63).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = mem[_69]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _68 = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _68] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _68]
    return 32, mem[mem[64] + 32 len (32 * _68) + 32]
}

function sub_393d6025(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _81 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _81
            staticcall address(cd[4]).0xc87b56dd with:
                    gas gas_remaining wei
                   args _81
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_86]
            require mem[_86] <= test266151307()
            require _86 + mem[_86] + 31 < _86 + return_data.size
            _98 = mem[_86 + mem[_86]]
            if mem[_86 + mem[_86]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_86 + mem[_86]])) + 1 < 0 or _86 + ceil32(return_data.size) + ceil32(ceil32(mem[_86 + mem[_86]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _86 + ceil32(return_data.size) + ceil32(ceil32(mem[_86 + mem[_86]])) + 1
            mem[_86 + ceil32(return_data.size)] = _98
            require _94 + _98 + 32 <= return_data.size
            s = 0
            while s < _98:
                mem[s + _86 + ceil32(return_data.size) + 32] = mem[s + _86 + _94 + 32]
                s = s + 32
                continue 
            if ceil32(_98) > _98:
                mem[_86 + ceil32(return_data.size) + _98 + 32] = 0
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _86 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _83) + 64
        while idx < _83:
            mem[t] = u + -_80 - 64
            _115 = mem[s]
            _119 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _119:
                mem[v + u + 32] = mem[v + _115 + 32]
                v = v + 32
                continue 
            if ceil32(_119) > _119:
                mem[u + _119 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_119) + u + 32
            continue 
    else:
        mem[ceil32(32 * ('cd', 36).length) + 129] = 96
        s = ceil32(32 * ('cd', 36).length) + 129
        idx = ('cd', 36).length
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
            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _121
            staticcall address(cd[4]).0xc87b56dd with:
                    gas gas_remaining wei
                   args _121
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _132 = mem[_126]
            require mem[_126] <= test266151307()
            require _126 + mem[_126] + 31 < _126 + return_data.size
            _133 = mem[_126 + mem[_126]]
            if mem[_126 + mem[_126]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_126 + mem[_126]])) + 1 < 0 or _126 + ceil32(return_data.size) + ceil32(ceil32(mem[_126 + mem[_126]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _126 + ceil32(return_data.size) + ceil32(ceil32(mem[_126 + mem[_126]])) + 1
            mem[_126 + ceil32(return_data.size)] = _133
            require _132 + _133 + 32 <= return_data.size
            s = 0
            while s < _133:
                mem[s + _126 + ceil32(return_data.size) + 32] = mem[s + _126 + _132 + 32]
                _114 = mem[96]
                s = s + 32
                continue 
            if ceil32(_133) > _133:
                mem[_126 + ceil32(return_data.size) + _133 + 32] = 0
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _126 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            _114 = mem[96]
            idx = idx + 1
            continue 
        _120 = mem[64]
        mem[mem[64]] = 32
        _123 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _123) + 64
        while idx < _123:
            mem[t] = u + -_120 - 64
            _140 = mem[s]
            _143 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _143:
                mem[v + u + 32] = mem[v + _140 + 32]
                v = v + 32
                continue 
            if ceil32(_143) > _143:
                mem[u + _143 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_143) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_393b379a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _397 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            staticcall address(_397).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _406 = mem[_401]
            if mem[_401] > cd[68]:
                if mem[_401] < cd[68]:
                    revert with 0, 17
                if cd[100] < mem[_401] - cd[68]:
                    if cd[100] > test266151307():
                        revert with 0, 65
                    _428 = mem[64]
                    mem[mem[64]] = cd[100]
                    mem[64] = mem[64] + (32 * cd[100]) + 32
                    if not cd[100]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _428
                        s = 0
                        while s < cd[100]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_397).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _618 = mem[_611]
                            _623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_623] = _618
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _618
                            staticcall address(_397).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _618
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _636 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _641 = mem[_636]
                            require mem[_636] <= test266151307()
                            require _636 + mem[_636] + 31 < _636 + return_data.size
                            _649 = mem[_636 + mem[_636]]
                            if mem[_636 + mem[_636]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_636 + mem[_636]])) + 1 < 0 or _636 + ceil32(return_data.size) + ceil32(ceil32(mem[_636 + mem[_636]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _636 + ceil32(return_data.size) + ceil32(ceil32(mem[_636 + mem[_636]])) + 1
                            mem[_636 + ceil32(return_data.size)] = _649
                            require _641 + _649 + 32 <= return_data.size
                            t = 0
                            while t < _649:
                                mem[t + _636 + ceil32(return_data.size) + 32] = mem[t + _636 + _641 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_649) > _649:
                                mem[_636 + ceil32(return_data.size) + _649 + 32] = 0
                            mem[_623 + 32] = _636 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _623
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                    else:
                        mem[64] = _428 + (32 * cd[100]) + 96
                        mem[_428 + (32 * cd[100]) + 32] = 0
                        mem[_428 + (32 * cd[100]) + 64] = 96
                        mem[_428 + 32] = _428 + (32 * cd[100]) + 32
                        t = _428 + 32
                        s = cd[100]
                        while s - 1:
                            mem[64] = mem[64] + 64
                            mem[_428 + (32 * cd[100]) + 32] = 0
                            mem[_428 + (32 * cd[100]) + 64] = 96
                            mem[t + 32] = _428 + (32 * cd[100]) + 32
                            t = t + 32
                            s = s - 1
                            continue 
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _428
                        s = 0
                        while s < cd[100]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_397).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _811 = mem[_800]
                            _816 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_816] = _811
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _811
                            staticcall address(_397).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _811
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _834 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _840 = mem[_834]
                            require mem[_834] <= test266151307()
                            require _834 + mem[_834] + 31 < _834 + return_data.size
                            _850 = mem[_834 + mem[_834]]
                            if mem[_834 + mem[_834]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_834 + mem[_834]])) + 1 < 0 or _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1
                            mem[_834 + ceil32(return_data.size)] = _850
                            require _840 + _850 + 32 <= return_data.size
                            t = 0
                            while t < _850:
                                mem[t + _834 + ceil32(return_data.size) + 32] = mem[t + _834 + _840 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_850) > _850:
                                mem[_834 + ceil32(return_data.size) + _850 + 32] = 0
                            mem[_816 + 32] = _834 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _816
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                else:
                    if mem[_401] - cd[68] > test266151307():
                        revert with 0, 65
                    _429 = mem[64]
                    mem[mem[64]] = mem[_401] - cd[68]
                    mem[64] = mem[64] + (32 * _406 - cd[68]) + 32
                    if not _406 - cd[68]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _429
                        s = 0
                        while s < _406 - cd[68]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_397).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _619 = mem[_612]
                            _627 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_627] = _619
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _619
                            staticcall address(_397).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _619
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _637 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _644 = mem[_637]
                            require mem[_637] <= test266151307()
                            require _637 + mem[_637] + 31 < _637 + return_data.size
                            _651 = mem[_637 + mem[_637]]
                            if mem[_637 + mem[_637]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_637 + mem[_637]])) + 1 < 0 or _637 + ceil32(return_data.size) + ceil32(ceil32(mem[_637 + mem[_637]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _637 + ceil32(return_data.size) + ceil32(ceil32(mem[_637 + mem[_637]])) + 1
                            mem[_637 + ceil32(return_data.size)] = _651
                            require _644 + _651 + 32 <= return_data.size
                            t = 0
                            while t < _651:
                                mem[t + _637 + ceil32(return_data.size) + 32] = mem[t + _637 + _644 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_651) > _651:
                                mem[_637 + ceil32(return_data.size) + _651 + 32] = 0
                            mem[_627 + 32] = _637 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _627
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                    else:
                        mem[64] = _429 + (32 * _406 - cd[68]) + 96
                        mem[_429 + (32 * _406 - cd[68]) + 32] = 0
                        mem[_429 + (32 * _406 - cd[68]) + 64] = 96
                        mem[_429 + 32] = _429 + (32 * _406 - cd[68]) + 32
                        t = _429 + 32
                        s = _406 - cd[68]
                        while s - 1:
                            mem[64] = mem[64] + 64
                            mem[_429 + (32 * _406 - cd[68]) + 32] = 0
                            mem[_429 + (32 * _406 - cd[68]) + 64] = 96
                            mem[t + 32] = _429 + (32 * _406 - cd[68]) + 32
                            t = t + 32
                            s = s - 1
                            continue 
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _429
                        s = 0
                        while s < _406 - cd[68]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_397).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _804 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _812 = mem[_804]
                            _818 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_818] = _812
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _812
                            staticcall address(_397).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _812
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _835 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _841 = mem[_835]
                            require mem[_835] <= test266151307()
                            require _835 + mem[_835] + 31 < _835 + return_data.size
                            _851 = mem[_835 + mem[_835]]
                            if mem[_835 + mem[_835]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_835 + mem[_835]])) + 1 < 0 or _835 + ceil32(return_data.size) + ceil32(ceil32(mem[_835 + mem[_835]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _835 + ceil32(return_data.size) + ceil32(ceil32(mem[_835 + mem[_835]])) + 1
                            mem[_835 + ceil32(return_data.size)] = _851
                            require _841 + _851 + 32 <= return_data.size
                            t = 0
                            while t < _851:
                                mem[t + _835 + ceil32(return_data.size) + 32] = mem[t + _835 + _841 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_851) > _851:
                                mem[_835 + ceil32(return_data.size) + _851 + 32] = 0
                            mem[_818 + 32] = _835 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _818
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _396 = mem[64]
        mem[mem[64]] = 32
        _400 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + (32 * _400) + 64
        u = mem[64] + 64
        while idx < _400:
            mem[u] = t + -_396 - 64
            _591 = mem[s]
            _592 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = t + (32 * _592) + 32
            x = t + 32
            y = _591 + 32
            while v < _592:
                mem[x] = w + -t - 32
                _771 = mem[y]
                mem[w] = mem[mem[y]]
                _773 = mem[_771 + 32]
                mem[w + 32] = 64
                _778 = mem[_773]
                mem[w + 64] = mem[_773]
                idx = 0
                while idx < _778:
                    mem[idx + w + 96] = mem[idx + _773 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_778) > _778:
                    mem[w + _778 + 96] = 0
                v = v + 1
                w = ceil32(_778) + w + 96
                x = x + 32
                y = y + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = w
            u = u + 32
            continue 
    else:
        mem[ceil32(32 * ('cd', 36).length) + 129] = 96
        s = ceil32(32 * ('cd', 36).length) + 129
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _590 = mem[96]
        idx = 0
        while idx < _590:
            if idx >= mem[96]:
                revert with 0, 50
            _598 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            staticcall address(_598).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _615 = mem[_605]
            if mem[_605] > cd[68]:
                if mem[_605] < cd[68]:
                    revert with 0, 17
                if cd[100] < mem[_605] - cd[68]:
                    if cd[100] > test266151307():
                        revert with 0, 65
                    _653 = mem[64]
                    mem[mem[64]] = cd[100]
                    mem[64] = mem[64] + (32 * cd[100]) + 32
                    if not cd[100]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _653
                        s = 0
                        while s < cd[100]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_598).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _814 = mem[_805]
                            _820 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_820] = _814
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _814
                            staticcall address(_598).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _814
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _836 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _842 = mem[_836]
                            require mem[_836] <= test266151307()
                            require _836 + mem[_836] + 31 < _836 + return_data.size
                            _852 = mem[_836 + mem[_836]]
                            if mem[_836 + mem[_836]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_836 + mem[_836]])) + 1 < 0 or _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1
                            mem[_836 + ceil32(return_data.size)] = _852
                            require _842 + _852 + 32 <= return_data.size
                            t = 0
                            while t < _852:
                                mem[t + _836 + ceil32(return_data.size) + 32] = mem[t + _836 + _842 + 32]
                                _590 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(_852) > _852:
                                mem[_836 + ceil32(return_data.size) + _852 + 32] = 0
                            mem[_820 + 32] = _836 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _820
                            if s == -1:
                                revert with 0, 17
                            _590 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        mem[64] = _653 + (32 * cd[100]) + 96
                        mem[_653 + (32 * cd[100]) + 32] = 0
                        mem[_653 + (32 * cd[100]) + 64] = 96
                        mem[_653 + 32] = _653 + (32 * cd[100]) + 32
                        t = _653 + 32
                        s = cd[100]
                        while s - 1:
                            _590 = mem[96]
                            mem[64] = mem[64] + 64
                            mem[_653 + (32 * cd[100]) + 32] = 0
                            mem[_653 + (32 * cd[100]) + 64] = 96
                            mem[t + 32] = _653 + (32 * cd[100]) + 32
                            t = t + 32
                            s = s - 1
                            continue 
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _653
                        s = 0
                        while s < cd[100]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_598).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _935 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _948 = mem[_935]
                            _950 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_950] = _948
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _948
                            staticcall address(_598).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _948
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _956 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _958 = mem[_956]
                            require mem[_956] <= test266151307()
                            require _956 + mem[_956] + 31 < _956 + return_data.size
                            _960 = mem[_956 + mem[_956]]
                            if mem[_956 + mem[_956]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_956 + mem[_956]])) + 1 < 0 or _956 + ceil32(return_data.size) + ceil32(ceil32(mem[_956 + mem[_956]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _956 + ceil32(return_data.size) + ceil32(ceil32(mem[_956 + mem[_956]])) + 1
                            mem[_956 + ceil32(return_data.size)] = _960
                            require _958 + _960 + 32 <= return_data.size
                            t = 0
                            while t < _960:
                                mem[t + _956 + ceil32(return_data.size) + 32] = mem[t + _956 + _958 + 32]
                                _590 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(_960) > _960:
                                mem[_956 + ceil32(return_data.size) + _960 + 32] = 0
                            mem[_950 + 32] = _956 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _950
                            if s == -1:
                                revert with 0, 17
                            _590 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if mem[_605] - cd[68] > test266151307():
                        revert with 0, 65
                    _654 = mem[64]
                    mem[mem[64]] = mem[_605] - cd[68]
                    mem[64] = mem[64] + (32 * _615 - cd[68]) + 32
                    if not _615 - cd[68]:
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _654
                        s = 0
                        while s < _615 - cd[68]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_598).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _815 = mem[_806]
                            _824 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_824] = _815
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _815
                            staticcall address(_598).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _815
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _837 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _845 = mem[_837]
                            require mem[_837] <= test266151307()
                            require _837 + mem[_837] + 31 < _837 + return_data.size
                            _854 = mem[_837 + mem[_837]]
                            if mem[_837 + mem[_837]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_837 + mem[_837]])) + 1 < 0 or _837 + ceil32(return_data.size) + ceil32(ceil32(mem[_837 + mem[_837]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _837 + ceil32(return_data.size) + ceil32(ceil32(mem[_837 + mem[_837]])) + 1
                            mem[_837 + ceil32(return_data.size)] = _854
                            require _845 + _854 + 32 <= return_data.size
                            t = 0
                            while t < _854:
                                mem[t + _837 + ceil32(return_data.size) + 32] = mem[t + _837 + _845 + 32]
                                _590 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(_854) > _854:
                                mem[_837 + ceil32(return_data.size) + _854 + 32] = 0
                            mem[_824 + 32] = _837 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _824
                            if s == -1:
                                revert with 0, 17
                            _590 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        mem[64] = _654 + (32 * _615 - cd[68]) + 96
                        mem[_654 + (32 * _615 - cd[68]) + 32] = 0
                        mem[_654 + (32 * _615 - cd[68]) + 64] = 96
                        mem[_654 + 32] = _654 + (32 * _615 - cd[68]) + 32
                        t = _654 + 32
                        s = _615 - cd[68]
                        while s - 1:
                            _590 = mem[96]
                            mem[64] = mem[64] + 64
                            mem[_654 + (32 * _615 - cd[68]) + 32] = 0
                            mem[_654 + (32 * _615 - cd[68]) + 64] = 96
                            mem[t + 32] = _654 + (32 * _615 - cd[68]) + 32
                            t = t + 32
                            s = s - 1
                            continue 
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _654
                        s = 0
                        while s < _615 - cd[68]:
                            if cd[68] > !s:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = cd[68] + s
                            staticcall address(_598).0x2f745c59 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[68] + s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _949 = mem[_939]
                            _952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_952] = _949
                            mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _949
                            staticcall address(_598).0xc87b56dd with:
                                    gas gas_remaining wei
                                   args _949
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _957 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _959 = mem[_957]
                            require mem[_957] <= test266151307()
                            require _957 + mem[_957] + 31 < _957 + return_data.size
                            _961 = mem[_957 + mem[_957]]
                            if mem[_957 + mem[_957]] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[_957 + mem[_957]])) + 1 < 0 or _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + mem[_957]])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + mem[_957]])) + 1
                            mem[_957 + ceil32(return_data.size)] = _961
                            require _959 + _961 + 32 <= return_data.size
                            t = 0
                            while t < _961:
                                mem[t + _957 + ceil32(return_data.size) + 32] = mem[t + _957 + _959 + 32]
                                _590 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(_961) > _961:
                                mem[_957 + ceil32(return_data.size) + _961 + 32] = 0
                            mem[_952 + 32] = _957 + ceil32(return_data.size)
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]]:
                                revert with 0, 50
                            mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] + 32] = _952
                            if s == -1:
                                revert with 0, 17
                            _590 = mem[96]
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            _590 = mem[96]
            idx = idx + 1
            continue 
        _597 = mem[64]
        mem[mem[64]] = 32
        _604 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + (32 * _604) + 64
        u = mem[64] + 64
        while idx < _604:
            mem[u] = t + -_597 - 64
            _776 = mem[s]
            _777 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = t + (32 * _777) + 32
            x = t + 32
            y = _776 + 32
            while v < _777:
                mem[x] = w + -t - 32
                _911 = mem[y]
                mem[w] = mem[mem[y]]
                _913 = mem[_911 + 32]
                mem[w + 32] = 64
                _916 = mem[_913]
                mem[w + 64] = mem[_913]
                idx = 0
                while idx < _916:
                    mem[idx + w + 96] = mem[idx + _913 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_916) > _916:
                    mem[w + _916 + 96] = 0
                v = v + 1
                w = ceil32(_916) + w + 96
                x = x + 32
                y = y + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = w
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
