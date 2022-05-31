contract main {




// =====================  Runtime code  =====================


#
#  - sub_073f8e79(?)
#  - sub_2aa68427(?)
#  - sub_2f56f682(?)
#  - sub_a32249e3(?)
#
uint8 stor0;
address stor0; offset 8
mapping of uint8 stor1;

function sub_c36be496(?) payable {
    return bool(uint8(stor0.field_0))
}

function _whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_2ba46ff3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'x02', 0
    uint8(stor0.field_0) = uint8(bool(arg1))
}

function sub_907272b2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'x02', 0
    stor1[address(arg1)] = uint8(bool(arg2))
}

function sub_9cb3497d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 4).length and ('cd', 68).length > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if ('cd', 4).length * ('cd', 68).length and ('cd', 36).length > -1 / ('cd', 4).length * ('cd', 68).length:
        revert with 'NH{q', 17
    if ('cd', 4).length * ('cd', 68).length * ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length * ('cd', 68).length * ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 128
    if not ('cd', 4).length * ('cd', 68).length * ('cd', 36).length:
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _134 = mem[_131]
            require mem[_131] == mem[_131 + 12 len 20]
            s = 0
            while s < ('cd', 4).length:
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                t = 0
                u = 0
                while t < ('cd', 36).length:
                    require cd[((32 * t) + cd[36] + 36)] == address(cd[((32 * t) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[36] + 36)])
                    staticcall address(_134).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _368 = mem[_366]
                    require mem[_366] == mem[_366 + 12 len 20]
                    if not mem[_366 + 12 len 20]:
                        _370 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_370] = 0
                        mem[_370 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[_370 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                        mem[_370 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[_370 + 128] = address(_368)
                        mem[_370 + 160] = 0
                        mem[_370 + 192] = 0
                        if u >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 128] = _370
                    else:
                        _373 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_373] = 3
                        mem[_373 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * t) + cd[36] + 36)]):
                            _374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_374 + idx + 68] = mem[_373 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_374 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _374 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[4] + 36)]) < address(cd[((32 * t) + cd[36] + 36)]):
                            _376 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_376] = 3
                            mem[_376 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[4] + 36)]):
                                _378 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_378 + idx + 68] = mem[_376 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_378 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _378 + -mem[64] + 100
                            staticcall address(_368).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _389 = mem[_385]
                            require mem[_385] == mem[_385 + 18 len 14]
                            _395 = mem[_385 + 32]
                            require mem[_385 + 32] == mem[_385 + 50 len 14]
                            require mem[_385 + 64] == mem[_385 + 92 len 4]
                            if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * s) + cd[4] + 36)]):
                                _408 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_408] = 1
                                mem[_408 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                                mem[_408 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                                mem[_408 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                                mem[_408 + 128] = address(_368)
                                mem[_408 + 160] = Mask(112, 0, _389)
                                mem[_408 + 192] = Mask(112, 0, _395)
                                if u >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * u) + 128] = _408
                            else:
                                _410 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_410] = 1
                                mem[_410 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                                mem[_410 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                                mem[_410 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                                mem[_410 + 128] = address(_368)
                                mem[_410 + 160] = Mask(112, 0, _395)
                                mem[_410 + 192] = Mask(112, 0, _389)
                                if u >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * u) + 128] = _410
                        else:
                            _377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_377] = 3
                            mem[_377 + 32] = 'x22'
                            if not address(cd[((32 * t) + cd[36] + 36)]):
                                _379 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_379 + idx + 68] = mem[_377 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_379 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _379 + -mem[64] + 100
                            staticcall address(_368).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _390 = mem[_386]
                            require mem[_386] == mem[_386 + 18 len 14]
                            _396 = mem[_386 + 32]
                            require mem[_386 + 32] == mem[_386 + 50 len 14]
                            require mem[_386 + 64] == mem[_386 + 92 len 4]
                            if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * t) + cd[36] + 36)]):
                                _412 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_412] = 1
                                mem[_412 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                                mem[_412 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                                mem[_412 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                                mem[_412 + 128] = address(_368)
                                mem[_412 + 160] = Mask(112, 0, _390)
                                mem[_412 + 192] = Mask(112, 0, _396)
                                if u >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * u) + 128] = _412
                            else:
                                _414 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_414] = 1
                                mem[_414 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                                mem[_414 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                                mem[_414 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                                mem[_414 + 128] = address(_368)
                                mem[_414 + 160] = Mask(112, 0, _396)
                                mem[_414 + 192] = Mask(112, 0, _390)
                                if u >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * u) + 128] = _414
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + 1
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _122 = mem[64]
        mem[mem[64]] = 32
        _123 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _123:
            _241 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_241 + 44 len 20]
            mem[t + 64] = mem[_241 + 76 len 20]
            mem[t + 96] = mem[_241 + 108 len 20]
            mem[t + 128] = mem[_241 + 140 len 20]
            mem[t + 160] = mem[_241 + 160]
            mem[t + 192] = mem[_241 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _122 + (224 * _123) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 352
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 224] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 288] = 0
    mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 320] = 0
    mem[var43001] = (32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 128
    s = var43001
    idx = var43002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 160] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 192] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 224] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 256] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 288] = 0
        mem[(32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 320] = 0
        mem[s + 32] = (32 * ('cd', 4).length * ('cd', 68).length * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _361 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _363 = mem[_361]
        require mem[_361] == mem[_361 + 12 len 20]
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            t = 0
            u = 0
            while t < ('cd', 36).length:
                require cd[((32 * t) + cd[36] + 36)] == address(cd[((32 * t) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t) + cd[36] + 36)])
                staticcall address(_363).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _521 = mem[_520]
                require mem[_520] == mem[_520 + 12 len 20]
                if not mem[_520 + 12 len 20]:
                    _522 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_522] = 0
                    mem[_522 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[_522 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                    mem[_522 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[_522 + 128] = address(_521)
                    mem[_522 + 160] = 0
                    mem[_522 + 192] = 0
                    if u >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 128] = _522
                else:
                    _524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_524] = 3
                    mem[_524 + 32] = 'x21'
                    if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * t) + cd[36] + 36)]):
                        _525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 3
                        idx = 0
                        while idx < 3:
                            mem[_525 + idx + 68] = mem[_524 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_525 + 71] = 0
                        revert with memory
                          from mem[64]
                           len _525 + -mem[64] + 100
                    if address(cd[((32 * s) + cd[4] + 36)]) < address(cd[((32 * t) + cd[36] + 36)]):
                        _526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_526] = 3
                        mem[_526 + 32] = 'x22'
                        if not address(cd[((32 * s) + cd[4] + 36)]):
                            _528 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_528 + idx + 68] = mem[_526 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_528 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _528 + -mem[64] + 100
                        staticcall address(_521).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _539 = mem[_535]
                        require mem[_535] == mem[_535 + 18 len 14]
                        _544 = mem[_535 + 32]
                        require mem[_535 + 32] == mem[_535 + 50 len 14]
                        require mem[_535 + 64] == mem[_535 + 92 len 4]
                        if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * s) + cd[4] + 36)]):
                            _554 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_554] = 1
                            mem[_554 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[_554 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                            mem[_554 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_554 + 128] = address(_521)
                            mem[_554 + 160] = Mask(112, 0, _539)
                            mem[_554 + 192] = Mask(112, 0, _544)
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _554
                        else:
                            _556 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_556] = 1
                            mem[_556 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[_556 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                            mem[_556 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_556 + 128] = address(_521)
                            mem[_556 + 160] = Mask(112, 0, _544)
                            mem[_556 + 192] = Mask(112, 0, _539)
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _556
                    else:
                        _527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_527] = 3
                        mem[_527 + 32] = 'x22'
                        if not address(cd[((32 * t) + cd[36] + 36)]):
                            _529 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_529 + idx + 68] = mem[_527 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_529 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _529 + -mem[64] + 100
                        staticcall address(_521).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _540 = mem[_536]
                        require mem[_536] == mem[_536 + 18 len 14]
                        _545 = mem[_536 + 32]
                        require mem[_536 + 32] == mem[_536 + 50 len 14]
                        require mem[_536 + 64] == mem[_536 + 92 len 4]
                        if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * t) + cd[36] + 36)]):
                            _558 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_558] = 1
                            mem[_558 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[_558 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                            mem[_558 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_558 + 128] = address(_521)
                            mem[_558 + 160] = Mask(112, 0, _540)
                            mem[_558 + 192] = Mask(112, 0, _545)
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _558
                        else:
                            _560 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_560] = 1
                            mem[_560 + 32] = address(cd[((32 * s) + cd[4] + 36)])
                            mem[_560 + 64] = address(cd[((32 * t) + cd[36] + 36)])
                            mem[_560 + 96] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_560 + 128] = address(_521)
                            mem[_560 + 160] = Mask(112, 0, _545)
                            mem[_560 + 192] = Mask(112, 0, _540)
                            if u >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * u) + 128] = _560
                if u == -1:
                    revert with 'NH{q', 17
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + 1
                continue 
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _353 = mem[64]
    mem[mem[64]] = 32
    _354 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _354:
        _459 = mem[s]
        mem[t] = bool(mem[mem[s]])
        mem[t + 32] = mem[_459 + 44 len 20]
        mem[t + 64] = mem[_459 + 76 len 20]
        mem[t + 96] = mem[_459 + 108 len 20]
        mem[t + 128] = mem[_459 + 140 len 20]
        mem[t + 160] = mem[_459 + 160]
        mem[t + 192] = mem[_459 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _353 + (224 * _354) + -mem[64] + 64
}

