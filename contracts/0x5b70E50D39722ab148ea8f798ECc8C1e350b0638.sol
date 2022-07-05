contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function price(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 == arg1:
        require ext_code.size(0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300)
        staticcall 0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300.latestRoundData() with:
                gas gas_remaining wei
        mem[96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _67 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _74 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _74
        require _67 + _74 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_74)] = mem[ceil32(return_data.size) + _67 + 128 len ceil32(_74)]
        if ceil32(_74) <= _74:
            mem[mem[64] + 32 len ceil32(_74)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_74)]
            if ceil32(_74) <= _74:
                _3341 = mem[64]
                mem[mem[64]] = _74
                mem[64] = _74 + mem[64] + 32
                if sha3(mem[_3341 + 32 len mem[_3341]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_3341 + 32 len mem[_3341]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3341 + 32 len mem[_3341]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3341 + 32 len mem[_3341]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3341 + 32 len mem[_3341]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _74 + 32] = 0
                _3436 = mem[64]
                mem[mem[64]] = _74
                mem[64] = _74 + mem[64] + 32
                if sha3(mem[_3436 + 32 len mem[_3436]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_3436 + 32 len mem[_3436]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3436 + 32 len mem[_3436]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3436 + 32 len mem[_3436]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3436 + 32 len mem[_3436]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
        else:
            mem[(2 * ceil32(return_data.size)) + _74 + 128] = 0
            mem[mem[64] + 32 len ceil32(_74)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_74)]
            if ceil32(_74) <= _74:
                _3345 = mem[64]
                mem[mem[64]] = _74
                mem[64] = _74 + mem[64] + 32
                if sha3(mem[_3345 + 32 len mem[_3345]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_3345 + 32 len mem[_3345]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3345 + 32 len mem[_3345]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3345 + 32 len mem[_3345]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3345 + 32 len mem[_3345]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _74 + 32] = 0
                _3443 = mem[64]
                mem[mem[64]] = _74
                mem[64] = _74 + mem[64] + 32
                if sha3(mem[_3443 + 32 len mem[_3443]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_3443 + 32 len mem[_3443]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3443 + 32 len mem[_3443]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3443 + 32 len mem[_3443]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3443 + 32 len mem[_3443]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
    else:
        if 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == arg1:
            require ext_code.size(0xf096872672f44d6eba71458d74fe67f9a77a23b9)
            staticcall 0xf096872672f44d6eba71458d74fe67f9a77a23b9.latestRoundData() with:
                    gas gas_remaining wei
            mem[96 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _71 = mem[ceil32(return_data.size) + 96]
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
            _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = _80
            require _71 + _80 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)] = mem[ceil32(return_data.size) + _71 + 128 len ceil32(_80)]
            if ceil32(_80) <= _80:
                mem[mem[64] + 32 len ceil32(_80)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)]
                if ceil32(_80) <= _80:
                    _3293 = mem[64]
                    mem[mem[64]] = _80
                    mem[64] = _80 + mem[64] + 32
                    if sha3(mem[_3293 + 32 len mem[_3293]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3293 + 32 len mem[_3293]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3293 + 32 len mem[_3293]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3293 + 32 len mem[_3293]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3293 + 32 len mem[_3293]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _80 + 32] = 0
                    _3352 = mem[64]
                    mem[mem[64]] = _80
                    mem[64] = _80 + mem[64] + 32
                    if sha3(mem[_3352 + 32 len mem[_3352]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3352 + 32 len mem[_3352]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3352 + 32 len mem[_3352]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3352 + 32 len mem[_3352]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3352 + 32 len mem[_3352]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
            else:
                mem[(2 * ceil32(return_data.size)) + _80 + 128] = 0
                mem[mem[64] + 32 len ceil32(_80)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)]
                if ceil32(_80) <= _80:
                    _3297 = mem[64]
                    mem[mem[64]] = _80
                    mem[64] = _80 + mem[64] + 32
                    if sha3(mem[_3297 + 32 len mem[_3297]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3297 + 32 len mem[_3297]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3297 + 32 len mem[_3297]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3297 + 32 len mem[_3297]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3297 + 32 len mem[_3297]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _80 + 32] = 0
                    _3359 = mem[64]
                    mem[mem[64]] = _80
                    mem[64] = _80 + mem[64] + 32
                    if sha3(mem[_3359 + 32 len mem[_3359]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_3359 + 32 len mem[_3359]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3359 + 32 len mem[_3359]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3359 + 32 len mem[_3359]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3359 + 32 len mem[_3359]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
        else:
            if 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e == arg1:
                require ext_code.size(0xf096872672f44d6eba71458d74fe67f9a77a23b9)
                staticcall 0xf096872672f44d6eba71458d74fe67f9a77a23b9.latestRoundData() with:
                        gas gas_remaining wei
                mem[96 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                staticcall arg1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _78 = mem[ceil32(return_data.size) + 96]
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                _87 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = _87
                require _78 + _87 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_87)] = mem[ceil32(return_data.size) + _78 + 128 len ceil32(_87)]
                if ceil32(_87) <= _87:
                    mem[mem[64] + 32 len ceil32(_87)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_87)]
                    if ceil32(_87) <= _87:
                        _3333 = mem[64]
                        mem[mem[64]] = _87
                        mem[64] = _87 + mem[64] + 32
                        if sha3(mem[_3333 + 32 len mem[_3333]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3333 + 32 len mem[_3333]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3333 + 32 len mem[_3333]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3333 + 32 len mem[_3333]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3333 + 32 len mem[_3333]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _87 + 32] = 0
                        _3422 = mem[64]
                        mem[mem[64]] = _87
                        mem[64] = _87 + mem[64] + 32
                        if sha3(mem[_3422 + 32 len mem[_3422]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3422 + 32 len mem[_3422]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3422 + 32 len mem[_3422]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3422 + 32 len mem[_3422]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3422 + 32 len mem[_3422]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                else:
                    mem[(2 * ceil32(return_data.size)) + _87 + 128] = 0
                    mem[mem[64] + 32 len ceil32(_87)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_87)]
                    if ceil32(_87) <= _87:
                        _3337 = mem[64]
                        mem[mem[64]] = _87
                        mem[64] = _87 + mem[64] + 32
                        if sha3(mem[_3337 + 32 len mem[_3337]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3337 + 32 len mem[_3337]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3337 + 32 len mem[_3337]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3337 + 32 len mem[_3337]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3337 + 32 len mem[_3337]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _87 + 32] = 0
                        _3429 = mem[64]
                        mem[mem[64]] = _87
                        mem[64] = _87 + mem[64] + 32
                        if sha3(mem[_3429 + 32 len mem[_3429]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_3429 + 32 len mem[_3429]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3429 + 32 len mem[_3429]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3429 + 32 len mem[_3429]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3429 + 32 len mem[_3429]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
            else:
                if 0xc7198437980c041c805a1edcba50c1ce5db95118 == arg1:
                    require ext_code.size(0xebe676ee90fe1112671f19b6b7459bc678b67e8a)
                    staticcall 0xebe676ee90fe1112671f19b6b7459bc678b67e8a.latestRoundData() with:
                            gas gas_remaining wei
                    mem[96 len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(arg1)
                    staticcall arg1.0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _85 = mem[ceil32(return_data.size) + 96]
                    require mem[ceil32(return_data.size) + 96] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                    _91 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _91
                    require _85 + _91 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_91)] = mem[ceil32(return_data.size) + _85 + 128 len ceil32(_91)]
                    if ceil32(_91) <= _91:
                        mem[mem[64] + 32 len ceil32(_91)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_91)]
                        if ceil32(_91) <= _91:
                            _3301 = mem[64]
                            mem[mem[64]] = _91
                            mem[64] = _91 + mem[64] + 32
                            if sha3(mem[_3301 + 32 len mem[_3301]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3301 + 32 len mem[_3301]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3301 + 32 len mem[_3301]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3301 + 32 len mem[_3301]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3301 + 32 len mem[_3301]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                        else:
                            mem[mem[64] + _91 + 32] = 0
                            _3366 = mem[64]
                            mem[mem[64]] = _91
                            mem[64] = _91 + mem[64] + 32
                            if sha3(mem[_3366 + 32 len mem[_3366]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3366 + 32 len mem[_3366]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3366 + 32 len mem[_3366]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3366 + 32 len mem[_3366]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3366 + 32 len mem[_3366]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                    else:
                        mem[(2 * ceil32(return_data.size)) + _91 + 128] = 0
                        mem[mem[64] + 32 len ceil32(_91)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_91)]
                        if ceil32(_91) <= _91:
                            _3305 = mem[64]
                            mem[mem[64]] = _91
                            mem[64] = _91 + mem[64] + 32
                            if sha3(mem[_3305 + 32 len mem[_3305]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3305 + 32 len mem[_3305]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3305 + 32 len mem[_3305]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3305 + 32 len mem[_3305]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3305 + 32 len mem[_3305]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                        else:
                            mem[mem[64] + _91 + 32] = 0
                            _3373 = mem[64]
                            mem[mem[64]] = _91
                            mem[64] = _91 + mem[64] + 32
                            if sha3(mem[_3373 + 32 len mem[_3373]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_3373 + 32 len mem[_3373]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3373 + 32 len mem[_3373]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3373 + 32 len mem[_3373]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3373 + 32 len mem[_3373]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                else:
                    if 0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7 == arg1:
                        require ext_code.size(0xebe676ee90fe1112671f19b6b7459bc678b67e8a)
                        staticcall 0xebe676ee90fe1112671f19b6b7459bc678b67e8a.latestRoundData() with:
                                gas gas_remaining wei
                        mem[96 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(arg1)
                        staticcall arg1.0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _89 = mem[ceil32(return_data.size) + 96]
                        require mem[ceil32(return_data.size) + 96] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                        _95 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                        mem[(2 * ceil32(return_data.size)) + 96] = _95
                        require _89 + _95 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_95)] = mem[ceil32(return_data.size) + _89 + 128 len ceil32(_95)]
                        if ceil32(_95) <= _95:
                            mem[mem[64] + 32 len ceil32(_95)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_95)]
                            if ceil32(_95) <= _95:
                                _3325 = mem[64]
                                mem[mem[64]] = _95
                                mem[64] = _95 + mem[64] + 32
                                if sha3(mem[_3325 + 32 len mem[_3325]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3325 + 32 len mem[_3325]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3325 + 32 len mem[_3325]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3325 + 32 len mem[_3325]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3325 + 32 len mem[_3325]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _95 + 32] = 0
                                _3408 = mem[64]
                                mem[mem[64]] = _95
                                mem[64] = _95 + mem[64] + 32
                                if sha3(mem[_3408 + 32 len mem[_3408]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3408 + 32 len mem[_3408]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3408 + 32 len mem[_3408]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3408 + 32 len mem[_3408]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3408 + 32 len mem[_3408]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                        else:
                            mem[(2 * ceil32(return_data.size)) + _95 + 128] = 0
                            mem[mem[64] + 32 len ceil32(_95)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_95)]
                            if ceil32(_95) <= _95:
                                _3329 = mem[64]
                                mem[mem[64]] = _95
                                mem[64] = _95 + mem[64] + 32
                                if sha3(mem[_3329 + 32 len mem[_3329]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3329 + 32 len mem[_3329]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3329 + 32 len mem[_3329]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3329 + 32 len mem[_3329]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3329 + 32 len mem[_3329]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _95 + 32] = 0
                                _3415 = mem[64]
                                mem[mem[64]] = _95
                                mem[64] = _95 + mem[64] + 32
                                if sha3(mem[_3415 + 32 len mem[_3415]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_3415 + 32 len mem[_3415]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3415 + 32 len mem[_3415]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3415 + 32 len mem[_3415]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3415 + 32 len mem[_3415]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                    else:
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
                            require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
                            staticcall 0xa77230d17318075983913bc2145db16c7366156.latestRoundData() with:
                                    gas gas_remaining wei
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                            mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            staticcall arg1.0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _92 = mem[ceil32(return_data.size) + 96]
                            require mem[ceil32(return_data.size) + 96] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                            _97 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                            mem[(2 * ceil32(return_data.size)) + 96] = _97
                            require _92 + _97 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_97)] = mem[ceil32(return_data.size) + _92 + 128 len ceil32(_97)]
                            if ceil32(_97) <= _97:
                                mem[mem[64] + 32 len ceil32(_97)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_97)]
                                if ceil32(_97) <= _97:
                                    _3317 = mem[64]
                                    mem[mem[64]] = _97
                                    mem[64] = _97 + mem[64] + 32
                                    if sha3(mem[_3317 + 32 len mem[_3317]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3317 + 32 len mem[_3317]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3317 + 32 len mem[_3317]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3317 + 32 len mem[_3317]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3317 + 32 len mem[_3317]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                                else:
                                    mem[mem[64] + _97 + 32] = 0
                                    _3394 = mem[64]
                                    mem[mem[64]] = _97
                                    mem[64] = _97 + mem[64] + 32
                                    if sha3(mem[_3394 + 32 len mem[_3394]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3394 + 32 len mem[_3394]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3394 + 32 len mem[_3394]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3394 + 32 len mem[_3394]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3394 + 32 len mem[_3394]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                            else:
                                mem[(2 * ceil32(return_data.size)) + _97 + 128] = 0
                                mem[mem[64] + 32 len ceil32(_97)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_97)]
                                if ceil32(_97) <= _97:
                                    _3321 = mem[64]
                                    mem[mem[64]] = _97
                                    mem[64] = _97 + mem[64] + 32
                                    if sha3(mem[_3321 + 32 len mem[_3321]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3321 + 32 len mem[_3321]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3321 + 32 len mem[_3321]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3321 + 32 len mem[_3321]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3321 + 32 len mem[_3321]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                                else:
                                    mem[mem[64] + _97 + 32] = 0
                                    _3401 = mem[64]
                                    mem[mem[64]] = _97
                                    mem[64] = _97 + mem[64] + 32
                                    if sha3(mem[_3401 + 32 len mem[_3401]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3401 + 32 len mem[_3401]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3401 + 32 len mem[_3401]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3401 + 32 len mem[_3401]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3401 + 32 len mem[_3401]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                        else:
                            if arg1 != 0x2147efff675e4a4ee1c2f918d181cdbd7a8e208f:
                                revert with 0, 'Asset not available'
                            require ext_code.size(0x7b0ca9a6d03fe0467a31ca850f5bca51e027b3af)
                            staticcall 0x7b0ca9a6d03fe0467a31ca850f5bca51e027b3af.latestRoundData() with:
                                    gas gas_remaining wei
                            mem[96 len 160] = ext_call.return_data[0 len 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 160
                            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                            mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(arg1)
                            staticcall arg1.0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _94 = mem[ceil32(return_data.size) + 96]
                            require mem[ceil32(return_data.size) + 96] <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                            _100 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                            mem[(2 * ceil32(return_data.size)) + 96] = _100
                            require _94 + _100 + 32 <= return_data.size
                            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_100)] = mem[ceil32(return_data.size) + _94 + 128 len ceil32(_100)]
                            if ceil32(_100) <= _100:
                                mem[mem[64] + 32 len ceil32(_100)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_100)]
                                if ceil32(_100) <= _100:
                                    _3309 = mem[64]
                                    mem[mem[64]] = _100
                                    mem[64] = _100 + mem[64] + 32
                                    if sha3(mem[_3309 + 32 len mem[_3309]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3309 + 32 len mem[_3309]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3309 + 32 len mem[_3309]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3309 + 32 len mem[_3309]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3309 + 32 len mem[_3309]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                                else:
                                    mem[mem[64] + _100 + 32] = 0
                                    _3380 = mem[64]
                                    mem[mem[64]] = _100
                                    mem[64] = _100 + mem[64] + 32
                                    if sha3(mem[_3380 + 32 len mem[_3380]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3380 + 32 len mem[_3380]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3380 + 32 len mem[_3380]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3380 + 32 len mem[_3380]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3380 + 32 len mem[_3380]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                            else:
                                mem[(2 * ceil32(return_data.size)) + _100 + 128] = 0
                                mem[mem[64] + 32 len ceil32(_100)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_100)]
                                if ceil32(_100) <= _100:
                                    _3313 = mem[64]
                                    mem[mem[64]] = _100
                                    mem[64] = _100 + mem[64] + 32
                                    if sha3(mem[_3313 + 32 len mem[_3313]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3313 + 32 len mem[_3313]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3313 + 32 len mem[_3313]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3313 + 32 len mem[_3313]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3313 + 32 len mem[_3313]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
                                else:
                                    mem[mem[64] + _100 + 32] = 0
                                    _3387 = mem[64]
                                    mem[mem[64]] = _100
                                    mem[64] = _100 + mem[64] + 32
                                    if sha3(mem[_3387 + 32 len mem[_3387]]) == sha3(293153091173):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_3387 + 32 len mem[_3387]]) == sha3(93816115900005):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_3387 + 32 len mem[_3387]]) == sha3(1431520323):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_3387 + 32 len mem[_3387]]) == sha3(93816117014117):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                                                else:
                                                    if sha3(mem[_3387 + 32 len mem[_3387]]) == sha3(1431520340):
                                                        if ext_call.return_data[32] > 130 * 10^6:
                                                            revert with 0, 'Oracle: Price exceeds max'
                                                        if ext_call.return_data[32] < 70 * 10^6:
                                                            revert with 0, 'Oracle: Price under min'
    return ext_call.return_data[32]
}



}
