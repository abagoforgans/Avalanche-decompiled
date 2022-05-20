contract main {




// =====================  Runtime code  =====================


#
#  - capture()
#
address stor0;
address stor1;
address pairAddress;
uint256 stor3;
uint256 reserve;

function pair() payable {
    return pairAddress
}

function reserve() payable {
    return reserve
}

function _fallback() payable {
    revert
}

function setDao(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        stor0 = arg1
    mem[128] = 0x4f7261636c650000000000000000000000000000000000000000000000000000
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _225 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _335 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _225 + idx + 258
                    mem[_225 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_225 + idx + 262] = 32
                    _351 = mem[_335]
                    mem[_225 + idx + 294] = mem[_335]
                    s = 0
                    while s < _351:
                        mem[s + _225 + idx + 326] = mem[s + _335 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_351) > _351:
                        mem[_351 + _225 + idx + 326] = 0
                    revert with 0, 32, mem[_225 + idx + 294 len ceil32(_351) + 32]
                mem[mem[160] + idx + 258] = 0
                _336 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _225 + idx + 258
                mem[_225 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_225 + idx + 262] = 32
                _352 = mem[_336]
                mem[_225 + idx + 294] = mem[_336]
                s = 0
                while s < _352:
                    mem[s + _225 + idx + 326] = mem[s + _336 + 32]
                    s = s + 32
                    continue 
                if ceil32(_352) > _352:
                    mem[_352 + _225 + idx + 326] = 0
                revert with 0, 32, mem[_225 + idx + 294 len ceil32(_352) + 32]
            _226 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _337 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _353 = mem[_337]
                mem[_226 + idx + 294] = mem[_337]
                s = 0
                while s < _353:
                    mem[s + _226 + idx + 326] = mem[s + _337 + 32]
                    s = s + 32
                    continue 
                if ceil32(_353) > _353:
                    mem[_353 + _226 + idx + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_353) + 32]
            mem[mem[160] + idx + 258] = 0
            _338 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _226 + idx + 258
            mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + idx + 262] = 32
            _354 = mem[_338]
            mem[_226 + idx + 294] = mem[_338]
            s = 0
            while s < _354:
                mem[s + _226 + idx + 326] = mem[s + _338 + 32]
                s = s + 32
                continue 
            if ceil32(_354) > _354:
                mem[_354 + _226 + idx + 326] = 0
            revert with 0, 32, mem[_226 + idx + 294 len ceil32(_354) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _223 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _331 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _223 + idx + 290
                mem[_223 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_223 + idx + 294] = 32
                _347 = mem[_331]
                mem[_223 + idx + 326] = mem[_331]
                s = 0
                while s < _347:
                    mem[s + _223 + idx + 358] = mem[s + _331 + 32]
                    s = s + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_347 + _223 + idx + 358] = 0
                revert with 0, 32, mem[_223 + idx + 326 len ceil32(_347) + 32]
            mem[mem[224] + idx + 290] = 0
            _332 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _223 + idx + 290
            mem[_223 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_223 + idx + 294] = 32
            _348 = mem[_332]
            mem[_223 + idx + 326] = mem[_332]
            s = 0
            while s < _348:
                mem[s + _223 + idx + 358] = mem[s + _332 + 32]
                s = s + 32
                continue 
            if ceil32(_348) > _348:
                mem[_348 + _223 + idx + 358] = 0
            revert with 0, 32, mem[_223 + idx + 326 len ceil32(_348) + 32]
        _224 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _333 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _224 + idx + 290
            mem[_224 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_224 + idx + 294] = 32
            _349 = mem[_333]
            mem[_224 + idx + 326] = mem[_333]
            s = 0
            while s < _349:
                mem[s + _224 + idx + 358] = mem[s + _333 + 32]
                s = s + 32
                continue 
            if ceil32(_349) > _349:
                mem[_349 + _224 + idx + 358] = 0
            revert with 0, 32, mem[_224 + idx + 326 len ceil32(_349) + 32]
        mem[mem[224] + idx + 290] = 0
        _334 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _224 + idx + 290
        mem[_224 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_224 + idx + 294] = 32
        _350 = mem[_334]
        mem[_224 + idx + 326] = mem[_334]
        s = 0
        while s < _350:
            mem[s + _224 + idx + 358] = mem[s + _334 + 32]
            s = s + 32
            continue 
        if ceil32(_350) > _350:
            mem[_350 + _224 + idx + 358] = 0
        revert with 0, 32, mem[_224 + idx + 326 len ceil32(_350) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function setup() payable {
    if stor0 != msg.sender:
        mem[128] = 0x4f7261636c650000000000000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 'Not dao' << 200
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _463 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _685 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _463 + idx + 258
                        mem[_463 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_463 + idx + 262] = 32
                        _717 = mem[_685]
                        mem[_463 + idx + 294] = mem[_685]
                        s = 0
                        while s < _717:
                            mem[s + _463 + idx + 326] = mem[s + _685 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_717) > _717:
                            mem[_717 + _463 + idx + 326] = 0
                        revert with 0, 32, mem[_463 + idx + 294 len ceil32(_717) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _686 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _463 + idx + 258
                    mem[_463 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_463 + idx + 262] = 32
                    _718 = mem[_686]
                    mem[_463 + idx + 294] = mem[_686]
                    s = 0
                    while s < _718:
                        mem[s + _463 + idx + 326] = mem[s + _686 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_718) > _718:
                        mem[_718 + _463 + idx + 326] = 0
                    revert with 0, 32, mem[_463 + idx + 294 len ceil32(_718) + 32]
                _464 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _687 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _464 + idx + 258
                    mem[_464 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_464 + idx + 262] = 32
                    _719 = mem[_687]
                    mem[_464 + idx + 294] = mem[_687]
                    s = 0
                    while s < _719:
                        mem[s + _464 + idx + 326] = mem[s + _687 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_719) > _719:
                        mem[_719 + _464 + idx + 326] = 0
                    revert with 0, 32, mem[_464 + idx + 294 len ceil32(_719) + 32]
                mem[mem[160] + idx + 258] = 0
                _688 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _464 + idx + 258
                mem[_464 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_464 + idx + 262] = 32
                _720 = mem[_688]
                mem[_464 + idx + 294] = mem[_688]
                s = 0
                while s < _720:
                    mem[s + _464 + idx + 326] = mem[s + _688 + 32]
                    s = s + 32
                    continue 
                if ceil32(_720) > _720:
                    mem[_720 + _464 + idx + 326] = 0
                revert with 0, 32, mem[_464 + idx + 294 len ceil32(_720) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _461 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _681 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _461 + idx + 290
                    mem[_461 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_461 + idx + 294] = 32
                    _713 = mem[_681]
                    mem[_461 + idx + 326] = mem[_681]
                    s = 0
                    while s < _713:
                        mem[s + _461 + idx + 358] = mem[s + _681 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_713) > _713:
                        mem[_713 + _461 + idx + 358] = 0
                    revert with 0, 32, mem[_461 + idx + 326 len ceil32(_713) + 32]
                mem[mem[224] + idx + 290] = 0
                _682 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _461 + idx + 290
                mem[_461 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_461 + idx + 294] = 32
                _714 = mem[_682]
                mem[_461 + idx + 326] = mem[_682]
                s = 0
                while s < _714:
                    mem[s + _461 + idx + 358] = mem[s + _682 + 32]
                    s = s + 32
                    continue 
                if ceil32(_714) > _714:
                    mem[_714 + _461 + idx + 358] = 0
                revert with 0, 32, mem[_461 + idx + 326 len ceil32(_714) + 32]
            _462 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _683 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _462 + idx + 290
                mem[_462 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_462 + idx + 294] = 32
                _715 = mem[_683]
                mem[_462 + idx + 326] = mem[_683]
                s = 0
                while s < _715:
                    mem[s + _462 + idx + 358] = mem[s + _683 + 32]
                    s = s + 32
                    continue 
                if ceil32(_715) > _715:
                    mem[_715 + _462 + idx + 358] = 0
                revert with 0, 32, mem[_462 + idx + 326 len ceil32(_715) + 32]
            mem[mem[224] + idx + 290] = 0
            _684 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _462 + idx + 290
            mem[_462 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_462 + idx + 294] = 32
            _716 = mem[_684]
            mem[_462 + idx + 326] = mem[_684]
            s = 0
            while s < _716:
                mem[s + _462 + idx + 358] = mem[s + _684 + 32]
                s = s + 32
                continue 
            if ceil32(_716) > _716:
                mem[_716 + _462 + idx + 358] = 0
            revert with 0, 32, mem[_462 + idx + 326 len ceil32(_716) + 32]
        mem[160] = 0
        mem[224] = 'Not dao' << 200
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    else:
        mem[100] = stor1
        mem[132] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        call 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor1, 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        pairAddress = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(pairAddress)
        staticcall pairAddress.token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor1 == address(ext_call.return_data[0]):
            stor3 = 0
        stor3 = 1
        if stor1 == ext_call.return_data[12 len 20]:
        mem[(4 * ceil32(return_data.size)) + 128] = 0x4f7261636c650000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 96] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 127]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 192] = 0x4e3d1f33ae835a0751470eef637b66e400000000000000000000000000000 * 3600
            mem[(4 * ceil32(return_data.size)) + 160] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 191]):
                    s = s - 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 160] = s
                t = 0
                while t < idx:
                    mem[t + (4 * ceil32(return_data.size)) + 256] = mem[t + (4 * ceil32(return_data.size)) + 128]
                    t = t + 32
                    continue 
                mem[idx + (4 * ceil32(return_data.size)) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + (4 * ceil32(return_data.size)) + 258] = mem[t + (4 * ceil32(return_data.size)) + 192]
                    t = t + 32
                    continue 
                mem[s + idx + (4 * ceil32(return_data.size)) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + (4 * ceil32(return_data.size)) + 262] = 32
                mem[s + idx + (4 * ceil32(return_data.size)) + 294] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + (4 * ceil32(return_data.size)) + 326] = mem[t + (4 * ceil32(return_data.size)) + 256]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 328] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 326 len floor32(s + idx + 33)]
            mem[(4 * ceil32(return_data.size)) + 224] = 0
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 288] = mem[s + (4 * ceil32(return_data.size)) + 128]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + (4 * ceil32(return_data.size)) + 290] = mem[s + (4 * ceil32(return_data.size)) + 256]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 294] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 358] = mem[s + (4 * ceil32(return_data.size)) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
        mem[(4 * ceil32(return_data.size)) + 224] = 0x4e3d1f33ae835a0751470eef637b66e400000000000000000000000000000 * 3600
        mem[(4 * ceil32(return_data.size)) + 192] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 223]):
                idx = idx - 1
                continue 
            mem[(4 * ceil32(return_data.size)) + 192] = idx
            s = 0
            while s < 0:
                mem[s + (4 * ceil32(return_data.size)) + 288] = mem[s + (4 * ceil32(return_data.size)) + 192]
                s = s + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + (4 * ceil32(return_data.size)) + 290] = mem[s + (4 * ceil32(return_data.size)) + 224]
                s = s + 32
                continue 
            mem[idx + (4 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (4 * ceil32(return_data.size)) + 294] = 32
            mem[idx + (4 * ceil32(return_data.size)) + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (4 * ceil32(return_data.size)) + 358] = mem[s + (4 * ceil32(return_data.size)) + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (4 * ceil32(return_data.size)) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}



}