function sub_815a6de2(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[196 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _53 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _54 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _54
    require _53 + (32 * _54) + 32 <= return_data.size
    idx = _53 + 128
    s = ceil32(return_data.size) + 128
    while idx < _53 + (32 * _54) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[mem[64] + 4] = address(('cd', 36)[0])
    mem[mem[64] + 36] = address(('cd', 36)[1])
    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(('cd', 36)[0]), address(('cd', 36)[1])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _173 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _174 = mem[_173]
    require mem[_173] == mem[_173 + 12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    _175 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = address(_174)
    mem[mem[64] + 100] = cd[4]
    _176 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_175 + 132] = 32
    mem[_175 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(('cd', 36)[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    _182 = mem[_176]
    mem[_175 + 196 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_182) <= _182:
        call address(('cd', 36)[0]) with:
             gas gas_remaining wei
            args mem[_175 + 200 len _182 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] <= 0:
                if ('cd', 36).length >= 1:
                    if var351002 >= ('cd', 36).length - 1:
                    if var353001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var353001) + cd[36] + 36)] == address(cd[((32 * var353001) + cd[36] + 36)])
                    s = var353001
                    idx = var353001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9911 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9911] = 3
                        mem[_9911 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9919 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9919 + idx + 68] = mem[_9911 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9919 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9919 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9927] = 3
                            mem[_9927 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9943 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9943 + idx + 68] = mem[_9927 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9943 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9943 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10007 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10151 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10183 = mem[_10151]
                                    require mem[_10151] == mem[_10151 + 12 len 20]
                                    _10247 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10247 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10247 + 36] = 0
                                    mem[_10247 + 68] = _10007
                                    mem[_10247 + 100] = address(cd[68])
                                    mem[_10247 + 132] = 128
                                    mem[_10247 + 164] = mem[_10247]
                                    t = 0
                                    while t < mem[_10247]:
                                        mem[_10247 + t + 196] = mem[_10247 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10247]) > mem[_10247]:
                                        mem[_10247 + mem[_10247] + 196] = 0
                                    require ext_code.size(address(_10183))
                                    call address(_10183).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10007, address(cd[68]), 128, mem[_10247], mem[_10247 + 196 len ceil32(mem[_10247])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10343 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10375 = mem[_10343]
                                    require mem[_10343] == mem[_10343 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10599 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10631 = mem[_10599]
                                    require mem[_10599] == mem[_10599 + 12 len 20]
                                    _10663 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10663 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10663 + 36] = 0
                                    mem[_10663 + 68] = _10007
                                    mem[_10663 + 100] = address(_10375)
                                    mem[_10663 + 132] = 128
                                    mem[_10663 + 164] = mem[_10663]
                                    t = 0
                                    while t < mem[_10663]:
                                        mem[_10663 + t + 196] = mem[_10663 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10663]) > mem[_10663]:
                                        mem[_10663 + mem[_10663] + 196] = 0
                                    require ext_code.size(address(_10631))
                                    call address(_10631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10007, address(_10375), 128, mem[_10663], mem[_10663 + 196 len ceil32(mem[_10663])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10152 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10184 = mem[_10152]
                                    require mem[_10152] == mem[_10152 + 12 len 20]
                                    _10248 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10248 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10248 + 36] = _10007
                                    mem[_10248 + 68] = 0
                                    mem[_10248 + 100] = address(cd[68])
                                    mem[_10248 + 132] = 128
                                    mem[_10248 + 164] = mem[_10248]
                                    t = 0
                                    while t < mem[_10248]:
                                        mem[_10248 + t + 196] = mem[_10248 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10248]) > mem[_10248]:
                                        mem[_10248 + mem[_10248] + 196] = 0
                                    require ext_code.size(address(_10184))
                                    call address(_10184).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10007, 0, address(cd[68]), 128, mem[_10248], mem[_10248 + 196 len ceil32(mem[_10248])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10344 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10376 = mem[_10344]
                                    require mem[_10344] == mem[_10344 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10632 = mem[_10600]
                                    require mem[_10600] == mem[_10600 + 12 len 20]
                                    _10664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10664 + 36] = _10007
                                    mem[_10664 + 68] = 0
                                    mem[_10664 + 100] = address(_10376)
                                    mem[_10664 + 132] = 128
                                    mem[_10664 + 164] = mem[_10664]
                                    t = 0
                                    while t < mem[_10664]:
                                        mem[_10664 + t + 196] = mem[_10664 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10664]) > mem[_10664]:
                                        mem[_10664 + mem[_10664] + 196] = 0
                                    require ext_code.size(address(_10632))
                                    call address(_10632).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10007, 0, address(_10376), 128, mem[_10664], mem[_10664 + 196 len ceil32(mem[_10664])]
                        else:
                            _9928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9928] = 3
                            mem[_9928 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9944 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9944 + idx + 68] = mem[_9928 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9944 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9944 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10009 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10153 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10185 = mem[_10153]
                                    require mem[_10153] == mem[_10153 + 12 len 20]
                                    _10249 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10249 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10249 + 36] = 0
                                    mem[_10249 + 68] = _10009
                                    mem[_10249 + 100] = address(cd[68])
                                    mem[_10249 + 132] = 128
                                    mem[_10249 + 164] = mem[_10249]
                                    t = 0
                                    while t < mem[_10249]:
                                        mem[_10249 + t + 196] = mem[_10249 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10249]) > mem[_10249]:
                                        mem[_10249 + mem[_10249] + 196] = 0
                                    require ext_code.size(address(_10185))
                                    call address(_10185).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10009, address(cd[68]), 128, mem[_10249], mem[_10249 + 196 len ceil32(mem[_10249])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10345 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10377 = mem[_10345]
                                    require mem[_10345] == mem[_10345 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10633 = mem[_10601]
                                    require mem[_10601] == mem[_10601 + 12 len 20]
                                    _10665 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10665 + 36] = 0
                                    mem[_10665 + 68] = _10009
                                    mem[_10665 + 100] = address(_10377)
                                    mem[_10665 + 132] = 128
                                    mem[_10665 + 164] = mem[_10665]
                                    t = 0
                                    while t < mem[_10665]:
                                        mem[_10665 + t + 196] = mem[_10665 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10665]) > mem[_10665]:
                                        mem[_10665 + mem[_10665] + 196] = 0
                                    require ext_code.size(address(_10633))
                                    call address(_10633).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10009, address(_10377), 128, mem[_10665], mem[_10665 + 196 len ceil32(mem[_10665])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10154 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10186 = mem[_10154]
                                    require mem[_10154] == mem[_10154 + 12 len 20]
                                    _10250 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10250 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10250 + 36] = _10009
                                    mem[_10250 + 68] = 0
                                    mem[_10250 + 100] = address(cd[68])
                                    mem[_10250 + 132] = 128
                                    mem[_10250 + 164] = mem[_10250]
                                    t = 0
                                    while t < mem[_10250]:
                                        mem[_10250 + t + 196] = mem[_10250 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10250]) > mem[_10250]:
                                        mem[_10250 + mem[_10250] + 196] = 0
                                    require ext_code.size(address(_10186))
                                    call address(_10186).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10009, 0, address(cd[68]), 128, mem[_10250], mem[_10250 + 196 len ceil32(mem[_10250])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10378 = mem[_10346]
                                    require mem[_10346] == mem[_10346 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10634 = mem[_10602]
                                    require mem[_10602] == mem[_10602 + 12 len 20]
                                    _10666 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10666 + 36] = _10009
                                    mem[_10666 + 68] = 0
                                    mem[_10666 + 100] = address(_10378)
                                    mem[_10666 + 132] = 128
                                    mem[_10666 + 164] = mem[_10666]
                                    t = 0
                                    while t < mem[_10666]:
                                        mem[_10666 + t + 196] = mem[_10666 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10666]) > mem[_10666]:
                                        mem[_10666 + mem[_10666] + 196] = 0
                                    require ext_code.size(address(_10634))
                                    call address(_10634).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10009, 0, address(_10378), 128, mem[_10666], mem[_10666 + 196 len ceil32(mem[_10666])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ('cd', 36).length >= 1:
                    if var363002 >= ('cd', 36).length - 1:
                    if var365001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var365001) + cd[36] + 36)] == address(cd[((32 * var365001) + cd[36] + 36)])
                    s = var365001
                    idx = var365001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9912 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9912] = 3
                        mem[_9912 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9920 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9920 + idx + 68] = mem[_9912 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9920 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9920 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9929 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9929] = 3
                            mem[_9929 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9946 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9946 + idx + 68] = mem[_9929 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9946 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9946 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10011 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10155 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10187 = mem[_10155]
                                    require mem[_10155] == mem[_10155 + 12 len 20]
                                    _10251 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10251 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10251 + 36] = 0
                                    mem[_10251 + 68] = _10011
                                    mem[_10251 + 100] = address(cd[68])
                                    mem[_10251 + 132] = 128
                                    mem[_10251 + 164] = mem[_10251]
                                    t = 0
                                    while t < mem[_10251]:
                                        mem[_10251 + t + 196] = mem[_10251 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10251]) > mem[_10251]:
                                        mem[_10251 + mem[_10251] + 196] = 0
                                    require ext_code.size(address(_10187))
                                    call address(_10187).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10011, address(cd[68]), 128, mem[_10251], mem[_10251 + 196 len ceil32(mem[_10251])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10347 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10379 = mem[_10347]
                                    require mem[_10347] == mem[_10347 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10603 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10635 = mem[_10603]
                                    require mem[_10603] == mem[_10603 + 12 len 20]
                                    _10667 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10667 + 36] = 0
                                    mem[_10667 + 68] = _10011
                                    mem[_10667 + 100] = address(_10379)
                                    mem[_10667 + 132] = 128
                                    mem[_10667 + 164] = mem[_10667]
                                    t = 0
                                    while t < mem[_10667]:
                                        mem[_10667 + t + 196] = mem[_10667 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10667]) > mem[_10667]:
                                        mem[_10667 + mem[_10667] + 196] = 0
                                    require ext_code.size(address(_10635))
                                    call address(_10635).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10011, address(_10379), 128, mem[_10667], mem[_10667 + 196 len ceil32(mem[_10667])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10156 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10188 = mem[_10156]
                                    require mem[_10156] == mem[_10156 + 12 len 20]
                                    _10252 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10252 + 36] = _10011
                                    mem[_10252 + 68] = 0
                                    mem[_10252 + 100] = address(cd[68])
                                    mem[_10252 + 132] = 128
                                    mem[_10252 + 164] = mem[_10252]
                                    t = 0
                                    while t < mem[_10252]:
                                        mem[_10252 + t + 196] = mem[_10252 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10252]) > mem[_10252]:
                                        mem[_10252 + mem[_10252] + 196] = 0
                                    require ext_code.size(address(_10188))
                                    call address(_10188).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10011, 0, address(cd[68]), 128, mem[_10252], mem[_10252 + 196 len ceil32(mem[_10252])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10348 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10380 = mem[_10348]
                                    require mem[_10348] == mem[_10348 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10604 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10636 = mem[_10604]
                                    require mem[_10604] == mem[_10604 + 12 len 20]
                                    _10668 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10668 + 36] = _10011
                                    mem[_10668 + 68] = 0
                                    mem[_10668 + 100] = address(_10380)
                                    mem[_10668 + 132] = 128
                                    mem[_10668 + 164] = mem[_10668]
                                    t = 0
                                    while t < mem[_10668]:
                                        mem[_10668 + t + 196] = mem[_10668 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10668]) > mem[_10668]:
                                        mem[_10668 + mem[_10668] + 196] = 0
                                    require ext_code.size(address(_10636))
                                    call address(_10636).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10011, 0, address(_10380), 128, mem[_10668], mem[_10668 + 196 len ceil32(mem[_10668])]
                        else:
                            _9930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9930] = 3
                            mem[_9930 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9947 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9947 + idx + 68] = mem[_9930 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9947 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9947 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10013 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10157 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10189 = mem[_10157]
                                    require mem[_10157] == mem[_10157 + 12 len 20]
                                    _10253 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10253 + 36] = 0
                                    mem[_10253 + 68] = _10013
                                    mem[_10253 + 100] = address(cd[68])
                                    mem[_10253 + 132] = 128
                                    mem[_10253 + 164] = mem[_10253]
                                    t = 0
                                    while t < mem[_10253]:
                                        mem[_10253 + t + 196] = mem[_10253 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10253]) > mem[_10253]:
                                        mem[_10253 + mem[_10253] + 196] = 0
                                    require ext_code.size(address(_10189))
                                    call address(_10189).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10013, address(cd[68]), 128, mem[_10253], mem[_10253 + 196 len ceil32(mem[_10253])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10349 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10381 = mem[_10349]
                                    require mem[_10349] == mem[_10349 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10605 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10637 = mem[_10605]
                                    require mem[_10605] == mem[_10605 + 12 len 20]
                                    _10669 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10669 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10669 + 36] = 0
                                    mem[_10669 + 68] = _10013
                                    mem[_10669 + 100] = address(_10381)
                                    mem[_10669 + 132] = 128
                                    mem[_10669 + 164] = mem[_10669]
                                    t = 0
                                    while t < mem[_10669]:
                                        mem[_10669 + t + 196] = mem[_10669 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10669]) > mem[_10669]:
                                        mem[_10669 + mem[_10669] + 196] = 0
                                    require ext_code.size(address(_10637))
                                    call address(_10637).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10013, address(_10381), 128, mem[_10669], mem[_10669 + 196 len ceil32(mem[_10669])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10158 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10190 = mem[_10158]
                                    require mem[_10158] == mem[_10158 + 12 len 20]
                                    _10254 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10254 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10254 + 36] = _10013
                                    mem[_10254 + 68] = 0
                                    mem[_10254 + 100] = address(cd[68])
                                    mem[_10254 + 132] = 128
                                    mem[_10254 + 164] = mem[_10254]
                                    t = 0
                                    while t < mem[_10254]:
                                        mem[_10254 + t + 196] = mem[_10254 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10254]) > mem[_10254]:
                                        mem[_10254 + mem[_10254] + 196] = 0
                                    require ext_code.size(address(_10190))
                                    call address(_10190).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10013, 0, address(cd[68]), 128, mem[_10254], mem[_10254 + 196 len ceil32(mem[_10254])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10350 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10382 = mem[_10350]
                                    require mem[_10350] == mem[_10350 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10638 = mem[_10606]
                                    require mem[_10606] == mem[_10606 + 12 len 20]
                                    _10670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10670 + 36] = _10013
                                    mem[_10670 + 68] = 0
                                    mem[_10670 + 100] = address(_10382)
                                    mem[_10670 + 132] = 128
                                    mem[_10670 + 164] = mem[_10670]
                                    t = 0
                                    while t < mem[_10670]:
                                        mem[_10670 + t + 196] = mem[_10670 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10670]) > mem[_10670]:
                                        mem[_10670 + mem[_10670] + 196] = 0
                                    require ext_code.size(address(_10638))
                                    call address(_10638).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10013, 0, address(_10382), 128, mem[_10670], mem[_10670 + 196 len ceil32(mem[_10670])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
        else:
            mem[64] = _175 + ceil32(return_data.size) + 197
            mem[_175 + 196] = return_data.size
            mem[_175 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ('cd', 36).length >= 1:
                    if var351002 >= ('cd', 36).length - 1:
                    if var353001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var353001) + cd[36] + 36)] == address(cd[((32 * var353001) + cd[36] + 36)])
                    s = var353001
                    idx = var353001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9913] = 3
                        mem[_9913 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9921 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9921 + idx + 68] = mem[_9913 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9921 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9921 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9931 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9931] = 3
                            mem[_9931 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9949 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9949 + idx + 68] = mem[_9931 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9949 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9949 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10015 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10159 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10191 = mem[_10159]
                                    require mem[_10159] == mem[_10159 + 12 len 20]
                                    _10255 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10255 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10255 + 36] = 0
                                    mem[_10255 + 68] = _10015
                                    mem[_10255 + 100] = address(cd[68])
                                    mem[_10255 + 132] = 128
                                    mem[_10255 + 164] = mem[_10255]
                                    t = 0
                                    while t < mem[_10255]:
                                        mem[_10255 + t + 196] = mem[_10255 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10255]) > mem[_10255]:
                                        mem[_10255 + mem[_10255] + 196] = 0
                                    require ext_code.size(address(_10191))
                                    call address(_10191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10015, address(cd[68]), 128, mem[_10255], mem[_10255 + 196 len ceil32(mem[_10255])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10351 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10383 = mem[_10351]
                                    require mem[_10351] == mem[_10351 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10639 = mem[_10607]
                                    require mem[_10607] == mem[_10607 + 12 len 20]
                                    _10671 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10671 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10671 + 36] = 0
                                    mem[_10671 + 68] = _10015
                                    mem[_10671 + 100] = address(_10383)
                                    mem[_10671 + 132] = 128
                                    mem[_10671 + 164] = mem[_10671]
                                    t = 0
                                    while t < mem[_10671]:
                                        mem[_10671 + t + 196] = mem[_10671 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10671]) > mem[_10671]:
                                        mem[_10671 + mem[_10671] + 196] = 0
                                    require ext_code.size(address(_10639))
                                    call address(_10639).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10015, address(_10383), 128, mem[_10671], mem[_10671 + 196 len ceil32(mem[_10671])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10160 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10192 = mem[_10160]
                                    require mem[_10160] == mem[_10160 + 12 len 20]
                                    _10256 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10256 + 36] = _10015
                                    mem[_10256 + 68] = 0
                                    mem[_10256 + 100] = address(cd[68])
                                    mem[_10256 + 132] = 128
                                    mem[_10256 + 164] = mem[_10256]
                                    t = 0
                                    while t < mem[_10256]:
                                        mem[_10256 + t + 196] = mem[_10256 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10256]) > mem[_10256]:
                                        mem[_10256 + mem[_10256] + 196] = 0
                                    require ext_code.size(address(_10192))
                                    call address(_10192).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10015, 0, address(cd[68]), 128, mem[_10256], mem[_10256 + 196 len ceil32(mem[_10256])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10352 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10384 = mem[_10352]
                                    require mem[_10352] == mem[_10352 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10640 = mem[_10608]
                                    require mem[_10608] == mem[_10608 + 12 len 20]
                                    _10672 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10672 + 36] = _10015
                                    mem[_10672 + 68] = 0
                                    mem[_10672 + 100] = address(_10384)
                                    mem[_10672 + 132] = 128
                                    mem[_10672 + 164] = mem[_10672]
                                    t = 0
                                    while t < mem[_10672]:
                                        mem[_10672 + t + 196] = mem[_10672 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10672]) > mem[_10672]:
                                        mem[_10672 + mem[_10672] + 196] = 0
                                    require ext_code.size(address(_10640))
                                    call address(_10640).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10015, 0, address(_10384), 128, mem[_10672], mem[_10672 + 196 len ceil32(mem[_10672])]
                        else:
                            _9932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9932] = 3
                            mem[_9932 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9950 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9950 + idx + 68] = mem[_9932 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9950 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9950 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10017 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10193 = mem[_10161]
                                    require mem[_10161] == mem[_10161 + 12 len 20]
                                    _10257 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10257 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10257 + 36] = 0
                                    mem[_10257 + 68] = _10017
                                    mem[_10257 + 100] = address(cd[68])
                                    mem[_10257 + 132] = 128
                                    mem[_10257 + 164] = mem[_10257]
                                    t = 0
                                    while t < mem[_10257]:
                                        mem[_10257 + t + 196] = mem[_10257 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10257]) > mem[_10257]:
                                        mem[_10257 + mem[_10257] + 196] = 0
                                    require ext_code.size(address(_10193))
                                    call address(_10193).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10017, address(cd[68]), 128, mem[_10257], mem[_10257 + 196 len ceil32(mem[_10257])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10353 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10385 = mem[_10353]
                                    require mem[_10353] == mem[_10353 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10609 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10641 = mem[_10609]
                                    require mem[_10609] == mem[_10609 + 12 len 20]
                                    _10673 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10673 + 36] = 0
                                    mem[_10673 + 68] = _10017
                                    mem[_10673 + 100] = address(_10385)
                                    mem[_10673 + 132] = 128
                                    mem[_10673 + 164] = mem[_10673]
                                    t = 0
                                    while t < mem[_10673]:
                                        mem[_10673 + t + 196] = mem[_10673 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10673]) > mem[_10673]:
                                        mem[_10673 + mem[_10673] + 196] = 0
                                    require ext_code.size(address(_10641))
                                    call address(_10641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10017, address(_10385), 128, mem[_10673], mem[_10673 + 196 len ceil32(mem[_10673])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10162 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10194 = mem[_10162]
                                    require mem[_10162] == mem[_10162 + 12 len 20]
                                    _10258 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10258 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10258 + 36] = _10017
                                    mem[_10258 + 68] = 0
                                    mem[_10258 + 100] = address(cd[68])
                                    mem[_10258 + 132] = 128
                                    mem[_10258 + 164] = mem[_10258]
                                    t = 0
                                    while t < mem[_10258]:
                                        mem[_10258 + t + 196] = mem[_10258 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10258]) > mem[_10258]:
                                        mem[_10258 + mem[_10258] + 196] = 0
                                    require ext_code.size(address(_10194))
                                    call address(_10194).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10017, 0, address(cd[68]), 128, mem[_10258], mem[_10258 + 196 len ceil32(mem[_10258])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10386 = mem[_10354]
                                    require mem[_10354] == mem[_10354 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10610 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10642 = mem[_10610]
                                    require mem[_10610] == mem[_10610 + 12 len 20]
                                    _10674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10674 + 36] = _10017
                                    mem[_10674 + 68] = 0
                                    mem[_10674 + 100] = address(_10386)
                                    mem[_10674 + 132] = 128
                                    mem[_10674 + 164] = mem[_10674]
                                    t = 0
                                    while t < mem[_10674]:
                                        mem[_10674 + t + 196] = mem[_10674 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10674]) > mem[_10674]:
                                        mem[_10674 + mem[_10674] + 196] = 0
                                    require ext_code.size(address(_10642))
                                    call address(_10642).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10017, 0, address(_10386), 128, mem[_10674], mem[_10674 + 196 len ceil32(mem[_10674])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
            else:
                require return_data.size >= 32
                require mem[_175 + 228] == bool(mem[_175 + 228])
                if not mem[_175 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ('cd', 36).length >= 1:
                    if var363002 >= ('cd', 36).length - 1:
                    if var365001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var365001) + cd[36] + 36)] == address(cd[((32 * var365001) + cd[36] + 36)])
                    s = var365001
                    idx = var365001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9914 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9914] = 3
                        mem[_9914 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9922 + idx + 68] = mem[_9914 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9922 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9922 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9933] = 3
                            mem[_9933 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9952 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9952 + idx + 68] = mem[_9933 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9952 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9952 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10019 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10163 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10195 = mem[_10163]
                                    require mem[_10163] == mem[_10163 + 12 len 20]
                                    _10259 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10259 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10259 + 36] = 0
                                    mem[_10259 + 68] = _10019
                                    mem[_10259 + 100] = address(cd[68])
                                    mem[_10259 + 132] = 128
                                    mem[_10259 + 164] = mem[_10259]
                                    t = 0
                                    while t < mem[_10259]:
                                        mem[_10259 + t + 196] = mem[_10259 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10259]) > mem[_10259]:
                                        mem[_10259 + mem[_10259] + 196] = 0
                                    require ext_code.size(address(_10195))
                                    call address(_10195).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10019, address(cd[68]), 128, mem[_10259], mem[_10259 + 196 len ceil32(mem[_10259])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10387 = mem[_10355]
                                    require mem[_10355] == mem[_10355 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10611 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10643 = mem[_10611]
                                    require mem[_10611] == mem[_10611 + 12 len 20]
                                    _10675 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10675 + 36] = 0
                                    mem[_10675 + 68] = _10019
                                    mem[_10675 + 100] = address(_10387)
                                    mem[_10675 + 132] = 128
                                    mem[_10675 + 164] = mem[_10675]
                                    t = 0
                                    while t < mem[_10675]:
                                        mem[_10675 + t + 196] = mem[_10675 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10675]) > mem[_10675]:
                                        mem[_10675 + mem[_10675] + 196] = 0
                                    require ext_code.size(address(_10643))
                                    call address(_10643).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10019, address(_10387), 128, mem[_10675], mem[_10675 + 196 len ceil32(mem[_10675])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10164 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10196 = mem[_10164]
                                    require mem[_10164] == mem[_10164 + 12 len 20]
                                    _10260 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10260 + 36] = _10019
                                    mem[_10260 + 68] = 0
                                    mem[_10260 + 100] = address(cd[68])
                                    mem[_10260 + 132] = 128
                                    mem[_10260 + 164] = mem[_10260]
                                    t = 0
                                    while t < mem[_10260]:
                                        mem[_10260 + t + 196] = mem[_10260 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10260]) > mem[_10260]:
                                        mem[_10260 + mem[_10260] + 196] = 0
                                    require ext_code.size(address(_10196))
                                    call address(_10196).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10019, 0, address(cd[68]), 128, mem[_10260], mem[_10260 + 196 len ceil32(mem[_10260])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10356 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10388 = mem[_10356]
                                    require mem[_10356] == mem[_10356 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10612 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10644 = mem[_10612]
                                    require mem[_10612] == mem[_10612 + 12 len 20]
                                    _10676 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10676 + 36] = _10019
                                    mem[_10676 + 68] = 0
                                    mem[_10676 + 100] = address(_10388)
                                    mem[_10676 + 132] = 128
                                    mem[_10676 + 164] = mem[_10676]
                                    t = 0
                                    while t < mem[_10676]:
                                        mem[_10676 + t + 196] = mem[_10676 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10676]) > mem[_10676]:
                                        mem[_10676 + mem[_10676] + 196] = 0
                                    require ext_code.size(address(_10644))
                                    call address(_10644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10019, 0, address(_10388), 128, mem[_10676], mem[_10676 + 196 len ceil32(mem[_10676])]
                        else:
                            _9934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9934] = 3
                            mem[_9934 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9953 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9953 + idx + 68] = mem[_9934 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9953 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9953 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10021 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10165 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10197 = mem[_10165]
                                    require mem[_10165] == mem[_10165 + 12 len 20]
                                    _10261 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10261 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10261 + 36] = 0
                                    mem[_10261 + 68] = _10021
                                    mem[_10261 + 100] = address(cd[68])
                                    mem[_10261 + 132] = 128
                                    mem[_10261 + 164] = mem[_10261]
                                    t = 0
                                    while t < mem[_10261]:
                                        mem[_10261 + t + 196] = mem[_10261 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10261]) > mem[_10261]:
                                        mem[_10261 + mem[_10261] + 196] = 0
                                    require ext_code.size(address(_10197))
                                    call address(_10197).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10021, address(cd[68]), 128, mem[_10261], mem[_10261 + 196 len ceil32(mem[_10261])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10357 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10389 = mem[_10357]
                                    require mem[_10357] == mem[_10357 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10613 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10645 = mem[_10613]
                                    require mem[_10613] == mem[_10613 + 12 len 20]
                                    _10677 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10677 + 36] = 0
                                    mem[_10677 + 68] = _10021
                                    mem[_10677 + 100] = address(_10389)
                                    mem[_10677 + 132] = 128
                                    mem[_10677 + 164] = mem[_10677]
                                    t = 0
                                    while t < mem[_10677]:
                                        mem[_10677 + t + 196] = mem[_10677 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10677]) > mem[_10677]:
                                        mem[_10677 + mem[_10677] + 196] = 0
                                    require ext_code.size(address(_10645))
                                    call address(_10645).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10021, address(_10389), 128, mem[_10677], mem[_10677 + 196 len ceil32(mem[_10677])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10166 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10198 = mem[_10166]
                                    require mem[_10166] == mem[_10166 + 12 len 20]
                                    _10262 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10262 + 36] = _10021
                                    mem[_10262 + 68] = 0
                                    mem[_10262 + 100] = address(cd[68])
                                    mem[_10262 + 132] = 128
                                    mem[_10262 + 164] = mem[_10262]
                                    t = 0
                                    while t < mem[_10262]:
                                        mem[_10262 + t + 196] = mem[_10262 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10262]) > mem[_10262]:
                                        mem[_10262 + mem[_10262] + 196] = 0
                                    require ext_code.size(address(_10198))
                                    call address(_10198).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10021, 0, address(cd[68]), 128, mem[_10262], mem[_10262 + 196 len ceil32(mem[_10262])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10358 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10390 = mem[_10358]
                                    require mem[_10358] == mem[_10358 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10614 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10646 = mem[_10614]
                                    require mem[_10614] == mem[_10614 + 12 len 20]
                                    _10678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10678 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10678 + 36] = _10021
                                    mem[_10678 + 68] = 0
                                    mem[_10678 + 100] = address(_10390)
                                    mem[_10678 + 132] = 128
                                    mem[_10678 + 164] = mem[_10678]
                                    t = 0
                                    while t < mem[_10678]:
                                        mem[_10678 + t + 196] = mem[_10678 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10678]) > mem[_10678]:
                                        mem[_10678 + mem[_10678] + 196] = 0
                                    require ext_code.size(address(_10646))
                                    call address(_10646).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10021, 0, address(_10390), 128, mem[_10678], mem[_10678 + 196 len ceil32(mem[_10678])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
    else:
        mem[_175 + _182 + 196] = 0
        call address(('cd', 36)[0]) with:
             gas gas_remaining wei
            args mem[_175 + 200 len _182 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] <= 0:
                if ('cd', 36).length >= 1:
                    if var352002 >= ('cd', 36).length - 1:
                    if var354001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var354001) + cd[36] + 36)] == address(cd[((32 * var354001) + cd[36] + 36)])
                    s = var354001
                    idx = var354001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9915 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9915] = 3
                        mem[_9915 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9923 + idx + 68] = mem[_9915 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9923 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9923 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9935] = 3
                            mem[_9935 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9955 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9955 + idx + 68] = mem[_9935 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9955 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9955 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10023 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10167 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10199 = mem[_10167]
                                    require mem[_10167] == mem[_10167 + 12 len 20]
                                    _10263 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10263 + 36] = 0
                                    mem[_10263 + 68] = _10023
                                    mem[_10263 + 100] = address(cd[68])
                                    mem[_10263 + 132] = 128
                                    mem[_10263 + 164] = mem[_10263]
                                    t = 0
                                    while t < mem[_10263]:
                                        mem[_10263 + t + 196] = mem[_10263 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10263]) > mem[_10263]:
                                        mem[_10263 + mem[_10263] + 196] = 0
                                    require ext_code.size(address(_10199))
                                    call address(_10199).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10023, address(cd[68]), 128, mem[_10263], mem[_10263 + 196 len ceil32(mem[_10263])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10359 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10391 = mem[_10359]
                                    require mem[_10359] == mem[_10359 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10615 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10647 = mem[_10615]
                                    require mem[_10615] == mem[_10615 + 12 len 20]
                                    _10679 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10679 + 36] = 0
                                    mem[_10679 + 68] = _10023
                                    mem[_10679 + 100] = address(_10391)
                                    mem[_10679 + 132] = 128
                                    mem[_10679 + 164] = mem[_10679]
                                    t = 0
                                    while t < mem[_10679]:
                                        mem[_10679 + t + 196] = mem[_10679 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10679]) > mem[_10679]:
                                        mem[_10679 + mem[_10679] + 196] = 0
                                    require ext_code.size(address(_10647))
                                    call address(_10647).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10023, address(_10391), 128, mem[_10679], mem[_10679 + 196 len ceil32(mem[_10679])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10168 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10200 = mem[_10168]
                                    require mem[_10168] == mem[_10168 + 12 len 20]
                                    _10264 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10264 + 36] = _10023
                                    mem[_10264 + 68] = 0
                                    mem[_10264 + 100] = address(cd[68])
                                    mem[_10264 + 132] = 128
                                    mem[_10264 + 164] = mem[_10264]
                                    t = 0
                                    while t < mem[_10264]:
                                        mem[_10264 + t + 196] = mem[_10264 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10264]) > mem[_10264]:
                                        mem[_10264 + mem[_10264] + 196] = 0
                                    require ext_code.size(address(_10200))
                                    call address(_10200).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10023, 0, address(cd[68]), 128, mem[_10264], mem[_10264 + 196 len ceil32(mem[_10264])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10360 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10392 = mem[_10360]
                                    require mem[_10360] == mem[_10360 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10616 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10648 = mem[_10616]
                                    require mem[_10616] == mem[_10616 + 12 len 20]
                                    _10680 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10680 + 36] = _10023
                                    mem[_10680 + 68] = 0
                                    mem[_10680 + 100] = address(_10392)
                                    mem[_10680 + 132] = 128
                                    mem[_10680 + 164] = mem[_10680]
                                    t = 0
                                    while t < mem[_10680]:
                                        mem[_10680 + t + 196] = mem[_10680 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10680]) > mem[_10680]:
                                        mem[_10680 + mem[_10680] + 196] = 0
                                    require ext_code.size(address(_10648))
                                    call address(_10648).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10023, 0, address(_10392), 128, mem[_10680], mem[_10680 + 196 len ceil32(mem[_10680])]
                        else:
                            _9936 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9936] = 3
                            mem[_9936 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9956 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9956 + idx + 68] = mem[_9936 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9956 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9956 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10025 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10169 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10201 = mem[_10169]
                                    require mem[_10169] == mem[_10169 + 12 len 20]
                                    _10265 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10265 + 36] = 0
                                    mem[_10265 + 68] = _10025
                                    mem[_10265 + 100] = address(cd[68])
                                    mem[_10265 + 132] = 128
                                    mem[_10265 + 164] = mem[_10265]
                                    t = 0
                                    while t < mem[_10265]:
                                        mem[_10265 + t + 196] = mem[_10265 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10265]) > mem[_10265]:
                                        mem[_10265 + mem[_10265] + 196] = 0
                                    require ext_code.size(address(_10201))
                                    call address(_10201).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10025, address(cd[68]), 128, mem[_10265], mem[_10265 + 196 len ceil32(mem[_10265])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10361 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10393 = mem[_10361]
                                    require mem[_10361] == mem[_10361 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10649 = mem[_10617]
                                    require mem[_10617] == mem[_10617 + 12 len 20]
                                    _10681 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10681 + 36] = 0
                                    mem[_10681 + 68] = _10025
                                    mem[_10681 + 100] = address(_10393)
                                    mem[_10681 + 132] = 128
                                    mem[_10681 + 164] = mem[_10681]
                                    t = 0
                                    while t < mem[_10681]:
                                        mem[_10681 + t + 196] = mem[_10681 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10681]) > mem[_10681]:
                                        mem[_10681 + mem[_10681] + 196] = 0
                                    require ext_code.size(address(_10649))
                                    call address(_10649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10025, address(_10393), 128, mem[_10681], mem[_10681 + 196 len ceil32(mem[_10681])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10170 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10202 = mem[_10170]
                                    require mem[_10170] == mem[_10170 + 12 len 20]
                                    _10266 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10266 + 36] = _10025
                                    mem[_10266 + 68] = 0
                                    mem[_10266 + 100] = address(cd[68])
                                    mem[_10266 + 132] = 128
                                    mem[_10266 + 164] = mem[_10266]
                                    t = 0
                                    while t < mem[_10266]:
                                        mem[_10266 + t + 196] = mem[_10266 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10266]) > mem[_10266]:
                                        mem[_10266 + mem[_10266] + 196] = 0
                                    require ext_code.size(address(_10202))
                                    call address(_10202).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10025, 0, address(cd[68]), 128, mem[_10266], mem[_10266 + 196 len ceil32(mem[_10266])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10362 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10394 = mem[_10362]
                                    require mem[_10362] == mem[_10362 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10618 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10650 = mem[_10618]
                                    require mem[_10618] == mem[_10618 + 12 len 20]
                                    _10682 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10682 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10682 + 36] = _10025
                                    mem[_10682 + 68] = 0
                                    mem[_10682 + 100] = address(_10394)
                                    mem[_10682 + 132] = 128
                                    mem[_10682 + 164] = mem[_10682]
                                    t = 0
                                    while t < mem[_10682]:
                                        mem[_10682 + t + 196] = mem[_10682 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10682]) > mem[_10682]:
                                        mem[_10682 + mem[_10682] + 196] = 0
                                    require ext_code.size(address(_10650))
                                    call address(_10650).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10025, 0, address(_10394), 128, mem[_10682], mem[_10682 + 196 len ceil32(mem[_10682])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ('cd', 36).length >= 1:
                    if var364002 >= ('cd', 36).length - 1:
                    if var366001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var366001) + cd[36] + 36)] == address(cd[((32 * var366001) + cd[36] + 36)])
                    s = var366001
                    idx = var366001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9916 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9916] = 3
                        mem[_9916 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9924 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9924 + idx + 68] = mem[_9916 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9924 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9924 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9937] = 3
                            mem[_9937 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9958 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9958 + idx + 68] = mem[_9937 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9958 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9958 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10027 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10171 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10203 = mem[_10171]
                                    require mem[_10171] == mem[_10171 + 12 len 20]
                                    _10267 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10267 + 36] = 0
                                    mem[_10267 + 68] = _10027
                                    mem[_10267 + 100] = address(cd[68])
                                    mem[_10267 + 132] = 128
                                    mem[_10267 + 164] = mem[_10267]
                                    t = 0
                                    while t < mem[_10267]:
                                        mem[_10267 + t + 196] = mem[_10267 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10267]) > mem[_10267]:
                                        mem[_10267 + mem[_10267] + 196] = 0
                                    require ext_code.size(address(_10203))
                                    call address(_10203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10027, address(cd[68]), 128, mem[_10267], mem[_10267 + 196 len ceil32(mem[_10267])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10363 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10395 = mem[_10363]
                                    require mem[_10363] == mem[_10363 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10619 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10651 = mem[_10619]
                                    require mem[_10619] == mem[_10619 + 12 len 20]
                                    _10683 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10683 + 36] = 0
                                    mem[_10683 + 68] = _10027
                                    mem[_10683 + 100] = address(_10395)
                                    mem[_10683 + 132] = 128
                                    mem[_10683 + 164] = mem[_10683]
                                    t = 0
                                    while t < mem[_10683]:
                                        mem[_10683 + t + 196] = mem[_10683 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10683]) > mem[_10683]:
                                        mem[_10683 + mem[_10683] + 196] = 0
                                    require ext_code.size(address(_10651))
                                    call address(_10651).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10027, address(_10395), 128, mem[_10683], mem[_10683 + 196 len ceil32(mem[_10683])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10172 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10204 = mem[_10172]
                                    require mem[_10172] == mem[_10172 + 12 len 20]
                                    _10268 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10268 + 36] = _10027
                                    mem[_10268 + 68] = 0
                                    mem[_10268 + 100] = address(cd[68])
                                    mem[_10268 + 132] = 128
                                    mem[_10268 + 164] = mem[_10268]
                                    t = 0
                                    while t < mem[_10268]:
                                        mem[_10268 + t + 196] = mem[_10268 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10268]) > mem[_10268]:
                                        mem[_10268 + mem[_10268] + 196] = 0
                                    require ext_code.size(address(_10204))
                                    call address(_10204).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10027, 0, address(cd[68]), 128, mem[_10268], mem[_10268 + 196 len ceil32(mem[_10268])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10364 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10396 = mem[_10364]
                                    require mem[_10364] == mem[_10364 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10620 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10652 = mem[_10620]
                                    require mem[_10620] == mem[_10620 + 12 len 20]
                                    _10684 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10684 + 36] = _10027
                                    mem[_10684 + 68] = 0
                                    mem[_10684 + 100] = address(_10396)
                                    mem[_10684 + 132] = 128
                                    mem[_10684 + 164] = mem[_10684]
                                    t = 0
                                    while t < mem[_10684]:
                                        mem[_10684 + t + 196] = mem[_10684 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10684]) > mem[_10684]:
                                        mem[_10684 + mem[_10684] + 196] = 0
                                    require ext_code.size(address(_10652))
                                    call address(_10652).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10027, 0, address(_10396), 128, mem[_10684], mem[_10684 + 196 len ceil32(mem[_10684])]
                        else:
                            _9938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9938] = 3
                            mem[_9938 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9959 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9959 + idx + 68] = mem[_9938 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9959 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9959 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10029 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10173 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10205 = mem[_10173]
                                    require mem[_10173] == mem[_10173 + 12 len 20]
                                    _10269 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10269 + 36] = 0
                                    mem[_10269 + 68] = _10029
                                    mem[_10269 + 100] = address(cd[68])
                                    mem[_10269 + 132] = 128
                                    mem[_10269 + 164] = mem[_10269]
                                    t = 0
                                    while t < mem[_10269]:
                                        mem[_10269 + t + 196] = mem[_10269 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10269]) > mem[_10269]:
                                        mem[_10269 + mem[_10269] + 196] = 0
                                    require ext_code.size(address(_10205))
                                    call address(_10205).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10029, address(cd[68]), 128, mem[_10269], mem[_10269 + 196 len ceil32(mem[_10269])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10365 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10397 = mem[_10365]
                                    require mem[_10365] == mem[_10365 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10621 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10653 = mem[_10621]
                                    require mem[_10621] == mem[_10621 + 12 len 20]
                                    _10685 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10685 + 36] = 0
                                    mem[_10685 + 68] = _10029
                                    mem[_10685 + 100] = address(_10397)
                                    mem[_10685 + 132] = 128
                                    mem[_10685 + 164] = mem[_10685]
                                    t = 0
                                    while t < mem[_10685]:
                                        mem[_10685 + t + 196] = mem[_10685 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10685]) > mem[_10685]:
                                        mem[_10685 + mem[_10685] + 196] = 0
                                    require ext_code.size(address(_10653))
                                    call address(_10653).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10029, address(_10397), 128, mem[_10685], mem[_10685 + 196 len ceil32(mem[_10685])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10174 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10206 = mem[_10174]
                                    require mem[_10174] == mem[_10174 + 12 len 20]
                                    _10270 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10270 + 36] = _10029
                                    mem[_10270 + 68] = 0
                                    mem[_10270 + 100] = address(cd[68])
                                    mem[_10270 + 132] = 128
                                    mem[_10270 + 164] = mem[_10270]
                                    t = 0
                                    while t < mem[_10270]:
                                        mem[_10270 + t + 196] = mem[_10270 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10270]) > mem[_10270]:
                                        mem[_10270 + mem[_10270] + 196] = 0
                                    require ext_code.size(address(_10206))
                                    call address(_10206).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10029, 0, address(cd[68]), 128, mem[_10270], mem[_10270 + 196 len ceil32(mem[_10270])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10366 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10398 = mem[_10366]
                                    require mem[_10366] == mem[_10366 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10654 = mem[_10622]
                                    require mem[_10622] == mem[_10622 + 12 len 20]
                                    _10686 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10686 + 36] = _10029
                                    mem[_10686 + 68] = 0
                                    mem[_10686 + 100] = address(_10398)
                                    mem[_10686 + 132] = 128
                                    mem[_10686 + 164] = mem[_10686]
                                    t = 0
                                    while t < mem[_10686]:
                                        mem[_10686 + t + 196] = mem[_10686 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10686]) > mem[_10686]:
                                        mem[_10686 + mem[_10686] + 196] = 0
                                    require ext_code.size(address(_10654))
                                    call address(_10654).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10029, 0, address(_10398), 128, mem[_10686], mem[_10686 + 196 len ceil32(mem[_10686])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
        else:
            mem[64] = _175 + ceil32(return_data.size) + 197
            mem[_175 + 196] = return_data.size
            mem[_175 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ('cd', 36).length >= 1:
                    if var352002 >= ('cd', 36).length - 1:
                    if var354001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var354001) + cd[36] + 36)] == address(cd[((32 * var354001) + cd[36] + 36)])
                    s = var354001
                    idx = var354001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9917] = 3
                        mem[_9917 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9925 + idx + 68] = mem[_9917 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9925 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9925 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9939] = 3
                            mem[_9939 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9961 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9961 + idx + 68] = mem[_9939 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9961 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9961 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10031 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10175 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10207 = mem[_10175]
                                    require mem[_10175] == mem[_10175 + 12 len 20]
                                    _10271 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10271 + 36] = 0
                                    mem[_10271 + 68] = _10031
                                    mem[_10271 + 100] = address(cd[68])
                                    mem[_10271 + 132] = 128
                                    mem[_10271 + 164] = mem[_10271]
                                    t = 0
                                    while t < mem[_10271]:
                                        mem[_10271 + t + 196] = mem[_10271 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10271]) > mem[_10271]:
                                        mem[_10271 + mem[_10271] + 196] = 0
                                    require ext_code.size(address(_10207))
                                    call address(_10207).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10031, address(cd[68]), 128, mem[_10271], mem[_10271 + 196 len ceil32(mem[_10271])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10367 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10399 = mem[_10367]
                                    require mem[_10367] == mem[_10367 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10623 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10655 = mem[_10623]
                                    require mem[_10623] == mem[_10623 + 12 len 20]
                                    _10687 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10687 + 36] = 0
                                    mem[_10687 + 68] = _10031
                                    mem[_10687 + 100] = address(_10399)
                                    mem[_10687 + 132] = 128
                                    mem[_10687 + 164] = mem[_10687]
                                    t = 0
                                    while t < mem[_10687]:
                                        mem[_10687 + t + 196] = mem[_10687 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10687]) > mem[_10687]:
                                        mem[_10687 + mem[_10687] + 196] = 0
                                    require ext_code.size(address(_10655))
                                    call address(_10655).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10031, address(_10399), 128, mem[_10687], mem[_10687 + 196 len ceil32(mem[_10687])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10176 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10208 = mem[_10176]
                                    require mem[_10176] == mem[_10176 + 12 len 20]
                                    _10272 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10272 + 36] = _10031
                                    mem[_10272 + 68] = 0
                                    mem[_10272 + 100] = address(cd[68])
                                    mem[_10272 + 132] = 128
                                    mem[_10272 + 164] = mem[_10272]
                                    t = 0
                                    while t < mem[_10272]:
                                        mem[_10272 + t + 196] = mem[_10272 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10272]) > mem[_10272]:
                                        mem[_10272 + mem[_10272] + 196] = 0
                                    require ext_code.size(address(_10208))
                                    call address(_10208).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10031, 0, address(cd[68]), 128, mem[_10272], mem[_10272 + 196 len ceil32(mem[_10272])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10368 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10400 = mem[_10368]
                                    require mem[_10368] == mem[_10368 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10624 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10656 = mem[_10624]
                                    require mem[_10624] == mem[_10624 + 12 len 20]
                                    _10688 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10688 + 36] = _10031
                                    mem[_10688 + 68] = 0
                                    mem[_10688 + 100] = address(_10400)
                                    mem[_10688 + 132] = 128
                                    mem[_10688 + 164] = mem[_10688]
                                    t = 0
                                    while t < mem[_10688]:
                                        mem[_10688 + t + 196] = mem[_10688 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10688]) > mem[_10688]:
                                        mem[_10688 + mem[_10688] + 196] = 0
                                    require ext_code.size(address(_10656))
                                    call address(_10656).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10031, 0, address(_10400), 128, mem[_10688], mem[_10688 + 196 len ceil32(mem[_10688])]
                        else:
                            _9940 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9940] = 3
                            mem[_9940 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9962 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9962 + idx + 68] = mem[_9940 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9962 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9962 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10033 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10177 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10209 = mem[_10177]
                                    require mem[_10177] == mem[_10177 + 12 len 20]
                                    _10273 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10273 + 36] = 0
                                    mem[_10273 + 68] = _10033
                                    mem[_10273 + 100] = address(cd[68])
                                    mem[_10273 + 132] = 128
                                    mem[_10273 + 164] = mem[_10273]
                                    t = 0
                                    while t < mem[_10273]:
                                        mem[_10273 + t + 196] = mem[_10273 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10273]) > mem[_10273]:
                                        mem[_10273 + mem[_10273] + 196] = 0
                                    require ext_code.size(address(_10209))
                                    call address(_10209).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10033, address(cd[68]), 128, mem[_10273], mem[_10273 + 196 len ceil32(mem[_10273])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10369 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10401 = mem[_10369]
                                    require mem[_10369] == mem[_10369 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10625 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10657 = mem[_10625]
                                    require mem[_10625] == mem[_10625 + 12 len 20]
                                    _10689 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10689 + 36] = 0
                                    mem[_10689 + 68] = _10033
                                    mem[_10689 + 100] = address(_10401)
                                    mem[_10689 + 132] = 128
                                    mem[_10689 + 164] = mem[_10689]
                                    t = 0
                                    while t < mem[_10689]:
                                        mem[_10689 + t + 196] = mem[_10689 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10689]) > mem[_10689]:
                                        mem[_10689 + mem[_10689] + 196] = 0
                                    require ext_code.size(address(_10657))
                                    call address(_10657).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10033, address(_10401), 128, mem[_10689], mem[_10689 + 196 len ceil32(mem[_10689])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10178 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10210 = mem[_10178]
                                    require mem[_10178] == mem[_10178 + 12 len 20]
                                    _10274 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10274 + 36] = _10033
                                    mem[_10274 + 68] = 0
                                    mem[_10274 + 100] = address(cd[68])
                                    mem[_10274 + 132] = 128
                                    mem[_10274 + 164] = mem[_10274]
                                    t = 0
                                    while t < mem[_10274]:
                                        mem[_10274 + t + 196] = mem[_10274 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10274]) > mem[_10274]:
                                        mem[_10274 + mem[_10274] + 196] = 0
                                    require ext_code.size(address(_10210))
                                    call address(_10210).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10033, 0, address(cd[68]), 128, mem[_10274], mem[_10274 + 196 len ceil32(mem[_10274])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10370 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10402 = mem[_10370]
                                    require mem[_10370] == mem[_10370 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10626 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10658 = mem[_10626]
                                    require mem[_10626] == mem[_10626 + 12 len 20]
                                    _10690 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10690 + 36] = _10033
                                    mem[_10690 + 68] = 0
                                    mem[_10690 + 100] = address(_10402)
                                    mem[_10690 + 132] = 128
                                    mem[_10690 + 164] = mem[_10690]
                                    t = 0
                                    while t < mem[_10690]:
                                        mem[_10690 + t + 196] = mem[_10690 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10690]) > mem[_10690]:
                                        mem[_10690 + mem[_10690] + 196] = 0
                                    require ext_code.size(address(_10658))
                                    call address(_10658).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10033, 0, address(_10402), 128, mem[_10690], mem[_10690 + 196 len ceil32(mem[_10690])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
            else:
                require return_data.size >= 32
                require mem[_175 + 228] == bool(mem[_175 + 228])
                if not mem[_175 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ('cd', 36).length >= 1:
                    if var364002 >= ('cd', 36).length - 1:
                    if var366001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var366001) + cd[36] + 36)] == address(cd[((32 * var366001) + cd[36] + 36)])
                    s = var366001
                    idx = var366001
                    while idx <= -2:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        _9918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9918] = 3
                        mem[_9918 + 32] = 'x21'
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 3
                            idx = 0
                            while idx < 3:
                                mem[_9926 + idx + 68] = mem[_9918 + idx + 32]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 32
                                continue 
                            mem[_9926 + 71] = 0
                            revert with memory
                              from mem[64]
                               len _9926 + -mem[64] + 100
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            _9941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9941] = 3
                            mem[_9941 + 32] = 'x22'
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                _9964 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9964 + idx + 68] = mem[_9941 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9964 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9964 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10035 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10179 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10211 = mem[_10179]
                                    require mem[_10179] == mem[_10179 + 12 len 20]
                                    _10275 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10275 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10275 + 36] = 0
                                    mem[_10275 + 68] = _10035
                                    mem[_10275 + 100] = address(cd[68])
                                    mem[_10275 + 132] = 128
                                    mem[_10275 + 164] = mem[_10275]
                                    t = 0
                                    while t < mem[_10275]:
                                        mem[_10275 + t + 196] = mem[_10275 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10275]) > mem[_10275]:
                                        mem[_10275 + mem[_10275] + 196] = 0
                                    require ext_code.size(address(_10211))
                                    call address(_10211).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10035, address(cd[68]), 128, mem[_10275], mem[_10275 + 196 len ceil32(mem[_10275])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10403 = mem[_10371]
                                    require mem[_10371] == mem[_10371 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10627 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10659 = mem[_10627]
                                    require mem[_10627] == mem[_10627 + 12 len 20]
                                    _10691 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10691 + 36] = 0
                                    mem[_10691 + 68] = _10035
                                    mem[_10691 + 100] = address(_10403)
                                    mem[_10691 + 132] = 128
                                    mem[_10691 + 164] = mem[_10691]
                                    t = 0
                                    while t < mem[_10691]:
                                        mem[_10691 + t + 196] = mem[_10691 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10691]) > mem[_10691]:
                                        mem[_10691 + mem[_10691] + 196] = 0
                                    require ext_code.size(address(_10659))
                                    call address(_10659).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10035, address(_10403), 128, mem[_10691], mem[_10691 + 196 len ceil32(mem[_10691])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10180 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10212 = mem[_10180]
                                    require mem[_10180] == mem[_10180 + 12 len 20]
                                    _10276 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10276 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10276 + 36] = _10035
                                    mem[_10276 + 68] = 0
                                    mem[_10276 + 100] = address(cd[68])
                                    mem[_10276 + 132] = 128
                                    mem[_10276 + 164] = mem[_10276]
                                    t = 0
                                    while t < mem[_10276]:
                                        mem[_10276 + t + 196] = mem[_10276 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10276]) > mem[_10276]:
                                        mem[_10276 + mem[_10276] + 196] = 0
                                    require ext_code.size(address(_10212))
                                    call address(_10212).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10035, 0, address(cd[68]), 128, mem[_10276], mem[_10276 + 196 len ceil32(mem[_10276])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10372 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10404 = mem[_10372]
                                    require mem[_10372] == mem[_10372 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10628 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10660 = mem[_10628]
                                    require mem[_10628] == mem[_10628 + 12 len 20]
                                    _10692 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10692 + 36] = _10035
                                    mem[_10692 + 68] = 0
                                    mem[_10692 + 100] = address(_10404)
                                    mem[_10692 + 132] = 128
                                    mem[_10692 + 164] = mem[_10692]
                                    t = 0
                                    while t < mem[_10692]:
                                        mem[_10692 + t + 196] = mem[_10692 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10692]) > mem[_10692]:
                                        mem[_10692 + mem[_10692] + 196] = 0
                                    require ext_code.size(address(_10660))
                                    call address(_10660).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10035, 0, address(_10404), 128, mem[_10692], mem[_10692 + 196 len ceil32(mem[_10692])]
                        else:
                            _9942 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9942] = 3
                            mem[_9942 + 32] = 'x22'
                            if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                _9965 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 3
                                idx = 0
                                while idx < 3:
                                    mem[_9965 + idx + 68] = mem[_9942 + idx + 32]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 32
                                    continue 
                                mem[_9965 + 71] = 0
                                revert with memory
                                  from mem[64]
                                   len _9965 + -mem[64] + 100
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _10037 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if ('cd', 36).length < 2:
                                revert with 'NH{q', 17
                            if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10181 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10213 = mem[_10181]
                                    require mem[_10181] == mem[_10181 + 12 len 20]
                                    _10277 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10277 + 36] = 0
                                    mem[_10277 + 68] = _10037
                                    mem[_10277 + 100] = address(cd[68])
                                    mem[_10277 + 132] = 128
                                    mem[_10277 + 164] = mem[_10277]
                                    t = 0
                                    while t < mem[_10277]:
                                        mem[_10277 + t + 196] = mem[_10277 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10277]) > mem[_10277]:
                                        mem[_10277 + mem[_10277] + 196] = 0
                                    require ext_code.size(address(_10213))
                                    call address(_10213).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10037, address(cd[68]), 128, mem[_10277], mem[_10277 + 196 len ceil32(mem[_10277])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10373 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10405 = mem[_10373]
                                    require mem[_10373] == mem[_10373 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10629 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10661 = mem[_10629]
                                    require mem[_10629] == mem[_10629 + 12 len 20]
                                    _10693 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10693 + 36] = 0
                                    mem[_10693 + 68] = _10037
                                    mem[_10693 + 100] = address(_10405)
                                    mem[_10693 + 132] = 128
                                    mem[_10693 + 164] = mem[_10693]
                                    t = 0
                                    while t < mem[_10693]:
                                        mem[_10693 + t + 196] = mem[_10693 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10693]) > mem[_10693]:
                                        mem[_10693 + mem[_10693] + 196] = 0
                                    require ext_code.size(address(_10661))
                                    call address(_10661).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _10037, address(_10405), 128, mem[_10693], mem[_10693 + 196 len ceil32(mem[_10693])]
                            else:
                                if idx >= ('cd', 36).length - 2:
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10182 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10214 = mem[_10182]
                                    require mem[_10182] == mem[_10182 + 12 len 20]
                                    _10278 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10278 + 36] = _10037
                                    mem[_10278 + 68] = 0
                                    mem[_10278 + 100] = address(cd[68])
                                    mem[_10278 + 132] = 128
                                    mem[_10278 + 164] = mem[_10278]
                                    t = 0
                                    while t < mem[_10278]:
                                        mem[_10278 + t + 196] = mem[_10278 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10278]) > mem[_10278]:
                                        mem[_10278 + mem[_10278] + 196] = 0
                                    require ext_code.size(address(_10214))
                                    call address(_10214).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10037, 0, address(cd[68]), 128, mem[_10278], mem[_10278 + 196 len ceil32(mem[_10278])]
                                else:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * idx + 1) + cd[36] + 36)]), address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10374 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10406 = mem[_10374]
                                    require mem[_10374] == mem[_10374 + 12 len 20]
                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    staticcall address(cd[132]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(cd[((32 * s) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10630 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _10662 = mem[_10630]
                                    require mem[_10630] == mem[_10630 + 12 len 20]
                                    _10694 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10694 + 36] = _10037
                                    mem[_10694 + 68] = 0
                                    mem[_10694 + 100] = address(_10406)
                                    mem[_10694 + 132] = 128
                                    mem[_10694 + 164] = mem[_10694]
                                    t = 0
                                    while t < mem[_10694]:
                                        mem[_10694 + t + 196] = mem[_10694 + t + 32]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_10694]) > mem[_10694]:
                                        mem[_10694 + mem[_10694] + 196] = 0
                                    require ext_code.size(address(_10662))
                                    call address(_10662).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _10037, 0, address(_10406), 128, mem[_10694], mem[_10694 + 196 len ceil32(mem[_10694])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length - 1:
                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                        s = idx + 1
                        idx = idx + 1
                        continue 
    revert with 'NH{q', 17
}



}
