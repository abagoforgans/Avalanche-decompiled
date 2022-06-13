contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        return eth.balance(arg1)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 'INVALID_TOKEN'
    if not ext_code.hash(arg2):
        revert with 0, 'INVALID_TOKEN'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function batchBalanceOf(address[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length * arg1.length <= test266151307()
    mem[96] = arg2.length * arg1.length
    mem[64] = (32 * arg2.length * arg1.length) + 128
    if not arg2.length * arg1.length:
        idx = 0
        while idx < arg1.length:
            s = 0
            while s < arg2.length:
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * s) + arg2 + 36)]):
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                    staticcall address(cd[((32 * s) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _76 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = mem[_76]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length * arg1.length] = call.data[calldata.size len 32 * arg2.length * arg1.length]
        idx = 0
        while idx < arg1.length:
            s = 0
            while s < arg2.length:
                require idx < arg1.length
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[((32 * s) + arg2 + 36)]):
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(address(cd[((32 * s) + arg2 + 36)])):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * s) + arg2 + 36)]))
                    staticcall address(cd[((32 * s) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _77 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require s + (arg2.length * idx) < mem[96]
                    mem[(32 * s + (arg2.length * idx)) + 128] = mem[_77]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getUserWalletBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd1946dbc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require _9 + 1 <= test266151307()
    _156 = mem[64]
    mem[mem[64]] = _9 + 1
    mem[64] = mem[64] + (32 * _9 + 1) + 32
    if not _9 + 1:
        idx = 0
        while idx < _9:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            require idx < mem[_156]
            mem[(32 * idx) + _156 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_156]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _156 + 32] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        _305 = mem[_156]
        require mem[_156] <= test266151307()
        _311 = mem[64]
        mem[mem[64]] = mem[_156]
        mem[64] = mem[64] + (32 * _305) + 32
        if not _305:
            _437 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _437:
                _441 = mem[64]
                mem[64] = mem[64] + 32
                mem[_441] = 0
                require idx < mem[_156]
                _449 = mem[(32 * idx) + _156 + 32]
                mem[mem[64] + 4] = mem[(32 * idx) + _156 + 44 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc44b11f7 with:
                        gas gas_remaining wei
                       args address(_449)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _482 = mem[64]
                require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
                mem[64] = mem[64] + 32
                mem[_482] = mem[_470]
                if not Mask(1, 56, mem[_482]):
                    require idx < mem[_311]
                    mem[(32 * idx) + _311 + 32] = 0
                else:
                    require idx < mem[_156]
                    _517 = mem[(32 * idx) + _156 + 32]
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _156 + 44 len 20]:
                        require idx < mem[_311]
                        mem[(32 * idx) + _311 + 32] = eth.balance(arg2)
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                            revert with 0, 'INVALID_TOKEN'
                        if not ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                            revert with 0, 'INVALID_TOKEN'
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(_517))
                        staticcall address(_517).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[_311]
                        mem[(32 * idx) + _311 + 32] = mem[_549]
                _437 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = idx + 1
                continue 
            require mem[(2 * ceil32(return_data.size)) + 96] < mem[_311]
            mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _311 + 32] = eth.balance(arg2)
            _469 = mem[64]
            mem[mem[64]] = 64
            _477 = mem[_156]
            mem[mem[64] + 64] = mem[_156]
            idx = 0
            s = _156 + 32
            t = mem[64] + 96
            while idx < _477:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_469 + 32] = (32 * _477) + 96
            _565 = mem[_311]
            mem[_469 + (32 * _477) + 96] = mem[_311]
            mem[_469 + (32 * _477) + 128 len 32 * _565] = mem[_311 + 32 len 32 * _565]
            return memory
              from mem[64]
               len _469 + (32 * _477) + (32 * _565) + -mem[64] + 128
        mem[_311 + 32 len 32 * _305] = call.data[calldata.size len 32 * _305]
        _438 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _438:
            _442 = mem[64]
            mem[64] = mem[64] + 32
            mem[_442] = 0
            require idx < mem[_156]
            _451 = mem[(32 * idx) + _156 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _156 + 44 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc44b11f7 with:
                    gas gas_remaining wei
                   args address(_451)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _472 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _484 = mem[64]
            require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
            mem[64] = mem[64] + 32
            mem[_484] = mem[_472]
            if not Mask(1, 56, mem[_484]):
                require idx < mem[_311]
                mem[(32 * idx) + _311 + 32] = 0
            else:
                require idx < mem[_156]
                _518 = mem[(32 * idx) + _156 + 32]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _156 + 44 len 20]:
                    require idx < mem[_311]
                    mem[(32 * idx) + _311 + 32] = eth.balance(arg2)
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_518))
                    staticcall address(_518).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _550 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_311]
                    mem[(32 * idx) + _311 + 32] = mem[_550]
            _438 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_311]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _311 + 32] = eth.balance(arg2)
        _471 = mem[64]
        mem[mem[64]] = 64
        _478 = mem[_156]
        mem[mem[64] + 64] = mem[_156]
        idx = 0
        s = _156 + 32
        t = mem[64] + 96
        while idx < _478:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_471 + 32] = (32 * _478) + 96
        _566 = mem[_311]
        mem[_471 + (32 * _478) + 96] = mem[_311]
        mem[_471 + (32 * _478) + 128 len 32 * _566] = mem[_311 + 32 len 32 * _566]
        return memory
          from mem[64]
           len _471 + (32 * _478) + (32 * _566) + -mem[64] + 128
    mem[_156 + 32 len 32 * _9 + 1] = call.data[calldata.size len 32 * _9 + 1]
    idx = 0
    while idx < _9:
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        require idx < mem[_156]
        mem[(32 * idx) + _156 + 32] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        idx = idx + 1
        continue 
    require mem[(2 * ceil32(return_data.size)) + 96] < mem[_156]
    mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _156 + 32] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    _308 = mem[_156]
    require mem[_156] <= test266151307()
    _312 = mem[64]
    mem[mem[64]] = mem[_156]
    mem[64] = mem[64] + (32 * _308) + 32
    if not _308:
        _439 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _439:
            _443 = mem[64]
            mem[64] = mem[64] + 32
            mem[_443] = 0
            require idx < mem[_156]
            _453 = mem[(32 * idx) + _156 + 32]
            mem[mem[64] + 4] = mem[(32 * idx) + _156 + 44 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xc44b11f7 with:
                    gas gas_remaining wei
                   args address(_453)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _486 = mem[64]
            require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
            mem[64] = mem[64] + 32
            mem[_486] = mem[_474]
            if not Mask(1, 56, mem[_486]):
                require idx < mem[_312]
                mem[(32 * idx) + _312 + 32] = 0
            else:
                require idx < mem[_156]
                _519 = mem[(32 * idx) + _156 + 32]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _156 + 44 len 20]:
                    require idx < mem[_312]
                    mem[(32 * idx) + _312 + 32] = eth.balance(arg2)
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    if not ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                        revert with 0, 'INVALID_TOKEN'
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_519))
                    staticcall address(_519).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[_312]
                    mem[(32 * idx) + _312 + 32] = mem[_551]
            _439 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] < mem[_312]
        mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _312 + 32] = eth.balance(arg2)
        _473 = mem[64]
        mem[mem[64]] = 64
        _479 = mem[_156]
        mem[mem[64] + 64] = mem[_156]
        idx = 0
        s = _156 + 32
        t = mem[64] + 96
        while idx < _479:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_473 + 32] = (32 * _479) + 96
        _567 = mem[_312]
        mem[_473 + (32 * _479) + 96] = mem[_312]
        mem[_473 + (32 * _479) + 128 len 32 * _567] = mem[_312 + 32 len 32 * _567]
        return memory
          from mem[64]
           len _473 + (32 * _479) + (32 * _567) + -mem[64] + 128
    mem[_312 + 32 len 32 * _308] = call.data[calldata.size len 32 * _308]
    _440 = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    while idx < _440:
        _444 = mem[64]
        mem[64] = mem[64] + 32
        mem[_444] = 0
        require idx < mem[_156]
        _455 = mem[(32 * idx) + _156 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + _156 + 44 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xc44b11f7 with:
                gas gas_remaining wei
               args address(_455)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _476 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _488 = mem[64]
        require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
        mem[64] = mem[64] + 32
        mem[_488] = mem[_476]
        if not Mask(1, 56, mem[_488]):
            require idx < mem[_312]
            mem[(32 * idx) + _312 + 32] = 0
        else:
            require idx < mem[_156]
            _520 = mem[(32 * idx) + _156 + 32]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == mem[(32 * idx) + _156 + 44 len 20]:
                require idx < mem[_312]
                mem[(32 * idx) + _312 + 32] = eth.balance(arg2)
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                    revert with 0, 'INVALID_TOKEN'
                if not ext_code.hash(mem[(32 * idx) + _156 + 44 len 20]):
                    revert with 0, 'INVALID_TOKEN'
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(_520))
                staticcall address(_520).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_312]
                mem[(32 * idx) + _312 + 32] = mem[_552]
        _440 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = idx + 1
        continue 
    require mem[(2 * ceil32(return_data.size)) + 96] < mem[_312]
    mem[(32 * mem[(2 * ceil32(return_data.size)) + 96]) + _312 + 32] = eth.balance(arg2)
    _475 = mem[64]
    mem[mem[64]] = 64
    _480 = mem[_156]
    mem[mem[64] + 64] = mem[_156]
    idx = 0
    s = _156 + 32
    t = mem[64] + 96
    while idx < _480:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_475 + 32] = (32 * _480) + 96
    _568 = mem[_312]
    mem[_475 + (32 * _480) + 96] = mem[_312]
    mem[_475 + (32 * _480) + 128 len 32 * _568] = mem[_312 + 32 len 32 * _568]
    return memory
      from mem[64]
       len _475 + (32 * _480) + (32 * _568) + -mem[64] + 128
}



}
