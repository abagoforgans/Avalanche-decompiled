contract main {




// =====================  Runtime code  =====================


#
#  - getProxyImplementation(address arg1)
#  - getProxyAdmin(address arg1)
#
const sub_1cdcf85a(?) = 0xca11bde05977b3631167028862be2a173976ca11


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function changeProxyAdmin(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x8f283970 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgrade(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 9
    s = 128
    idx = 9
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[416] = 4
    mem[448 len 4] = name()
    mem[128] = 416
    mem[452] = 4
    mem[484 len 4] = unknown_0x95d89b41(?????)
    mem[160] = 452
    mem[488] = 4
    mem[520 len 4] = unknown_0x313ce567(?????)
    mem[192] = 488
    mem[524] = 4
    mem[556 len 4] = unknown_0x18160ddd(?????)
    mem[224] = 524
    mem[560] = 4
    mem[592 len 4] = 2470736629
    mem[256] = 560
    mem[596] = 4
    mem[628 len 4] = 1303139920
    mem[288] = 596
    mem[632] = 4
    mem[664 len 4] = collateralizationRatio()
    mem[320] = 632
    mem[668] = 4
    mem[700 len 4] = underlying()
    mem[352] = 668
    mem[704] = 4
    mem[736 len 4] = isActive()
    mem[384] = 704
    mem[740] = 9
    mem[64] = 1124
    mem[1060] = 0
    mem[1092] = 96
    mem[772] = 1060
    s = 772
    idx = 9
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[1060] = 0
        mem[1092] = 96
        mem[s + 32] = 1060
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 9:
        if idx >= mem[740]:
            revert with 0, 50
        mem[mem[(32 * idx) + 772]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[740]:
            revert with 0, 50
        mem[mem[(32 * idx) + 772] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _695 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _698 = mem[740]
    mem[mem[64] + 36] = mem[740]
    idx = 0
    s = 772
    t = mem[64] + (32 * _698) + 68
    u = mem[64] + 68
    while idx < _698:
        mem[u] = t + -_695 - 68
        _1013 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _1015 = mem[_1013 + 32]
        mem[t + 32] = 64
        _1016 = mem[_1015]
        mem[t + 64] = mem[_1015]
        v = 0
        while v < _1016:
            mem[v + t + 96] = mem[v + _1015 + 32]
            v = v + 32
            continue 
        if ceil32(_1016) > _1016:
            mem[t + _1016 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1016) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1020 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1025 = mem[_1020 + 32]
    require mem[_1020 + 32] <= test266151307()
    require _1020 + mem[_1020 + 32] + 31 < _1020 + return_data.size
    _1027 = mem[_1020 + mem[_1020 + 32]]
    if mem[_1020 + mem[_1020 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1 < 0 or _1020 + ceil32(return_data.size) + ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _1020 + ceil32(return_data.size) + ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1
    mem[_1020 + ceil32(return_data.size)] = _1027
    require (32 * _1027) + _1025 + 32 <= return_data.size
    s = _1020 + ceil32(return_data.size) + 32
    idx = _1020 + _1025 + 32
    while idx < (32 * _1027) + _1020 + _1025 + 32:
        _1317 = mem[idx]
        require mem[idx] <= test266151307()
        require _1020 + return_data.size > _1020 + _1025 + mem[idx] + 63
        _1325 = mem[_1020 + _1025 + mem[idx] + 32]
        if mem[_1020 + _1025 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _1340 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1
        mem[_1340] = _1325
        require _1025 + _1317 + _1325 + 64 <= return_data.size
        t = 0
        while t < _1325:
            mem[t + _1340 + 32] = mem[t + _1020 + _1025 + _1317 + 64]
            t = t + 32
            continue 
        if ceil32(_1325) > _1325:
            mem[_1340 + _1325 + 32] = 0
        mem[s] = _1340
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64]] = 0x3659cfe600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(arg1)
    call arg1.0x3659cfe6 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1349 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _1352 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1349) + 32
    if not _1349:
        idx = 0
        while idx < _1349:
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1604 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1611 = mem[_1352]
        mem[mem[64] + 36] = mem[_1352]
        idx = 0
        s = _1352 + 32
        t = mem[64] + (32 * _1611) + 68
        u = mem[64] + 68
        while idx < _1611:
            mem[u] = t + -_1604 - 68
            _1869 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1871 = mem[_1869 + 32]
            mem[t + 32] = 64
            _1872 = mem[_1871]
            mem[t + 64] = mem[_1871]
            v = 0
            while v < _1872:
                mem[v + t + 96] = mem[v + _1871 + 32]
                v = v + 32
                continue 
            if ceil32(_1872) > _1872:
                mem[t + _1872 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1872) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1885 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1897 = mem[_1885 + 32]
        require mem[_1885 + 32] <= test266151307()
        require _1885 + mem[_1885 + 32] + 31 < _1885 + return_data.size
        _1904 = mem[_1885 + mem[_1885 + 32]]
        if mem[_1885 + mem[_1885 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1 < 0 or _1885 + ceil32(return_data.size) + ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1885 + ceil32(return_data.size) + ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1
        mem[_1885 + ceil32(return_data.size)] = _1904
        require (32 * _1904) + _1897 + 32 <= return_data.size
        s = _1885 + ceil32(return_data.size) + 32
        idx = _1885 + _1897 + 32
        while idx < (32 * _1904) + _1885 + _1897 + 32:
            _2105 = mem[idx]
            require mem[idx] <= test266151307()
            require _1885 + return_data.size > _1885 + _1897 + mem[idx] + 63
            _2115 = mem[_1885 + _1897 + mem[idx] + 32]
            if mem[_1885 + _1897 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2124 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1
            mem[_2124] = _2115
            require _1897 + _2105 + _2115 + 64 <= return_data.size
            t = 0
            while t < _2115:
                mem[t + _2124 + 32] = mem[t + _1885 + _1897 + _2105 + 64]
                t = t + 32
                continue 
            if ceil32(_2115) > _2115:
                mem[_2124 + _2115 + 32] = 0
            mem[s] = _2124
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            _2329 = mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]
            _2330 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            _2334 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 63
            _2350 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2367 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2367] = _2350
            require _2334 + _2350 + 64 <= _2330 + 32
            s = 0
            while s < _2350:
                mem[s + _2367 + 32] = mem[s + _2329 + _2334 + 64]
                s = s + 32
                continue 
            if ceil32(_2350) <= _2350:
                if idx >= mem[_1885 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2597 = mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]
                _2598 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
                _2622 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 63
                _2637 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2654 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2654] = _2637
                require _2622 + _2637 + 64 <= _2598 + 32
                s = 0
                while s < _2637:
                    mem[s + _2654 + 32] = mem[s + _2597 + _2622 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2637) > _2637:
                    mem[_2654 + _2637 + 32] = 0
                if sha3(mem[_2367 + 32 len mem[_2367]]) != sha3(mem[_2654 + 32 len _2637]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2367 + _2350 + 32] = 0
                if idx >= mem[_1885 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2613 = mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]
                _2614 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
                _2629 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 63
                _2641 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2659 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2659] = _2641
                require _2629 + _2641 + 64 <= _2614 + 32
                s = 0
                while s < _2641:
                    mem[s + _2659 + 32] = mem[s + _2613 + _2629 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2641) > _2641:
                    mem[_2659 + _2641 + 32] = 0
                if sha3(mem[_2367 + 32 len mem[_2367]]) != sha3(mem[_2659 + 32 len _2641]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 6:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 8
        while idx <= 8:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _1352 + (32 * _1349) + 96
        mem[_1352 + (32 * _1349) + 32] = 0
        mem[_1352 + (32 * _1349) + 64] = 96
        mem[_1352 + 32] = _1352 + (32 * _1349) + 32
        s = _1352 + 32
        idx = _1349
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1352 + (32 * _1349) + 32] = 0
            mem[_1352 + (32 * _1349) + 64] = 96
            mem[s + 32] = _1352 + (32 * _1349) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _1349:
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1873 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1877 = mem[_1352]
        mem[mem[64] + 36] = mem[_1352]
        idx = 0
        s = _1352 + 32
        t = mem[64] + (32 * _1877) + 68
        u = mem[64] + 68
        while idx < _1877:
            mem[u] = t + -_1873 - 68
            _2107 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2109 = mem[_2107 + 32]
            mem[t + 32] = 64
            _2110 = mem[_2109]
            mem[t + 64] = mem[_2109]
            v = 0
            while v < _2110:
                mem[v + t + 96] = mem[v + _2109 + 32]
                v = v + 32
                continue 
            if ceil32(_2110) > _2110:
                mem[t + _2110 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2110) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2126 = mem[_2117 + 32]
        require mem[_2117 + 32] <= test266151307()
        require _2117 + mem[_2117 + 32] + 31 < _2117 + return_data.size
        _2134 = mem[_2117 + mem[_2117 + 32]]
        if mem[_2117 + mem[_2117 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1 < 0 or _2117 + ceil32(return_data.size) + ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2117 + ceil32(return_data.size) + ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1
        mem[_2117 + ceil32(return_data.size)] = _2134
        require (32 * _2134) + _2126 + 32 <= return_data.size
        s = _2117 + ceil32(return_data.size) + 32
        idx = _2117 + _2126 + 32
        while idx < (32 * _2134) + _2117 + _2126 + 32:
            _2323 = mem[idx]
            require mem[idx] <= test266151307()
            require _2117 + return_data.size > _2117 + _2126 + mem[idx] + 63
            _2331 = mem[_2117 + _2126 + mem[idx] + 32]
            if mem[_2117 + _2126 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2351 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1
            mem[_2351] = _2331
            require _2126 + _2323 + _2331 + 64 <= return_data.size
            t = 0
            while t < _2331:
                mem[t + _2351 + 32] = mem[t + _2117 + _2126 + _2323 + 64]
                t = t + 32
                continue 
            if ceil32(_2331) > _2331:
                mem[_2351 + _2331 + 32] = 0
            mem[s] = _2351
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            _2553 = mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]
            _2554 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            _2558 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 63
            _2602 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2630 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2630] = _2602
            require _2558 + _2602 + 64 <= _2554 + 32
            s = 0
            while s < _2602:
                mem[s + _2630 + 32] = mem[s + _2553 + _2558 + 64]
                s = s + 32
                continue 
            if ceil32(_2602) <= _2602:
                if idx >= mem[_2117 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2835 = mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]
                _2836 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
                _2861 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 63
                _2872 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2889 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2889] = _2872
                require _2861 + _2872 + 64 <= _2836 + 32
                s = 0
                while s < _2872:
                    mem[s + _2889 + 32] = mem[s + _2835 + _2861 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2872) > _2872:
                    mem[_2889 + _2872 + 32] = 0
                if sha3(mem[_2630 + 32 len mem[_2630]]) != sha3(mem[_2889 + 32 len _2872]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2630 + _2602 + 32] = 0
                if idx >= mem[_2117 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2848 = mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]
                _2849 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
                _2866 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 63
                _2878 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2891 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2891] = _2878
                require _2866 + _2878 + 64 <= _2849 + 32
                s = 0
                while s < _2878:
                    mem[s + _2891 + 32] = mem[s + _2848 + _2866 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2878) > _2878:
                    mem[_2891 + _2878 + 32] = 0
                if sha3(mem[_2630 + 32 len mem[_2630]]) != sha3(mem[_2891 + 32 len _2878]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 6:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 8
        while idx <= 8:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 9
    s = 128
    idx = 9
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[416] = 4
    mem[448 len 4] = name()
    mem[128] = 416
    mem[452] = 4
    mem[484 len 4] = unknown_0x95d89b41(?????)
    mem[160] = 452
    mem[488] = 4
    mem[520 len 4] = unknown_0x313ce567(?????)
    mem[192] = 488
    mem[524] = 4
    mem[556 len 4] = unknown_0x18160ddd(?????)
    mem[224] = 524
    mem[560] = 4
    mem[592 len 4] = 2470736629
    mem[256] = 560
    mem[596] = 4
    mem[628 len 4] = 1303139920
    mem[288] = 596
    mem[632] = 4
    mem[664 len 4] = collateralizationRatio()
    mem[320] = 632
    mem[668] = 4
    mem[700 len 4] = underlying()
    mem[352] = 668
    mem[704] = 4
    mem[736 len 4] = isActive()
    mem[384] = 704
    mem[740] = 9
    mem[64] = 1124
    mem[1060] = 0
    mem[1092] = 96
    mem[772] = 1060
    s = 772
    idx = 9
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[1060] = 0
        mem[1092] = 96
        mem[s + 32] = 1060
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 9:
        if idx >= mem[740]:
            revert with 0, 50
        mem[mem[(32 * idx) + 772]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[740]:
            revert with 0, 50
        mem[mem[(32 * idx) + 772] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _695 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _698 = mem[740]
    mem[mem[64] + 36] = mem[740]
    idx = 0
    s = 772
    t = mem[64] + (32 * _698) + 68
    u = mem[64] + 68
    while idx < _698:
        mem[u] = t + -_695 - 68
        _1013 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _1015 = mem[_1013 + 32]
        mem[t + 32] = 64
        _1016 = mem[_1015]
        mem[t + 64] = mem[_1015]
        v = 0
        while v < _1016:
            mem[v + t + 96] = mem[v + _1015 + 32]
            v = v + 32
            continue 
        if ceil32(_1016) > _1016:
            mem[t + _1016 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1016) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1020 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1025 = mem[_1020 + 32]
    require mem[_1020 + 32] <= test266151307()
    require _1020 + mem[_1020 + 32] + 31 < _1020 + return_data.size
    _1027 = mem[_1020 + mem[_1020 + 32]]
    if mem[_1020 + mem[_1020 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1 < 0 or _1020 + ceil32(return_data.size) + ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _1020 + ceil32(return_data.size) + ceil32(32 * mem[_1020 + mem[_1020 + 32]]) + 1
    mem[_1020 + ceil32(return_data.size)] = _1027
    require (32 * _1027) + _1025 + 32 <= return_data.size
    s = _1020 + ceil32(return_data.size) + 32
    idx = _1020 + _1025 + 32
    while idx < (32 * _1027) + _1020 + _1025 + 32:
        _1317 = mem[idx]
        require mem[idx] <= test266151307()
        require _1020 + return_data.size > _1020 + _1025 + mem[idx] + 63
        _1325 = mem[_1020 + _1025 + mem[idx] + 32]
        if mem[_1020 + _1025 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _1340 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_1020 + _1025 + mem[idx] + 32])) + 1
        mem[_1340] = _1325
        require _1025 + _1317 + _1325 + 64 <= return_data.size
        t = 0
        while t < _1325:
            mem[t + _1340 + 32] = mem[t + _1020 + _1025 + _1317 + 64]
            t = t + 32
            continue 
        if ceil32(_1325) > _1325:
            mem[_1340 + _1325 + 32] = 0
        mem[s] = _1340
        s = s + 32
        idx = idx + 32
        continue 
    mem[mem[64]] = 0x4f1ef28600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = arg3.length
    mem[mem[64] + 100 len arg3.length] = arg3[all]
    mem[arg3.length + mem[64] + 100] = 0
    require ext_code.size(arg1)
    call arg1.0x4f1ef286 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1349 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _1352 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1349) + 32
    if not _1349:
        idx = 0
        while idx < _1349:
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1604 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1611 = mem[_1352]
        mem[mem[64] + 36] = mem[_1352]
        idx = 0
        s = _1352 + 32
        t = mem[64] + (32 * _1611) + 68
        u = mem[64] + 68
        while idx < _1611:
            mem[u] = t + -_1604 - 68
            _1869 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1871 = mem[_1869 + 32]
            mem[t + 32] = 64
            _1872 = mem[_1871]
            mem[t + 64] = mem[_1871]
            v = 0
            while v < _1872:
                mem[v + t + 96] = mem[v + _1871 + 32]
                v = v + 32
                continue 
            if ceil32(_1872) > _1872:
                mem[t + _1872 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1872) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1885 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1897 = mem[_1885 + 32]
        require mem[_1885 + 32] <= test266151307()
        require _1885 + mem[_1885 + 32] + 31 < _1885 + return_data.size
        _1904 = mem[_1885 + mem[_1885 + 32]]
        if mem[_1885 + mem[_1885 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1 < 0 or _1885 + ceil32(return_data.size) + ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1885 + ceil32(return_data.size) + ceil32(32 * mem[_1885 + mem[_1885 + 32]]) + 1
        mem[_1885 + ceil32(return_data.size)] = _1904
        require (32 * _1904) + _1897 + 32 <= return_data.size
        s = _1885 + ceil32(return_data.size) + 32
        idx = _1885 + _1897 + 32
        while idx < (32 * _1904) + _1885 + _1897 + 32:
            _2105 = mem[idx]
            require mem[idx] <= test266151307()
            require _1885 + return_data.size > _1885 + _1897 + mem[idx] + 63
            _2115 = mem[_1885 + _1897 + mem[idx] + 32]
            if mem[_1885 + _1897 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2124 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1885 + _1897 + mem[idx] + 32])) + 1
            mem[_2124] = _2115
            require _1897 + _2105 + _2115 + 64 <= return_data.size
            t = 0
            while t < _2115:
                mem[t + _2124 + 32] = mem[t + _1885 + _1897 + _2105 + 64]
                t = t + 32
                continue 
            if ceil32(_2115) > _2115:
                mem[_2124 + _2115 + 32] = 0
            mem[s] = _2124
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            _2329 = mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]
            _2330 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            _2334 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 63
            _2350 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2367 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2367] = _2350
            require _2334 + _2350 + 64 <= _2330 + 32
            s = 0
            while s < _2350:
                mem[s + _2367 + 32] = mem[s + _2329 + _2334 + 64]
                s = s + 32
                continue 
            if ceil32(_2350) <= _2350:
                if idx >= mem[_1885 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2597 = mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]
                _2598 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
                _2622 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 63
                _2637 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2654 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2654] = _2637
                require _2622 + _2637 + 64 <= _2598 + 32
                s = 0
                while s < _2637:
                    mem[s + _2654 + 32] = mem[s + _2597 + _2622 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2637) > _2637:
                    mem[_2654 + _2637 + 32] = 0
                if sha3(mem[_2367 + 32 len mem[_2367]]) != sha3(mem[_2654 + 32 len _2637]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2367 + _2350 + 32] = 0
                if idx >= mem[_1885 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2613 = mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]
                _2614 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
                _2629 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 63
                _2641 = mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2659 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2659] = _2641
                require _2629 + _2641 + 64 <= _2614 + 32
                s = 0
                while s < _2641:
                    mem[s + _2659 + 32] = mem[s + _2613 + _2629 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2641) > _2641:
                    mem[_2659 + _2641 + 32] = 0
                if sha3(mem[_2367 + 32 len mem[_2367]]) != sha3(mem[_2659 + 32 len _2641]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 6:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 8
        while idx <= 8:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_1885 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _1885 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _1352 + (32 * _1349) + 96
        mem[_1352 + (32 * _1349) + 32] = 0
        mem[_1352 + (32 * _1349) + 64] = 96
        mem[_1352 + 32] = _1352 + (32 * _1349) + 32
        s = _1352 + 32
        idx = _1349
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1352 + (32 * _1349) + 32] = 0
            mem[_1352 + (32 * _1349) + 64] = 96
            mem[s + 32] = _1352 + (32 * _1349) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _1349:
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1352]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1352 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1873 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1877 = mem[_1352]
        mem[mem[64] + 36] = mem[_1352]
        idx = 0
        s = _1352 + 32
        t = mem[64] + (32 * _1877) + 68
        u = mem[64] + 68
        while idx < _1877:
            mem[u] = t + -_1873 - 68
            _2107 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2109 = mem[_2107 + 32]
            mem[t + 32] = 64
            _2110 = mem[_2109]
            mem[t + 64] = mem[_2109]
            v = 0
            while v < _2110:
                mem[v + t + 96] = mem[v + _2109 + 32]
                v = v + 32
                continue 
            if ceil32(_2110) > _2110:
                mem[t + _2110 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2110) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2126 = mem[_2117 + 32]
        require mem[_2117 + 32] <= test266151307()
        require _2117 + mem[_2117 + 32] + 31 < _2117 + return_data.size
        _2134 = mem[_2117 + mem[_2117 + 32]]
        if mem[_2117 + mem[_2117 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1 < 0 or _2117 + ceil32(return_data.size) + ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2117 + ceil32(return_data.size) + ceil32(32 * mem[_2117 + mem[_2117 + 32]]) + 1
        mem[_2117 + ceil32(return_data.size)] = _2134
        require (32 * _2134) + _2126 + 32 <= return_data.size
        s = _2117 + ceil32(return_data.size) + 32
        idx = _2117 + _2126 + 32
        while idx < (32 * _2134) + _2117 + _2126 + 32:
            _2323 = mem[idx]
            require mem[idx] <= test266151307()
            require _2117 + return_data.size > _2117 + _2126 + mem[idx] + 63
            _2331 = mem[_2117 + _2126 + mem[idx] + 32]
            if mem[_2117 + _2126 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2351 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_2117 + _2126 + mem[idx] + 32])) + 1
            mem[_2351] = _2331
            require _2126 + _2323 + _2331 + 64 <= return_data.size
            t = 0
            while t < _2331:
                mem[t + _2351 + 32] = mem[t + _2117 + _2126 + _2323 + 64]
                t = t + 32
                continue 
            if ceil32(_2331) > _2331:
                mem[_2351 + _2331 + 32] = 0
            mem[s] = _2351
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            _2553 = mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]
            _2554 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            _2558 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 63
            _2602 = mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2630 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2630] = _2602
            require _2558 + _2602 + 64 <= _2554 + 32
            s = 0
            while s < _2602:
                mem[s + _2630 + 32] = mem[s + _2553 + _2558 + 64]
                s = s + 32
                continue 
            if ceil32(_2602) <= _2602:
                if idx >= mem[_2117 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2835 = mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]
                _2836 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
                _2861 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 63
                _2872 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2889 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2889] = _2872
                require _2861 + _2872 + 64 <= _2836 + 32
                s = 0
                while s < _2872:
                    mem[s + _2889 + 32] = mem[s + _2835 + _2861 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2872) > _2872:
                    mem[_2889 + _2872 + 32] = 0
                if sha3(mem[_2630 + 32 len mem[_2630]]) != sha3(mem[_2889 + 32 len _2872]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2630 + _2602 + 32] = 0
                if idx >= mem[_2117 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2848 = mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]
                _2849 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
                _2866 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 63
                _2878 = mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2891 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2891] = _2878
                require _2866 + _2878 + 64 <= _2849 + 32
                s = 0
                while s < _2878:
                    mem[s + _2891 + 32] = mem[s + _2848 + _2866 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2878) > _2878:
                    mem[_2891 + _2878 + 32] = 0
                if sha3(mem[_2630 + 32 len mem[_2630]]) != sha3(mem[_2891 + 32 len _2878]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 6:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 8
        while idx <= 8:
            if idx >= mem[_1020 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_2117 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1020 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _2117 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
