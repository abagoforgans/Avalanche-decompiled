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
    mem[96] = 8
    s = 128
    idx = 8
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[384] = 4
    mem[416 len 4] = name()
    mem[128] = 384
    mem[420] = 4
    mem[452 len 4] = unknown_0x95d89b41(?????)
    mem[160] = 420
    mem[456] = 4
    mem[488 len 4] = unknown_0x313ce567(?????)
    mem[192] = 456
    mem[492] = 4
    mem[524 len 4] = unknown_0x18160ddd(?????)
    mem[224] = 492
    mem[528] = 4
    mem[560 len 4] = unknown_0x4dac5650(?????)
    mem[256] = 528
    mem[564] = 4
    mem[596 len 4] = interestRate()
    mem[288] = 564
    mem[600] = 4
    mem[632 len 4] = debtToken()
    mem[320] = 600
    mem[636] = 4
    mem[668 len 4] = unknown_0x22f3e2d4(?????)
    mem[352] = 636
    mem[672] = 8
    mem[64] = 1024
    mem[960] = 0
    mem[992] = 96
    mem[704] = 960
    s = 704
    idx = 8
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[960] = 0
        mem[992] = 96
        mem[s + 32] = 960
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 8:
        if idx >= mem[672]:
            revert with 0, 50
        mem[mem[(32 * idx) + 704]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[672]:
            revert with 0, 50
        mem[mem[(32 * idx) + 704] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _692 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _695 = mem[672]
    mem[mem[64] + 36] = mem[672]
    idx = 0
    s = 704
    t = mem[64] + (32 * _695) + 68
    u = mem[64] + 68
    while idx < _695:
        mem[u] = t + -_692 - 68
        _1010 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _1012 = mem[_1010 + 32]
        mem[t + 32] = 64
        _1013 = mem[_1012]
        mem[t + 64] = mem[_1012]
        v = 0
        while v < _1013:
            mem[v + t + 96] = mem[v + _1012 + 32]
            v = v + 32
            continue 
        if ceil32(_1013) > _1013:
            mem[t + _1013 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1013) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1017 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1022 = mem[_1017 + 32]
    require mem[_1017 + 32] <= test266151307()
    require _1017 + mem[_1017 + 32] + 31 < _1017 + return_data.size
    _1024 = mem[_1017 + mem[_1017 + 32]]
    if mem[_1017 + mem[_1017 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1 < 0 or _1017 + ceil32(return_data.size) + ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _1017 + ceil32(return_data.size) + ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1
    mem[_1017 + ceil32(return_data.size)] = _1024
    require (32 * _1024) + _1022 + 32 <= return_data.size
    s = _1017 + ceil32(return_data.size) + 32
    idx = _1017 + _1022 + 32
    while idx < (32 * _1024) + _1017 + _1022 + 32:
        _1314 = mem[idx]
        require mem[idx] <= test266151307()
        require _1017 + return_data.size > _1017 + _1022 + mem[idx] + 63
        _1322 = mem[_1017 + _1022 + mem[idx] + 32]
        if mem[_1017 + _1022 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _1337 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1
        mem[_1337] = _1322
        require _1022 + _1314 + _1322 + 64 <= return_data.size
        t = 0
        while t < _1322:
            mem[t + _1337 + 32] = mem[t + _1017 + _1022 + _1314 + 64]
            t = t + 32
            continue 
        if ceil32(_1322) > _1322:
            mem[_1337 + _1322 + 32] = 0
        mem[s] = _1337
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
    _1346 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _1349 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1346) + 32
    if not _1346:
        idx = 0
        while idx < _1346:
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1601 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1608 = mem[_1349]
        mem[mem[64] + 36] = mem[_1349]
        idx = 0
        s = _1349 + 32
        t = mem[64] + (32 * _1608) + 68
        u = mem[64] + 68
        while idx < _1608:
            mem[u] = t + -_1601 - 68
            _1866 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1868 = mem[_1866 + 32]
            mem[t + 32] = 64
            _1869 = mem[_1868]
            mem[t + 64] = mem[_1868]
            v = 0
            while v < _1869:
                mem[v + t + 96] = mem[v + _1868 + 32]
                v = v + 32
                continue 
            if ceil32(_1869) > _1869:
                mem[t + _1869 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1869) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1882 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1894 = mem[_1882 + 32]
        require mem[_1882 + 32] <= test266151307()
        require _1882 + mem[_1882 + 32] + 31 < _1882 + return_data.size
        _1901 = mem[_1882 + mem[_1882 + 32]]
        if mem[_1882 + mem[_1882 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1 < 0 or _1882 + ceil32(return_data.size) + ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1882 + ceil32(return_data.size) + ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1
        mem[_1882 + ceil32(return_data.size)] = _1901
        require (32 * _1901) + _1894 + 32 <= return_data.size
        s = _1882 + ceil32(return_data.size) + 32
        idx = _1882 + _1894 + 32
        while idx < (32 * _1901) + _1882 + _1894 + 32:
            _2102 = mem[idx]
            require mem[idx] <= test266151307()
            require _1882 + return_data.size > _1882 + _1894 + mem[idx] + 63
            _2112 = mem[_1882 + _1894 + mem[idx] + 32]
            if mem[_1882 + _1894 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2121 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1
            mem[_2121] = _2112
            require _1894 + _2102 + _2112 + 64 <= return_data.size
            t = 0
            while t < _2112:
                mem[t + _2121 + 32] = mem[t + _1882 + _1894 + _2102 + 64]
                t = t + 32
                continue 
            if ceil32(_2112) > _2112:
                mem[_2121 + _2112 + 32] = 0
            mem[s] = _2121
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            _2326 = mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]
            _2327 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            _2331 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 63
            _2347 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2364 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2364] = _2347
            require _2331 + _2347 + 64 <= _2327 + 32
            s = 0
            while s < _2347:
                mem[s + _2364 + 32] = mem[s + _2326 + _2331 + 64]
                s = s + 32
                continue 
            if ceil32(_2347) <= _2347:
                if idx >= mem[_1882 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2594 = mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]
                _2595 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
                _2619 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 63
                _2634 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2651 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2651] = _2634
                require _2619 + _2634 + 64 <= _2595 + 32
                s = 0
                while s < _2634:
                    mem[s + _2651 + 32] = mem[s + _2594 + _2619 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2634) > _2634:
                    mem[_2651 + _2634 + 32] = 0
                if sha3(mem[_2364 + 32 len mem[_2364]]) != sha3(mem[_2651 + 32 len _2634]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2364 + _2347 + 32] = 0
                if idx >= mem[_1882 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2610 = mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]
                _2611 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
                _2626 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 63
                _2638 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2656 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2656] = _2638
                require _2626 + _2638 + 64 <= _2611 + 32
                s = 0
                while s < _2638:
                    mem[s + _2656 + 32] = mem[s + _2610 + _2626 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2638) > _2638:
                    mem[_2656 + _2638 + 32] = 0
                if sha3(mem[_2364 + 32 len mem[_2364]]) != sha3(mem[_2656 + 32 len _2638]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 5:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 6
        while idx <= 6:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _1349 + (32 * _1346) + 96
        mem[_1349 + (32 * _1346) + 32] = 0
        mem[_1349 + (32 * _1346) + 64] = 96
        mem[_1349 + 32] = _1349 + (32 * _1346) + 32
        s = _1349 + 32
        idx = _1346
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1349 + (32 * _1346) + 32] = 0
            mem[_1349 + (32 * _1346) + 64] = 96
            mem[s + 32] = _1349 + (32 * _1346) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _1346:
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1870 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1874 = mem[_1349]
        mem[mem[64] + 36] = mem[_1349]
        idx = 0
        s = _1349 + 32
        t = mem[64] + (32 * _1874) + 68
        u = mem[64] + 68
        while idx < _1874:
            mem[u] = t + -_1870 - 68
            _2104 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2106 = mem[_2104 + 32]
            mem[t + 32] = 64
            _2107 = mem[_2106]
            mem[t + 64] = mem[_2106]
            v = 0
            while v < _2107:
                mem[v + t + 96] = mem[v + _2106 + 32]
                v = v + 32
                continue 
            if ceil32(_2107) > _2107:
                mem[t + _2107 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2107) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2123 = mem[_2114 + 32]
        require mem[_2114 + 32] <= test266151307()
        require _2114 + mem[_2114 + 32] + 31 < _2114 + return_data.size
        _2131 = mem[_2114 + mem[_2114 + 32]]
        if mem[_2114 + mem[_2114 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1 < 0 or _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1
        mem[_2114 + ceil32(return_data.size)] = _2131
        require (32 * _2131) + _2123 + 32 <= return_data.size
        s = _2114 + ceil32(return_data.size) + 32
        idx = _2114 + _2123 + 32
        while idx < (32 * _2131) + _2114 + _2123 + 32:
            _2320 = mem[idx]
            require mem[idx] <= test266151307()
            require _2114 + return_data.size > _2114 + _2123 + mem[idx] + 63
            _2328 = mem[_2114 + _2123 + mem[idx] + 32]
            if mem[_2114 + _2123 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2348 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1
            mem[_2348] = _2328
            require _2123 + _2320 + _2328 + 64 <= return_data.size
            t = 0
            while t < _2328:
                mem[t + _2348 + 32] = mem[t + _2114 + _2123 + _2320 + 64]
                t = t + 32
                continue 
            if ceil32(_2328) > _2328:
                mem[_2348 + _2328 + 32] = 0
            mem[s] = _2348
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            _2550 = mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]
            _2551 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            _2555 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 63
            _2599 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2627 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2627] = _2599
            require _2555 + _2599 + 64 <= _2551 + 32
            s = 0
            while s < _2599:
                mem[s + _2627 + 32] = mem[s + _2550 + _2555 + 64]
                s = s + 32
                continue 
            if ceil32(_2599) <= _2599:
                if idx >= mem[_2114 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2832 = mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]
                _2833 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
                _2858 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 63
                _2869 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2886 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2886] = _2869
                require _2858 + _2869 + 64 <= _2833 + 32
                s = 0
                while s < _2869:
                    mem[s + _2886 + 32] = mem[s + _2832 + _2858 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2869) > _2869:
                    mem[_2886 + _2869 + 32] = 0
                if sha3(mem[_2627 + 32 len mem[_2627]]) != sha3(mem[_2886 + 32 len _2869]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2627 + _2599 + 32] = 0
                if idx >= mem[_2114 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2845 = mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]
                _2846 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
                _2863 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 63
                _2875 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2888 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2888] = _2875
                require _2863 + _2875 + 64 <= _2846 + 32
                s = 0
                while s < _2875:
                    mem[s + _2888 + 32] = mem[s + _2845 + _2863 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2875) > _2875:
                    mem[_2888 + _2875 + 32] = 0
                if sha3(mem[_2627 + 32 len mem[_2627]]) != sha3(mem[_2888 + 32 len _2875]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 5:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 6
        while idx <= 6:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]):
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
    mem[96] = 8
    s = 128
    idx = 8
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[384] = 4
    mem[416 len 4] = name()
    mem[128] = 384
    mem[420] = 4
    mem[452 len 4] = unknown_0x95d89b41(?????)
    mem[160] = 420
    mem[456] = 4
    mem[488 len 4] = unknown_0x313ce567(?????)
    mem[192] = 456
    mem[492] = 4
    mem[524 len 4] = unknown_0x18160ddd(?????)
    mem[224] = 492
    mem[528] = 4
    mem[560 len 4] = unknown_0x4dac5650(?????)
    mem[256] = 528
    mem[564] = 4
    mem[596 len 4] = interestRate()
    mem[288] = 564
    mem[600] = 4
    mem[632 len 4] = debtToken()
    mem[320] = 600
    mem[636] = 4
    mem[668 len 4] = unknown_0x22f3e2d4(?????)
    mem[352] = 636
    mem[672] = 8
    mem[64] = 1024
    mem[960] = 0
    mem[992] = 96
    mem[704] = 960
    s = 704
    idx = 8
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[960] = 0
        mem[992] = 96
        mem[s + 32] = 960
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 8:
        if idx >= mem[672]:
            revert with 0, 50
        mem[mem[(32 * idx) + 704]] = arg1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[672]:
            revert with 0, 50
        mem[mem[(32 * idx) + 704] + 32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _692 = mem[64]
    mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _695 = mem[672]
    mem[mem[64] + 36] = mem[672]
    idx = 0
    s = 704
    t = mem[64] + (32 * _695) + 68
    u = mem[64] + 68
    while idx < _695:
        mem[u] = t + -_692 - 68
        _1010 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        _1012 = mem[_1010 + 32]
        mem[t + 32] = 64
        _1013 = mem[_1012]
        mem[t + 64] = mem[_1012]
        v = 0
        while v < _1013:
            mem[v + t + 96] = mem[v + _1012 + 32]
            v = v + 32
            continue 
        if ceil32(_1013) > _1013:
            mem[t + _1013 + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1013) + t + 96
        u = u + 32
        continue 
    require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
    call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1017 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1022 = mem[_1017 + 32]
    require mem[_1017 + 32] <= test266151307()
    require _1017 + mem[_1017 + 32] + 31 < _1017 + return_data.size
    _1024 = mem[_1017 + mem[_1017 + 32]]
    if mem[_1017 + mem[_1017 + 32]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1 < 0 or _1017 + ceil32(return_data.size) + ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _1017 + ceil32(return_data.size) + ceil32(32 * mem[_1017 + mem[_1017 + 32]]) + 1
    mem[_1017 + ceil32(return_data.size)] = _1024
    require (32 * _1024) + _1022 + 32 <= return_data.size
    s = _1017 + ceil32(return_data.size) + 32
    idx = _1017 + _1022 + 32
    while idx < (32 * _1024) + _1017 + _1022 + 32:
        _1314 = mem[idx]
        require mem[idx] <= test266151307()
        require _1017 + return_data.size > _1017 + _1022 + mem[idx] + 63
        _1322 = mem[_1017 + _1022 + mem[idx] + 32]
        if mem[_1017 + _1022 + mem[idx] + 32] > test266151307():
            revert with 0, 65
        _1337 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_1017 + _1022 + mem[idx] + 32])) + 1
        mem[_1337] = _1322
        require _1022 + _1314 + _1322 + 64 <= return_data.size
        t = 0
        while t < _1322:
            mem[t + _1337 + 32] = mem[t + _1017 + _1022 + _1314 + 64]
            t = t + 32
            continue 
        if ceil32(_1322) > _1322:
            mem[_1337 + _1322 + 32] = 0
        mem[s] = _1337
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
    _1346 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _1349 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1346) + 32
    if not _1346:
        idx = 0
        while idx < _1346:
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1601 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1608 = mem[_1349]
        mem[mem[64] + 36] = mem[_1349]
        idx = 0
        s = _1349 + 32
        t = mem[64] + (32 * _1608) + 68
        u = mem[64] + 68
        while idx < _1608:
            mem[u] = t + -_1601 - 68
            _1866 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1868 = mem[_1866 + 32]
            mem[t + 32] = 64
            _1869 = mem[_1868]
            mem[t + 64] = mem[_1868]
            v = 0
            while v < _1869:
                mem[v + t + 96] = mem[v + _1868 + 32]
                v = v + 32
                continue 
            if ceil32(_1869) > _1869:
                mem[t + _1869 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1869) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1882 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1894 = mem[_1882 + 32]
        require mem[_1882 + 32] <= test266151307()
        require _1882 + mem[_1882 + 32] + 31 < _1882 + return_data.size
        _1901 = mem[_1882 + mem[_1882 + 32]]
        if mem[_1882 + mem[_1882 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1 < 0 or _1882 + ceil32(return_data.size) + ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1882 + ceil32(return_data.size) + ceil32(32 * mem[_1882 + mem[_1882 + 32]]) + 1
        mem[_1882 + ceil32(return_data.size)] = _1901
        require (32 * _1901) + _1894 + 32 <= return_data.size
        s = _1882 + ceil32(return_data.size) + 32
        idx = _1882 + _1894 + 32
        while idx < (32 * _1901) + _1882 + _1894 + 32:
            _2102 = mem[idx]
            require mem[idx] <= test266151307()
            require _1882 + return_data.size > _1882 + _1894 + mem[idx] + 63
            _2112 = mem[_1882 + _1894 + mem[idx] + 32]
            if mem[_1882 + _1894 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2121 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_1882 + _1894 + mem[idx] + 32])) + 1
            mem[_2121] = _2112
            require _1894 + _2102 + _2112 + 64 <= return_data.size
            t = 0
            while t < _2112:
                mem[t + _2121 + 32] = mem[t + _1882 + _1894 + _2102 + 64]
                t = t + 32
                continue 
            if ceil32(_2112) > _2112:
                mem[_2121 + _2112 + 32] = 0
            mem[s] = _2121
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            _2326 = mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]
            _2327 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            _2331 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 63
            _2347 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2364 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2364] = _2347
            require _2331 + _2347 + 64 <= _2327 + 32
            s = 0
            while s < _2347:
                mem[s + _2364 + 32] = mem[s + _2326 + _2331 + 64]
                s = s + 32
                continue 
            if ceil32(_2347) <= _2347:
                if idx >= mem[_1882 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2594 = mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]
                _2595 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
                _2619 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 63
                _2634 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2651 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2651] = _2634
                require _2619 + _2634 + 64 <= _2595 + 32
                s = 0
                while s < _2634:
                    mem[s + _2651 + 32] = mem[s + _2594 + _2619 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2634) > _2634:
                    mem[_2651 + _2634 + 32] = 0
                if sha3(mem[_2364 + 32 len mem[_2364]]) != sha3(mem[_2651 + 32 len _2634]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2364 + _2347 + 32] = 0
                if idx >= mem[_1882 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2610 = mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]
                _2611 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
                _2626 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 63
                _2638 = mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2656 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2656] = _2638
                require _2626 + _2638 + 64 <= _2611 + 32
                s = 0
                while s < _2638:
                    mem[s + _2656 + 32] = mem[s + _2610 + _2626 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2638) > _2638:
                    mem[_2656 + _2638 + 32] = 0
                if sha3(mem[_2364 + 32 len mem[_2364]]) != sha3(mem[_2656 + 32 len _2638]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 5:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 6
        while idx <= 6:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_1882 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _1882 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = _1349 + (32 * _1346) + 96
        mem[_1349 + (32 * _1346) + 32] = 0
        mem[_1349 + (32 * _1346) + 64] = 96
        mem[_1349 + 32] = _1349 + (32 * _1346) + 32
        s = _1349 + 32
        idx = _1346
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1349 + (32 * _1346) + 32] = 0
            mem[_1349 + (32 * _1346) + 64] = 96
            mem[s + 32] = _1349 + (32 * _1346) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < _1346:
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32]] = arg1
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_1349]:
                revert with 0, 50
            mem[mem[(32 * idx) + _1349 + 32] + 32] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1870 = mem[64]
        mem[mem[64]] = 0x252dba4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1874 = mem[_1349]
        mem[mem[64] + 36] = mem[_1349]
        idx = 0
        s = _1349 + 32
        t = mem[64] + (32 * _1874) + 68
        u = mem[64] + 68
        while idx < _1874:
            mem[u] = t + -_1870 - 68
            _2104 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2106 = mem[_2104 + 32]
            mem[t + 32] = 64
            _2107 = mem[_2106]
            mem[t + 64] = mem[_2106]
            v = 0
            while v < _2107:
                mem[v + t + 96] = mem[v + _2106 + 32]
                v = v + 32
                continue 
            if ceil32(_2107) > _2107:
                mem[t + _2107 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2107) + t + 96
            u = u + 32
            continue 
        require ext_code.size(0xca11bde05977b3631167028862be2a173976ca11)
        call 0xca11bde05977b3631167028862be2a173976ca11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2123 = mem[_2114 + 32]
        require mem[_2114 + 32] <= test266151307()
        require _2114 + mem[_2114 + 32] + 31 < _2114 + return_data.size
        _2131 = mem[_2114 + mem[_2114 + 32]]
        if mem[_2114 + mem[_2114 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1 < 0 or _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114 + 32]]) + 1
        mem[_2114 + ceil32(return_data.size)] = _2131
        require (32 * _2131) + _2123 + 32 <= return_data.size
        s = _2114 + ceil32(return_data.size) + 32
        idx = _2114 + _2123 + 32
        while idx < (32 * _2131) + _2114 + _2123 + 32:
            _2320 = mem[idx]
            require mem[idx] <= test266151307()
            require _2114 + return_data.size > _2114 + _2123 + mem[idx] + 63
            _2328 = mem[_2114 + _2123 + mem[idx] + 32]
            if mem[_2114 + _2123 + mem[idx] + 32] > test266151307():
                revert with 0, 65
            _2348 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_2114 + _2123 + mem[idx] + 32])) + 1
            mem[_2348] = _2328
            require _2123 + _2320 + _2328 + 64 <= return_data.size
            t = 0
            while t < _2328:
                mem[t + _2348 + 32] = mem[t + _2114 + _2123 + _2320 + 64]
                t = t + 32
                continue 
            if ceil32(_2328) > _2328:
                mem[_2348 + _2328 + 32] = 0
            mem[s] = _2348
            s = s + 32
            idx = idx + 32
            continue 
        idx = 0
        while idx <= 1:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            _2550 = mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]
            _2551 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            _2555 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] <= test266151307()
            require mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 63
            _2599 = mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                revert with 0, 65
            _2627 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
            mem[_2627] = _2599
            require _2555 + _2599 + 64 <= _2551 + 32
            s = 0
            while s < _2599:
                mem[s + _2627 + 32] = mem[s + _2550 + _2555 + 64]
                s = s + 32
                continue 
            if ceil32(_2599) <= _2599:
                if idx >= mem[_2114 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2832 = mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]
                _2833 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
                _2858 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 63
                _2869 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2886 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2886] = _2869
                require _2858 + _2869 + 64 <= _2833 + 32
                s = 0
                while s < _2869:
                    mem[s + _2886 + 32] = mem[s + _2832 + _2858 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2869) > _2869:
                    mem[_2886 + _2869 + 32] = 0
                if sha3(mem[_2627 + 32 len mem[_2627]]) != sha3(mem[_2886 + 32 len _2869]):
                    revert with 0, 'an-string-simple-field-failed'
            else:
                mem[_2627 + _2599 + 32] = 0
                if idx >= mem[_2114 + ceil32(return_data.size)]:
                    revert with 0, 50
                _2845 = mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]
                _2846 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
                _2863 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]
                require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] <= test266151307()
                require mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] + 32 > mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 63
                _2875 = mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32]
                if mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32] > test266151307():
                    revert with 0, 65
                _2888 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] + 32])) + 1
                mem[_2888] = _2875
                require _2863 + _2875 + 64 <= _2846 + 32
                s = 0
                while s < _2875:
                    mem[s + _2888 + 32] = mem[s + _2845 + _2863 + 64]
                    s = s + 32
                    continue 
                if ceil32(_2875) > _2875:
                    mem[_2888 + _2875 + 32] = 0
                if sha3(mem[_2627 + 32 len mem[_2627]]) != sha3(mem[_2888 + 32 len _2875]):
                    revert with 0, 'an-string-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 2
        while idx <= 2:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1]
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 63 len 1]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 63 len 1] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 63 len 1]:
                revert with 0, 'an-uint8-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 3
        while idx <= 5:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]:
                revert with 0, 'an-uint256-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 6
        while idx <= 6:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20]
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 44 len 20]
            if mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 44 len 20] != mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 44 len 20]:
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 7
        while idx <= 7:
            if idx >= mem[_1017 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32])
            if idx >= mem[_2114 + ceil32(return_data.size)]:
                revert with 0, 50
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32]] >= 32
            require mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32] == bool(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32])
            if bool(mem[mem[(32 * idx) + _1017 + ceil32(return_data.size) + 32] + 32]) != bool(mem[mem[(32 * idx) + _2114 + ceil32(return_data.size) + 32] + 32]):
                revert with 0, 'an-address-simple-field-failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
