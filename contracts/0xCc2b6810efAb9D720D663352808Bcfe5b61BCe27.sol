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
        _59 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _66 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = _66
        require _59 + _66 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_66)] = mem[ceil32(return_data.size) + _59 + 128 len ceil32(_66)]
        if ceil32(_66) <= _66:
            _1460 = mem[64]
            mem[mem[64] + 32 len ceil32(_66)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_66)]
            if ceil32(_66) <= _66:
                _2863 = mem[64]
                mem[mem[64]] = _66
                mem[64] = _66 + mem[64] + 32
                if sha3(mem[_2863 + 32 len mem[_2863]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_2863 + 32 len mem[_2863]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2863 + 32 len mem[_2863]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2863 + 32 len mem[_2863]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2863 + 32 len mem[_2863]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _66 + 32] = 0
                _2944 = mem[64]
                mem[mem[64]] = _66 + _1460 - mem[64]
                mem[64] = _66 + _1460 + 32
                if sha3(mem[_2944 + 32 len mem[_2944]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_2944 + 32 len mem[_2944]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2944 + 32 len mem[_2944]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2944 + 32 len mem[_2944]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2944 + 32 len mem[_2944]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
        else:
            mem[(2 * ceil32(return_data.size)) + _66 + 128] = 0
            _1472 = mem[64]
            mem[mem[64] + 32 len ceil32(_66)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_66)]
            if ceil32(_66) <= _66:
                _2867 = mem[64]
                mem[mem[64]] = _66
                mem[64] = _66 + mem[64] + 32
                if sha3(mem[_2867 + 32 len mem[_2867]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_2867 + 32 len mem[_2867]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2867 + 32 len mem[_2867]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2867 + 32 len mem[_2867]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2867 + 32 len mem[_2867]]) == sha3(1431520340):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
            else:
                mem[mem[64] + _66 + 32] = 0
                _2951 = mem[64]
                mem[mem[64]] = _66 + _1472 - mem[64]
                mem[64] = _66 + _1472 + 32
                if sha3(mem[_2951 + 32 len mem[_2951]]) == sha3(293153091173):
                    if ext_call.return_data[32] > 130 * 10^6:
                        revert with 0, 'Oracle: Price exceeds max'
                    if ext_call.return_data[32] < 70 * 10^6:
                        revert with 0, 'Oracle: Price under min'
                else:
                    if sha3(mem[_2951 + 32 len mem[_2951]]) == sha3(93816115900005):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2951 + 32 len mem[_2951]]) == sha3(1431520323):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2951 + 32 len mem[_2951]]) == sha3(93816117014117):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2951 + 32 len mem[_2951]]) == sha3(1431520340):
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
            _63 = mem[ceil32(return_data.size) + 96]
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
            _72 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = _72
            require _63 + _72 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_72)] = mem[ceil32(return_data.size) + _63 + 128 len ceil32(_72)]
            if ceil32(_72) <= _72:
                mem[mem[64] + 32 len ceil32(_72)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_72)]
                if ceil32(_72) <= _72:
                    _2823 = mem[64]
                    mem[mem[64]] = _72
                    mem[64] = _72 + mem[64] + 32
                    if sha3(mem[_2823 + 32 len mem[_2823]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2823 + 32 len mem[_2823]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2823 + 32 len mem[_2823]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2823 + 32 len mem[_2823]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2823 + 32 len mem[_2823]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _72 + 32] = 0
                    _2874 = mem[64]
                    mem[mem[64]] = _72
                    mem[64] = _72 + mem[64] + 32
                    if sha3(mem[_2874 + 32 len mem[_2874]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2874 + 32 len mem[_2874]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2874 + 32 len mem[_2874]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2874 + 32 len mem[_2874]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2874 + 32 len mem[_2874]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
            else:
                mem[(2 * ceil32(return_data.size)) + _72 + 128] = 0
                mem[mem[64] + 32 len ceil32(_72)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_72)]
                if ceil32(_72) <= _72:
                    _2827 = mem[64]
                    mem[mem[64]] = _72
                    mem[64] = _72 + mem[64] + 32
                    if sha3(mem[_2827 + 32 len mem[_2827]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2827 + 32 len mem[_2827]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2827 + 32 len mem[_2827]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2827 + 32 len mem[_2827]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2827 + 32 len mem[_2827]]) == sha3(1431520340):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                else:
                    mem[mem[64] + _72 + 32] = 0
                    _2881 = mem[64]
                    mem[mem[64]] = _72
                    mem[64] = _72 + mem[64] + 32
                    if sha3(mem[_2881 + 32 len mem[_2881]]) == sha3(293153091173):
                        if ext_call.return_data[32] > 130 * 10^6:
                            revert with 0, 'Oracle: Price exceeds max'
                        if ext_call.return_data[32] < 70 * 10^6:
                            revert with 0, 'Oracle: Price under min'
                    else:
                        if sha3(mem[_2881 + 32 len mem[_2881]]) == sha3(93816115900005):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2881 + 32 len mem[_2881]]) == sha3(1431520323):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2881 + 32 len mem[_2881]]) == sha3(93816117014117):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2881 + 32 len mem[_2881]]) == sha3(1431520340):
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
                _70 = mem[ceil32(return_data.size) + 96]
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                _77 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                mem[(2 * ceil32(return_data.size)) + 96] = _77
                require _70 + _77 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_77)] = mem[ceil32(return_data.size) + _70 + 128 len ceil32(_77)]
                if ceil32(_77) <= _77:
                    _1459 = mem[64]
                    mem[mem[64] + 32 len ceil32(_77)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_77)]
                    if ceil32(_77) <= _77:
                        _2855 = mem[64]
                        mem[mem[64]] = _77
                        mem[64] = _77 + mem[64] + 32
                        if sha3(mem[_2855 + 32 len mem[_2855]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2855 + 32 len mem[_2855]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2855 + 32 len mem[_2855]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2855 + 32 len mem[_2855]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2855 + 32 len mem[_2855]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _77 + 32] = 0
                        _2930 = mem[64]
                        mem[mem[64]] = _77 + _1459 - mem[64]
                        mem[64] = _77 + _1459 + 32
                        if sha3(mem[_2930 + 32 len mem[_2930]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2930 + 32 len mem[_2930]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2930 + 32 len mem[_2930]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2930 + 32 len mem[_2930]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2930 + 32 len mem[_2930]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                else:
                    mem[(2 * ceil32(return_data.size)) + _77 + 128] = 0
                    _1470 = mem[64]
                    mem[mem[64] + 32 len ceil32(_77)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_77)]
                    if ceil32(_77) <= _77:
                        _2859 = mem[64]
                        mem[mem[64]] = _77
                        mem[64] = _77 + mem[64] + 32
                        if sha3(mem[_2859 + 32 len mem[_2859]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2859 + 32 len mem[_2859]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2859 + 32 len mem[_2859]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2859 + 32 len mem[_2859]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2859 + 32 len mem[_2859]]) == sha3(1431520340):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                    else:
                        mem[mem[64] + _77 + 32] = 0
                        _2937 = mem[64]
                        mem[mem[64]] = _77 + _1470 - mem[64]
                        mem[64] = _77 + _1470 + 32
                        if sha3(mem[_2937 + 32 len mem[_2937]]) == sha3(293153091173):
                            if ext_call.return_data[32] > 130 * 10^6:
                                revert with 0, 'Oracle: Price exceeds max'
                            if ext_call.return_data[32] < 70 * 10^6:
                                revert with 0, 'Oracle: Price under min'
                        else:
                            if sha3(mem[_2937 + 32 len mem[_2937]]) == sha3(93816115900005):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2937 + 32 len mem[_2937]]) == sha3(1431520323):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2937 + 32 len mem[_2937]]) == sha3(93816117014117):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2937 + 32 len mem[_2937]]) == sha3(1431520340):
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
                    _75 = mem[ceil32(return_data.size) + 96]
                    require mem[ceil32(return_data.size) + 96] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                    _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = _80
                    require _75 + _80 + 32 <= return_data.size
                    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)] = mem[ceil32(return_data.size) + _75 + 128 len ceil32(_80)]
                    if ceil32(_80) <= _80:
                        _1456 = mem[64]
                        mem[mem[64] + 32 len ceil32(_80)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)]
                        if ceil32(_80) <= _80:
                            _2831 = mem[64]
                            mem[mem[64]] = _80
                            mem[64] = _80 + mem[64] + 32
                            if sha3(mem[_2831 + 32 len mem[_2831]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2831 + 32 len mem[_2831]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2831 + 32 len mem[_2831]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2831 + 32 len mem[_2831]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2831 + 32 len mem[_2831]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                        else:
                            mem[mem[64] + _80 + 32] = 0
                            _2888 = mem[64]
                            mem[mem[64]] = _80 + _1456 - mem[64]
                            mem[64] = _80 + _1456 + 32
                            if sha3(mem[_2888 + 32 len mem[_2888]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2888 + 32 len mem[_2888]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2888 + 32 len mem[_2888]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2888 + 32 len mem[_2888]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2888 + 32 len mem[_2888]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                    else:
                        mem[(2 * ceil32(return_data.size)) + _80 + 128] = 0
                        _1464 = mem[64]
                        mem[mem[64] + 32 len ceil32(_80)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_80)]
                        if ceil32(_80) <= _80:
                            _2835 = mem[64]
                            mem[mem[64]] = _80
                            mem[64] = _80 + mem[64] + 32
                            if sha3(mem[_2835 + 32 len mem[_2835]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2835 + 32 len mem[_2835]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2835 + 32 len mem[_2835]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2835 + 32 len mem[_2835]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2835 + 32 len mem[_2835]]) == sha3(1431520340):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                        else:
                            mem[mem[64] + _80 + 32] = 0
                            _2895 = mem[64]
                            mem[mem[64]] = _80 + _1464 - mem[64]
                            mem[64] = _80 + _1464 + 32
                            if sha3(mem[_2895 + 32 len mem[_2895]]) == sha3(293153091173):
                                if ext_call.return_data[32] > 130 * 10^6:
                                    revert with 0, 'Oracle: Price exceeds max'
                                if ext_call.return_data[32] < 70 * 10^6:
                                    revert with 0, 'Oracle: Price under min'
                            else:
                                if sha3(mem[_2895 + 32 len mem[_2895]]) == sha3(93816115900005):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2895 + 32 len mem[_2895]]) == sha3(1431520323):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2895 + 32 len mem[_2895]]) == sha3(93816117014117):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2895 + 32 len mem[_2895]]) == sha3(1431520340):
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
                        _78 = mem[ceil32(return_data.size) + 96]
                        require mem[ceil32(return_data.size) + 96] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                        _83 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                        mem[(2 * ceil32(return_data.size)) + 96] = _83
                        require _78 + _83 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_83)] = mem[ceil32(return_data.size) + _78 + 128 len ceil32(_83)]
                        if ceil32(_83) <= _83:
                            mem[mem[64] + 32 len ceil32(_83)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_83)]
                            if ceil32(_83) <= _83:
                                _2847 = mem[64]
                                mem[mem[64]] = _83
                                mem[64] = _83 + mem[64] + 32
                                if sha3(mem[_2847 + 32 len mem[_2847]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2847 + 32 len mem[_2847]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2847 + 32 len mem[_2847]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2847 + 32 len mem[_2847]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2847 + 32 len mem[_2847]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _83 + 32] = 0
                                _2916 = mem[64]
                                mem[mem[64]] = _83
                                mem[64] = _83 + mem[64] + 32
                                if sha3(mem[_2916 + 32 len mem[_2916]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2916 + 32 len mem[_2916]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2916 + 32 len mem[_2916]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2916 + 32 len mem[_2916]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2916 + 32 len mem[_2916]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                        else:
                            mem[(2 * ceil32(return_data.size)) + _83 + 128] = 0
                            mem[mem[64] + 32 len ceil32(_83)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_83)]
                            if ceil32(_83) <= _83:
                                _2851 = mem[64]
                                mem[mem[64]] = _83
                                mem[64] = _83 + mem[64] + 32
                                if sha3(mem[_2851 + 32 len mem[_2851]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2851 + 32 len mem[_2851]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2851 + 32 len mem[_2851]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2851 + 32 len mem[_2851]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2851 + 32 len mem[_2851]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _83 + 32] = 0
                                _2923 = mem[64]
                                mem[mem[64]] = _83
                                mem[64] = _83 + mem[64] + 32
                                if sha3(mem[_2923 + 32 len mem[_2923]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2923 + 32 len mem[_2923]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2923 + 32 len mem[_2923]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2923 + 32 len mem[_2923]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2923 + 32 len mem[_2923]]) == sha3(1431520340):
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
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _81 = mem[ceil32(return_data.size) + 96]
                        require mem[ceil32(return_data.size) + 96] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
                        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
                        mem[(2 * ceil32(return_data.size)) + 96] = _85
                        require _81 + _85 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_85)] = mem[ceil32(return_data.size) + _81 + 128 len ceil32(_85)]
                        if ceil32(_85) <= _85:
                            _1457 = mem[64]
                            mem[mem[64] + 32 len ceil32(_85)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_85)]
                            if ceil32(_85) <= _85:
                                _2839 = mem[64]
                                mem[mem[64]] = _85
                                mem[64] = _85 + mem[64] + 32
                                if sha3(mem[_2839 + 32 len mem[_2839]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2839 + 32 len mem[_2839]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2839 + 32 len mem[_2839]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2839 + 32 len mem[_2839]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2839 + 32 len mem[_2839]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _85 + 32] = 0
                                _2902 = mem[64]
                                mem[mem[64]] = _85 + _1457 - mem[64]
                                mem[64] = _85 + _1457 + 32
                                if sha3(mem[_2902 + 32 len mem[_2902]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2902 + 32 len mem[_2902]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2902 + 32 len mem[_2902]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2902 + 32 len mem[_2902]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2902 + 32 len mem[_2902]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                        else:
                            mem[(2 * ceil32(return_data.size)) + _85 + 128] = 0
                            _1466 = mem[64]
                            mem[mem[64] + 32 len ceil32(_85)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_85)]
                            if ceil32(_85) <= _85:
                                _2843 = mem[64]
                                mem[mem[64]] = _85
                                mem[64] = _85 + mem[64] + 32
                                if sha3(mem[_2843 + 32 len mem[_2843]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2843 + 32 len mem[_2843]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2843 + 32 len mem[_2843]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2843 + 32 len mem[_2843]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2843 + 32 len mem[_2843]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
                            else:
                                mem[mem[64] + _85 + 32] = 0
                                _2909 = mem[64]
                                mem[mem[64]] = _85 + _1466 - mem[64]
                                mem[64] = _85 + _1466 + 32
                                if sha3(mem[_2909 + 32 len mem[_2909]]) == sha3(293153091173):
                                    if ext_call.return_data[32] > 130 * 10^6:
                                        revert with 0, 'Oracle: Price exceeds max'
                                    if ext_call.return_data[32] < 70 * 10^6:
                                        revert with 0, 'Oracle: Price under min'
                                else:
                                    if sha3(mem[_2909 + 32 len mem[_2909]]) == sha3(93816115900005):
                                        if ext_call.return_data[32] > 130 * 10^6:
                                            revert with 0, 'Oracle: Price exceeds max'
                                        if ext_call.return_data[32] < 70 * 10^6:
                                            revert with 0, 'Oracle: Price under min'
                                    else:
                                        if sha3(mem[_2909 + 32 len mem[_2909]]) == sha3(1431520323):
                                            if ext_call.return_data[32] > 130 * 10^6:
                                                revert with 0, 'Oracle: Price exceeds max'
                                            if ext_call.return_data[32] < 70 * 10^6:
                                                revert with 0, 'Oracle: Price under min'
                                        else:
                                            if sha3(mem[_2909 + 32 len mem[_2909]]) == sha3(93816117014117):
                                                if ext_call.return_data[32] > 130 * 10^6:
                                                    revert with 0, 'Oracle: Price exceeds max'
                                                if ext_call.return_data[32] < 70 * 10^6:
                                                    revert with 0, 'Oracle: Price under min'
                                            else:
                                                if sha3(mem[_2909 + 32 len mem[_2909]]) == sha3(1431520340):
                                                    if ext_call.return_data[32] > 130 * 10^6:
                                                        revert with 0, 'Oracle: Price exceeds max'
                                                    if ext_call.return_data[32] < 70 * 10^6:
                                                        revert with 0, 'Oracle: Price under min'
    return ext_call.return_data[32]
}



}
