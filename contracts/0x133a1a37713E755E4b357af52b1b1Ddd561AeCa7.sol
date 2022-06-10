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
        require return_data.size >= 32
        _46 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _50 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require _46 + _50 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_50)] = mem[ceil32(return_data.size) + _46 + 128 len ceil32(_50)]
        if ceil32(_50) <= _50:
            mem[mem[64] + 32 len ceil32(_50)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_50)]
            if ceil32(_50) <= _50:
                _1267 = mem[64]
                mem[mem[64]] = _50
                mem[64] = _50 + mem[64] + 32
                if sha3(mem[_1267 + 32 len mem[_1267]]) == sha3(4473161):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_1267 + 32 len mem[_1267]]) == sha3(1431520323):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1267 + 32 len mem[_1267]]) == sha3(1431520340):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _50 + 32] = 0
                _1320 = mem[64]
                mem[mem[64]] = _50
                mem[64] = _50 + mem[64] + 32
                if sha3(mem[_1320 + 32 len mem[_1320]]) == sha3(4473161):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_1320 + 32 len mem[_1320]]) == sha3(1431520323):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1320 + 32 len mem[_1320]]) == sha3(1431520340):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
        else:
            mem[(2 * ceil32(return_data.size)) + _50 + 128] = 0
            mem[mem[64] + 32 len ceil32(_50)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_50)]
            if ceil32(_50) <= _50:
                _1271 = mem[64]
                mem[mem[64]] = _50
                mem[64] = _50 + mem[64] + 32
                if sha3(mem[_1271 + 32 len mem[_1271]]) == sha3(4473161):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_1271 + 32 len mem[_1271]]) == sha3(1431520323):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1271 + 32 len mem[_1271]]) == sha3(1431520340):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _50 + 32] = 0
                _1327 = mem[64]
                mem[mem[64]] = _50
                mem[64] = _50 + mem[64] + 32
                if sha3(mem[_1327 + 32 len mem[_1327]]) == sha3(4473161):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_1327 + 32 len mem[_1327]]) == sha3(1431520323):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1327 + 32 len mem[_1327]]) == sha3(1431520340):
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
            require return_data.size >= 32
            _48 = mem[ceil32(return_data.size) + 96]
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
            _52 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            require _48 + _52 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_52)] = mem[ceil32(return_data.size) + _48 + 128 len ceil32(_52)]
            if ceil32(_52) <= _52:
                mem[mem[64] + 32 len ceil32(_52)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_52)]
                if ceil32(_52) <= _52:
                    _1259 = mem[64]
                    mem[mem[64]] = _52
                    mem[64] = _52 + mem[64] + 32
                    if sha3(mem[_1259 + 32 len mem[_1259]]) == sha3(4473161):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1259 + 32 len mem[_1259]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1259 + 32 len mem[_1259]]) == sha3(1431520340):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _52 + 32] = 0
                    _1306 = mem[64]
                    mem[mem[64]] = _52
                    mem[64] = _52 + mem[64] + 32
                    if sha3(mem[_1306 + 32 len mem[_1306]]) == sha3(4473161):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1306 + 32 len mem[_1306]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1306 + 32 len mem[_1306]]) == sha3(1431520340):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
            else:
                mem[(2 * ceil32(return_data.size)) + _52 + 128] = 0
                mem[mem[64] + 32 len ceil32(_52)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_52)]
                if ceil32(_52) <= _52:
                    _1263 = mem[64]
                    mem[mem[64]] = _52
                    mem[64] = _52 + mem[64] + 32
                    if sha3(mem[_1263 + 32 len mem[_1263]]) == sha3(4473161):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1263 + 32 len mem[_1263]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1263 + 32 len mem[_1263]]) == sha3(1431520340):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _52 + 32] = 0
                    _1313 = mem[64]
                    mem[mem[64]] = _52
                    mem[64] = _52 + mem[64] + 32
                    if sha3(mem[_1313 + 32 len mem[_1313]]) == sha3(4473161):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_1313 + 32 len mem[_1313]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1313 + 32 len mem[_1313]]) == sha3(1431520340):
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
                require return_data.size >= 32
                _49 = mem[ceil32(return_data.size) + 96]
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                _54 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                require _49 + _54 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_54)] = mem[ceil32(return_data.size) + _49 + 128 len ceil32(_54)]
                if ceil32(_54) <= _54:
                    mem[mem[64] + 32 len ceil32(_54)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_54)]
                    if ceil32(_54) <= _54:
                        _1251 = mem[64]
                        mem[mem[64]] = _54
                        mem[64] = _54 + mem[64] + 32
                        if sha3(mem[_1251 + 32 len mem[_1251]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1251 + 32 len mem[_1251]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1251 + 32 len mem[_1251]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _54 + 32] = 0
                        _1292 = mem[64]
                        mem[mem[64]] = _54
                        mem[64] = _54 + mem[64] + 32
                        if sha3(mem[_1292 + 32 len mem[_1292]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1292 + 32 len mem[_1292]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1292 + 32 len mem[_1292]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                else:
                    mem[(2 * ceil32(return_data.size)) + _54 + 128] = 0
                    mem[mem[64] + 32 len ceil32(_54)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_54)]
                    if ceil32(_54) <= _54:
                        _1255 = mem[64]
                        mem[mem[64]] = _54
                        mem[64] = _54 + mem[64] + 32
                        if sha3(mem[_1255 + 32 len mem[_1255]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1255 + 32 len mem[_1255]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1255 + 32 len mem[_1255]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _54 + 32] = 0
                        _1299 = mem[64]
                        mem[mem[64]] = _54
                        mem[64] = _54 + mem[64] + 32
                        if sha3(mem[_1299 + 32 len mem[_1299]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1299 + 32 len mem[_1299]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1299 + 32 len mem[_1299]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
            else:
                if arg1 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    revert with 0, 'Asset not available'
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
                require return_data.size >= 32
                _51 = mem[ceil32(return_data.size) + 96]
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                _56 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                require _51 + _56 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_56)] = mem[ceil32(return_data.size) + _51 + 128 len ceil32(_56)]
                if ceil32(_56) <= _56:
                    mem[mem[64] + 32 len ceil32(_56)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_56)]
                    if ceil32(_56) <= _56:
                        _1243 = mem[64]
                        mem[mem[64]] = _56
                        mem[64] = _56 + mem[64] + 32
                        if sha3(mem[_1243 + 32 len mem[_1243]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1243 + 32 len mem[_1243]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1243 + 32 len mem[_1243]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _56 + 32] = 0
                        _1278 = mem[64]
                        mem[mem[64]] = _56
                        mem[64] = _56 + mem[64] + 32
                        if sha3(mem[_1278 + 32 len mem[_1278]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1278 + 32 len mem[_1278]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1278 + 32 len mem[_1278]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                else:
                    mem[(2 * ceil32(return_data.size)) + _56 + 128] = 0
                    mem[mem[64] + 32 len ceil32(_56)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_56)]
                    if ceil32(_56) <= _56:
                        _1247 = mem[64]
                        mem[mem[64]] = _56
                        mem[64] = _56 + mem[64] + 32
                        if sha3(mem[_1247 + 32 len mem[_1247]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1247 + 32 len mem[_1247]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1247 + 32 len mem[_1247]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _56 + 32] = 0
                        _1285 = mem[64]
                        mem[mem[64]] = _56
                        mem[64] = _56 + mem[64] + 32
                        if sha3(mem[_1285 + 32 len mem[_1285]]) == sha3(4473161):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_1285 + 32 len mem[_1285]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_1285 + 32 len mem[_1285]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
    return ext_call.return_data[32]
}



}
