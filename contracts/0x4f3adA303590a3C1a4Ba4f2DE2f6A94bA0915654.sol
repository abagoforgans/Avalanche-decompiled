contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balancesWithToken(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg2.length
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 129
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _79 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args address(_79)
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_89] == mem[_89]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + floor32(arg2.length) + 129] = mem[_89]
            else:
                if return_data.size <= 3:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size < 68:
                    revert with ext_call.return_data[0 len return_data.size]
                _98 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _98 + ext_call.return_data[0]:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _84 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 64 len 32 * _84] = mem[floor32(arg2.length) + 129 len 32 * _84]
        return 32, mem[mem[64] + 32 len (32 * _84) + 32]
    mem[floor32(arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _82 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(_82)
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + floor32(arg2.length) + 129] = mem[_91]
        else:
            if return_data.size <= 3:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size < 68:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _99 + ext_call.return_data[0]:
                revert with ext_call.return_data[0 len return_data.size]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _85 = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 64 len 32 * _85] = mem[floor32(arg2.length) + 129 len 32 * _85]
    return 32, mem[mem[64] + 32 len (32 * _85) + 32]
}

function balancesWithAccount(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length > -2:
        revert with 'NH{q', 17
    if arg2.length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg2.length + 1
    mem[64] = floor32(arg2.length) + (32 * arg2.length + 1) + 129
    if not arg2.length + 1:
        if 0 >= arg2.length + 1:
            revert with 'NH{q', 50
        mem[floor32(arg2.length) + 129] = eth.balance(arg1)
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _102 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_102))
                call address(_102).0x70a08231 with:
                     gas gas_remaining wei
                    args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_114] == mem[_114]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(arg2.length) + 129] = mem[_114]
                else:
                    if return_data.size <= 3:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size < 68:
                        revert with ext_call.return_data[0 len return_data.size]
                    _120 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                    if not _120 + ext_call.return_data[0]:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _98 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 64 len 32 * _98] = mem[floor32(arg2.length) + 129 len 32 * _98]
        return 32, mem[mem[64] + 32 len (32 * _98) + 32]
    mem[floor32(arg2.length) + 129 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
    if 0 >= arg2.length + 1:
        revert with 'NH{q', 50
    mem[floor32(arg2.length) + 129] = eth.balance(arg1)
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if ext_code.size(mem[(32 * idx) + 128]) <= 0:
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
        else:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _104 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_104))
            call address(_104).0x70a08231 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == mem[_115]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + floor32(arg2.length) + 129] = mem[_115]
            else:
                if return_data.size <= 3:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size < 68:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                if not _121 + ext_call.return_data[0]:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx + 1) + floor32(arg2.length) + 129] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _100 = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 64 len 32 * _100] = mem[floor32(arg2.length) + 129 len 32 * _100]
    return 32, mem[mem[64] + 32 len (32 * _100) + 32]
}



}
