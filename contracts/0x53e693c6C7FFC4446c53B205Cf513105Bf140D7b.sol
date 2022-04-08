contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_3f1c8c53(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if not arg5.length:
        revert with 0, 'At least one pool required'
    require arg5.length + 1 <= test266151307()
    mem[(32 * arg5.length) + 128] = arg5.length + 1
    mem[64] = (32 * arg5.length) + (32 * arg5.length + 1) + 160
    if not arg5.length + 1:
        require arg5.length < arg5.length + 1
        mem[(64 * arg5.length) + 160] = arg3
        idx = arg5.length
        while idx:
            require idx - 1 < mem[96]
            _763 = mem[(32 * idx - 1) + 128]
            require idx < mem[(32 * arg5.length) + 128]
            _770 = mem[(32 * idx) + (32 * arg5.length) + 160]
            if mem[(32 * idx) + (32 * arg5.length) + 160] <= 0:
                revert with 0, 
                            32,
                            40,
                            0x54556e697377617056324c69623a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[mem[64] + 108 len 24]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 0 == Mask(1, 160, _763):
                if Mask(112, 0, ext_call.return_data[32]) <= _770:
                    revert with 0, 
                                32,
                                57,
                                0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                                mem[mem[64] + 125 len 7]
                if not Mask(112, 0, ext_call.return_data[0]):
                    _1010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1010] = 30
                    mem[_1010 + 32] = 'SafeMath: subtraction overflow'
                    if _770 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _770
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _770 != Mask(95, 0, _763) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1107 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1107 + 68] = mem[idx + _1010 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1107 + 68] = mem[_1107 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1107 + -mem[64] + 100
                if _770 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != _770:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _770 * Mask(112, 0, ext_call.return_data[0]):
                    _1106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1106] = 30
                    mem[_1106 + 32] = 'SafeMath: subtraction overflow'
                    if _770 <= Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32]) - _770
                        if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _770 != Mask(95, 0, _763) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                        if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg5.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                        idx = idx - 1
                        continue 
                    _1211 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1211 + 68] = mem[idx + _1106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1211 + 68] = mem[_1211 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1211 + -mem[64] + 100
                if 10000 * _770 * Mask(112, 0, ext_call.return_data[0]) / _770 * Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 30
                mem[_1210 + 32] = 'SafeMath: subtraction overflow'
                if _770 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - _770
                    if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _770 != Mask(95, 0, _763) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                    if (10000 * _770 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 10000 * _770 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _770 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1286 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1286 + 68] = mem[idx + _1210 + 32]
                    idx = idx + 32
                    continue 
                mem[_1286 + 68] = mem[_1286 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1286 + -mem[64] + 100
            if Mask(112, 0, ext_call.return_data[0]) <= _770:
                revert with 0, 
                            32,
                            57,
                            0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                            mem[mem[64] + 125 len 7]
            if not Mask(112, 0, ext_call.return_data[32]):
                _1011 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1011] = 30
                mem[_1011 + 32] = 'SafeMath: subtraction overflow'
                if _770 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _770
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _770 != Mask(95, 0, _763) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1111 + 68] = mem[idx + _1011 + 32]
                    idx = idx + 32
                    continue 
                mem[_1111 + 68] = mem[_1111 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1111 + -mem[64] + 100
            if _770 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != _770:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _770 * Mask(112, 0, ext_call.return_data[32]):
                _1110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1110] = 30
                mem[_1110 + 32] = 'SafeMath: subtraction overflow'
                if _770 <= Mask(112, 0, ext_call.return_data[0]):
                    require Mask(112, 0, ext_call.return_data[0]) - _770
                    if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _770 != Mask(95, 0, _763) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1216 + 68] = mem[idx + _1110 + 32]
                    idx = idx + 32
                    continue 
                mem[_1216 + 68] = mem[_1216 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1216 + -mem[64] + 100
            if 10000 * _770 * Mask(112, 0, ext_call.return_data[32]) / _770 * Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1215] = 30
            mem[_1215 + 32] = 'SafeMath: subtraction overflow'
            if _770 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - _770
                if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _770 != Mask(95, 0, _763) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)
                if (10000 * _770 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1 < 10000 * _770 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _770 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _763) >> 161) - (_770 * Mask(95, 0, _763) >> 161)) + 1
                idx = idx - 1
                continue 
            _1291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1291 + 68] = mem[idx + _1215 + 32]
                idx = idx + 32
                continue 
            mem[_1291 + 68] = mem[_1291 + 70 len 30]
            revert with memory
              from mem[64]
               len _1291 + -mem[64] + 100
        require 0 < mem[(32 * arg5.length) + 128]
        _762 = mem[(32 * arg5.length) + 160]
        if mem[(32 * arg5.length) + 160] > arg2:
            revert with 0, 
                        32,
                        42,
                        0x74556e69737761705632526f757465723a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[mem[64] + 110 len 22]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 30
            mem[_777 + 32] = 'SafeMath: subtraction overflow'
            if _762 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            _828 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _830 = mem[_828]
            mem[mem[64] len floor32(mem[_828])] = mem[_828 + 32 len floor32(mem[_828])]
            mem[mem[64] + floor32(mem[_828]) + -(mem[_828] % 32) + 32 len mem[_828] % 32] = mem[_828 + floor32(mem[_828]) + -(mem[_828] % 32) + 64 len mem[_828] % 32]
            call msg.sender with:
               value msg.value - _762 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _830 + _828 + -mem[64] + 28]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _762 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _762
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _762
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2092 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2150 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2150
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2092))
                            call address(_2092).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2150, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2252 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2150
                            mem[mem[64] + 68] = address(_2252)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2092))
                            call address(_2092).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2150, address(_2252), 128, 0, mem[mem[64] + 164]
                    else:
                        _2151 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2151
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2092))
                            call address(_2092).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2151, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2253 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2151
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2253)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2092))
                            call address(_2092).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2151, 0, address(_2253), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                _1539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1539] = return_data.size
                mem[_1539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg4)
                call arg4.deposit() with:
                   value _762 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 0 < mem[96]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _762
                require ext_code.size(arg4)
                call arg4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _762
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2093 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2154 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2154
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2093))
                            call address(_2093).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2154, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2254 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2154
                            mem[mem[64] + 68] = address(_2254)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2093))
                            call address(_2093).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2154, address(_2254), 128, 0, mem[mem[64] + 164]
                    else:
                        _2155 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2155
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2093))
                            call address(_2093).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2155, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2255 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2155
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2255)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2093))
                            call address(_2093).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2155, 0, address(_2255), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            require 0 < mem[96]
            _776 = mem[128]
            _784 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_776)
            mem[mem[64] + 100] = _762
            _785 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_785 + 32 len 4] = unknown_0x23b872dd(?????)
            _788 = mem[_785]
            mem[mem[64] len floor32(mem[_785])] = mem[_785 + 32 len floor32(mem[_785])]
            mem[mem[64] + floor32(mem[_785]) + -(mem[_785] % 32) + 32 len mem[_785] % 32] = mem[_785 + floor32(mem[_785]) + -(mem[_785] % 32) + 64 len mem[_785] % 32]
            call arg1 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _788 + _784 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _762)
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _762)
                    idx = 0
                    while idx < arg5.length:
                        require idx < mem[96]
                        _2085 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[(32 * arg5.length) + 128]
                        if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                            _2138 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2138
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2085))
                                    call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2138, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2085))
                                    call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2138, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2238 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2138
                                mem[mem[64] + 68] = address(_2238)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2085))
                                call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2138, address(_2238), 128, 0, mem[mem[64] + 164]
                        else:
                            _2139 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2139
                                mem[mem[64] + 36] = 0
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2085))
                                    call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2139, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2085))
                                    call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2139, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2239 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2139
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2239)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2085))
                                call address(_2085).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2139, 0, address(_2239), 128, 0, mem[mem[64] + 164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    if arg4:
                        mem[mem[64] + 4] = arg3
                        require ext_code.size(arg4)
                        call arg4.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2183 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_2183 + floor32(mem[_2183]) + -(mem[_2183] % 32) + 64 len mem[_2183] % 32] = mem[_2183 + -(mem[_2183] % 32) + floor32(mem[_2183]) + 64 len mem[_2183] % 32]
                        call msg.sender.mem[_2183 + 32 len 4] with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[_2183 + 36 len mem[_2183] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_2183 + 135 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[_2183 + ceil32(return_data.size) + 136 len 29]
                        ('bool', 'ext_call.success')
                else:
                    idx = 0
                    while idx < arg5.length:
                        require idx < mem[96]
                        _2082 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[(32 * arg5.length) + 128]
                        if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                            _2134 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2134
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2082))
                                    call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2134, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2082))
                                    call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2134, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2232 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2134
                                mem[mem[64] + 68] = address(_2232)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2082))
                                call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2134, address(_2232), 128, 0, mem[mem[64] + 164]
                        else:
                            _2135 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2135
                                mem[mem[64] + 36] = 0
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2082))
                                    call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2135, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2082))
                                    call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2135, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2233 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2135
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2233)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2082))
                                call address(_2082).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2135, 0, address(_2233), 128, 0, mem[mem[64] + 164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    if arg4:
                        mem[mem[64] + 4] = arg3
                        require ext_code.size(arg4)
                        call arg4.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2180 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        _2182 = mem[_2180]
                        mem[mem[64] len floor32(mem[_2180])] = mem[_2180 + 32 len floor32(mem[_2180])]
                        mem[mem[64] + floor32(mem[_2180]) + -(mem[_2180] % 32) + 32 len mem[_2180] % 32] = mem[_2180 + floor32(mem[_2180]) + -(mem[_2180] % 32) + 64 len mem[_2180] % 32]
                        call msg.sender with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2182 + _2180 + -mem[64] + 28]
                        if return_data.size:
                            _2516 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2516] = return_data.size
                            mem[_2516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            else:
                _1538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1538] = return_data.size
                mem[_1538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _762)
                if not return_data.size:
                    idx = 0
                    while idx < arg5.length:
                        require idx < mem[96]
                        _2088 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[(32 * arg5.length) + 128]
                        if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                            _2142 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2142
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2088))
                                    call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2142, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2088))
                                    call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2142, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2244 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2142
                                mem[mem[64] + 68] = address(_2244)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2088))
                                call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2142, address(_2244), 128, 0, mem[mem[64] + 164]
                        else:
                            _2143 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2143
                                mem[mem[64] + 36] = 0
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2088))
                                    call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2143, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2088))
                                    call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2143, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2245 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2143
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2245)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2088))
                                call address(_2088).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2143, 0, address(_2245), 128, 0, mem[mem[64] + 164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    if arg4:
                        mem[mem[64] + 4] = arg3
                        require ext_code.size(arg4)
                        call arg4.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2186 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        _2188 = mem[_2186]
                        mem[mem[64] len floor32(mem[_2186])] = mem[_2186 + 32 len floor32(mem[_2186])]
                        mem[mem[64] + floor32(mem[_2186]) + -(mem[_2186] % 32) + 32 len mem[_2186] % 32] = mem[_2186 + floor32(mem[_2186]) + -(mem[_2186] % 32) + 64 len mem[_2186] % 32]
                        call msg.sender with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2188 + _2186 + -mem[64] + 28]
                        if return_data.size:
                            _2518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2518] = return_data.size
                            mem[_2518 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
                else:
                    require return_data.size >= 32
                    if not mem[_1538 + 32]:
                        revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _762)
                    idx = 0
                    while idx < arg5.length:
                        require idx < mem[96]
                        _2091 = mem[(32 * idx) + 128]
                        require idx + 1 < mem[(32 * arg5.length) + 128]
                        if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                            _2146 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2146
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2091))
                                    call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2146, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2091))
                                    call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2146, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2250 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _2146
                                mem[mem[64] + 68] = address(_2250)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2091))
                                call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2146, address(_2250), 128, 0, mem[mem[64] + 164]
                        else:
                            _2147 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                            if idx + 1 == arg5.length:
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2147
                                mem[mem[64] + 36] = 0
                                if arg4:
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2091))
                                    call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2147, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_2091))
                                    call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2147, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                            else:
                                require idx + 1 < mem[96]
                                _2251 = mem[(32 * idx + 1) + 128]
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2147
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_2251)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2091))
                                call address(_2091).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2147, 0, address(_2251), 128, 0, mem[mem[64] + 164]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    if arg4:
                        mem[mem[64] + 4] = arg3
                        require ext_code.size(arg4)
                        call arg4.withdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2189 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        _2191 = mem[_2189]
                        mem[mem[64] len floor32(mem[_2189])] = mem[_2189 + 32 len floor32(mem[_2189])]
                        mem[mem[64] + floor32(mem[_2189]) + -(mem[_2189] % 32) + 32 len mem[_2189] % 32] = mem[_2189 + floor32(mem[_2189]) + -(mem[_2189] % 32) + 64 len mem[_2189] % 32]
                        call msg.sender with:
                           value arg3 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2191 + _2189 + -mem[64] + 28]
                        if return_data.size:
                            _2519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2519] = return_data.size
                            mem[_2519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
        return _762
    mem[(32 * arg5.length) + 160 len 32 * arg5.length + 1] = call.data[calldata.size len 32 * arg5.length + 1]
    require arg5.length < arg5.length + 1
    mem[(64 * arg5.length) + 160] = arg3
    idx = arg5.length
    while idx:
        require idx - 1 < mem[96]
        _766 = mem[(32 * idx - 1) + 128]
        require idx < mem[(32 * arg5.length) + 128]
        _773 = mem[(32 * idx) + (32 * arg5.length) + 160]
        if mem[(32 * idx) + (32 * arg5.length) + 160] <= 0:
            revert with 0, 
                        32,
                        40,
                        0x54556e697377617056324c69623a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[mem[64] + 108 len 24]
        require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
        staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == Mask(1, 160, _766):
            if Mask(112, 0, ext_call.return_data[32]) <= _773:
                revert with 0, 
                            32,
                            57,
                            0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                            mem[mem[64] + 125 len 7]
            if not Mask(112, 0, ext_call.return_data[0]):
                _1026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1026] = 30
                mem[_1026 + 32] = 'SafeMath: subtraction overflow'
                if _773 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - _773
                    if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _773 != Mask(95, 0, _766) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1145 + 68] = mem[idx + _1026 + 32]
                    idx = idx + 32
                    continue 
                mem[_1145 + 68] = mem[_1145 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1145 + -mem[64] + 100
            if _773 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != _773:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _773 * Mask(112, 0, ext_call.return_data[0]):
                _1144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1144] = 30
                mem[_1144 + 32] = 'SafeMath: subtraction overflow'
                if _773 <= Mask(112, 0, ext_call.return_data[32]):
                    require Mask(112, 0, ext_call.return_data[32]) - _773
                    if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _773 != Mask(95, 0, _766) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
                    if (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx - 1 < mem[(32 * arg5.length) + 128]
                    mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
                    idx = idx - 1
                    continue 
                _1255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1255 + 68] = mem[idx + _1144 + 32]
                    idx = idx + 32
                    continue 
                mem[_1255 + 68] = mem[_1255 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1255 + -mem[64] + 100
            if 10000 * _773 * Mask(112, 0, ext_call.return_data[0]) / _773 * Mask(112, 0, ext_call.return_data[0]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1254 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1254] = 30
            mem[_1254 + 32] = 'SafeMath: subtraction overflow'
            if _773 <= Mask(112, 0, ext_call.return_data[32]):
                require Mask(112, 0, ext_call.return_data[32]) - _773
                if (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[32]) - _773 != Mask(95, 0, _766) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
                if (10000 * _773 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 10000 * _773 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _773 * Mask(112, 0, ext_call.return_data[0]) / (Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
                idx = idx - 1
                continue 
            _1306 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1306 + 68] = mem[idx + _1254 + 32]
                idx = idx + 32
                continue 
            mem[_1306 + 68] = mem[_1306 + 70 len 30]
            revert with memory
              from mem[64]
               len _1306 + -mem[64] + 100
        if Mask(112, 0, ext_call.return_data[0]) <= _773:
            revert with 0, 
                        32,
                        57,
                        0x54556e697377617056324c69623a20726573657276654f75742073686f756c642062652067726561746572207468616e20616d6f756e744f75,
                        mem[mem[64] + 125 len 7]
        if not Mask(112, 0, ext_call.return_data[32]):
            _1027 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1027] = 30
            mem[_1027 + 32] = 'SafeMath: subtraction overflow'
            if _773 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - _773
                if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _773 != Mask(95, 0, _766) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
                if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
                idx = idx - 1
                continue 
            _1149 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1149 + 68] = mem[idx + _1027 + 32]
                idx = idx + 32
                continue 
            mem[_1149 + 68] = mem[_1149 + 70 len 30]
            revert with memory
              from mem[64]
               len _1149 + -mem[64] + 100
        if _773 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != _773:
            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not _773 * Mask(112, 0, ext_call.return_data[32]):
            _1148 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1148] = 30
            mem[_1148 + 32] = 'SafeMath: subtraction overflow'
            if _773 <= Mask(112, 0, ext_call.return_data[0]):
                require Mask(112, 0, ext_call.return_data[0]) - _773
                if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _773 != Mask(95, 0, _766) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
                if (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                    revert with 0, 'SafeMath: addition overflow'
                require idx - 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (0 / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
                idx = idx - 1
                continue 
            _1260 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1260 + 68] = mem[idx + _1148 + 32]
                idx = idx + 32
                continue 
            mem[_1260 + 68] = mem[_1260 + 70 len 30]
            revert with memory
              from mem[64]
               len _1260 + -mem[64] + 100
        if 10000 * _773 * Mask(112, 0, ext_call.return_data[32]) / _773 * Mask(112, 0, ext_call.return_data[32]) != 10000:
            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1259 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1259] = 30
        mem[_1259 + 32] = 'SafeMath: subtraction overflow'
        if _773 <= Mask(112, 0, ext_call.return_data[0]):
            require Mask(112, 0, ext_call.return_data[0]) - _773
            if (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161) / Mask(112, 0, ext_call.return_data[0]) - _773 != Mask(95, 0, _766) >> 161:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)
            if (10000 * _773 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1 < 10000 * _773 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161):
                revert with 0, 'SafeMath: addition overflow'
            require idx - 1 < mem[(32 * arg5.length) + 128]
            mem[(32 * idx - 1) + (32 * arg5.length) + 160] = (10000 * _773 * Mask(112, 0, ext_call.return_data[32]) / (Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _766) >> 161) - (_773 * Mask(95, 0, _766) >> 161)) + 1
            idx = idx - 1
            continue 
        _1311 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _1311 + 68] = mem[idx + _1259 + 32]
            idx = idx + 32
            continue 
        mem[_1311 + 68] = mem[_1311 + 70 len 30]
        revert with memory
          from mem[64]
           len _1311 + -mem[64] + 100
    require 0 < mem[(32 * arg5.length) + 128]
    _765 = mem[(32 * arg5.length) + 160]
    if mem[(32 * arg5.length) + 160] > arg2:
        revert with 0, 
                    32,
                    42,
                    0x74556e69737761705632526f757465723a20494e53554646494349454e545f494e5055545f414d4f554e,
                    mem[mem[64] + 110 len 22]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        _781 = mem[64]
        mem[64] = mem[64] + 64
        mem[_781] = 30
        mem[_781 + 32] = 'SafeMath: subtraction overflow'
        if _765 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        _834 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _836 = mem[_834]
        mem[mem[64] len floor32(mem[_834])] = mem[_834 + 32 len floor32(mem[_834])]
        mem[mem[64] + floor32(mem[_834]) + -(mem[_834] % 32) + 32 len mem[_834] % 32] = mem[_834 + floor32(mem[_834]) + -(mem[_834] % 32) + 64 len mem[_834] % 32]
        call msg.sender with:
           value msg.value - _765 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _836 + _834 + -mem[64] + 28]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg4)
            call arg4.deposit() with:
               value _765 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[96]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _765
            require ext_code.size(arg4)
            call arg4.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _765
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = 0
            while idx < arg5.length:
                require idx < mem[96]
                _2106 = mem[(32 * idx) + 128]
                require idx + 1 < mem[(32 * arg5.length) + 128]
                if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                    _2174 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _2174
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2106))
                        call address(_2106).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2174, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _2280 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _2174
                        mem[mem[64] + 68] = address(_2280)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2106))
                        call address(_2106).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2174, address(_2280), 128, 0, mem[mem[64] + 164]
                else:
                    _2175 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2175
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2106))
                        call address(_2106).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2175, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _2281 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2175
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_2281)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2106))
                        call address(_2106).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2175, 0, address(_2281), 128, 0, mem[mem[64] + 164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            _1555 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1555] = return_data.size
            mem[_1555 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg4)
            call arg4.deposit() with:
               value _765 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < mem[96]
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _765
            require ext_code.size(arg4)
            call arg4.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _765
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            idx = 0
            while idx < arg5.length:
                require idx < mem[96]
                _2107 = mem[(32 * idx) + 128]
                require idx + 1 < mem[(32 * arg5.length) + 128]
                if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                    _2178 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _2178
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2107))
                        call address(_2107).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2178, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _2282 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _2178
                        mem[mem[64] + 68] = address(_2282)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2107))
                        call address(_2107).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2178, address(_2282), 128, 0, mem[mem[64] + 164]
                else:
                    _2179 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                    if idx + 1 == arg5.length:
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2179
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2107))
                        call address(_2107).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2179, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _2283 = mem[(32 * idx + 1) + 128]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2179
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_2283)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_2107))
                        call address(_2107).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2179, 0, address(_2283), 128, 0, mem[mem[64] + 164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        require 0 < mem[96]
        _780 = mem[128]
        _791 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_780)
        mem[mem[64] + 100] = _765
        _792 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_792 + 32 len 4] = unknown_0x23b872dd(?????)
        _795 = mem[_792]
        mem[mem[64] len floor32(mem[_792])] = mem[_792 + 32 len floor32(mem[_792])]
        mem[mem[64] + floor32(mem[_792]) + -(mem[_792] % 32) + 32 len mem[_792] % 32] = mem[_792 + floor32(mem[_792]) + -(mem[_792] % 32) + 64 len mem[_792] % 32]
        call arg1 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _795 + _791 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _765)
            if not mem[96]:
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2096 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2158 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2158
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2158, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2158, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2260 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2158
                            mem[mem[64] + 68] = address(_2260)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2096))
                            call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2158, address(_2260), 128, 0, mem[mem[64] + 164]
                    else:
                        _2159 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2159
                            mem[mem[64] + 36] = 0
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2159, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2096))
                                call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2159, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2261 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2159
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2261)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2096))
                            call address(_2096).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2159, 0, address(_2261), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                if arg4:
                    mem[mem[64] + 4] = arg3
                    require ext_code.size(arg4)
                    call arg4.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2192 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2192 + floor32(mem[_2192]) + -(mem[_2192] % 32) + 64 len mem[_2192] % 32] = mem[_2192 + -(mem[_2192] % 32) + floor32(mem[_2192]) + 64 len mem[_2192] % 32]
                    call msg.sender.mem[_2192 + 32 len 4] with:
                       value arg3 wei
                         gas gas_remaining wei
                        args mem[_2192 + 36 len mem[_2192] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_2192 + 135 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[_2192 + ceil32(return_data.size) + 136 len 29]
                    ('bool', 'ext_call.success')
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _765)
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2099 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2162 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2162
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2099))
                                call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2162, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2099))
                                call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2162, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2266 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2162
                            mem[mem[64] + 68] = address(_2266)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2099))
                            call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2162, address(_2266), 128, 0, mem[mem[64] + 164]
                    else:
                        _2163 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2163
                            mem[mem[64] + 36] = 0
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2099))
                                call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2163, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2099))
                                call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2163, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2267 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2163
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2267)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2099))
                            call address(_2099).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2163, 0, address(_2267), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                if arg4:
                    mem[mem[64] + 4] = arg3
                    require ext_code.size(arg4)
                    call arg4.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2195 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_2195 + floor32(mem[_2195]) + -(mem[_2195] % 32) + 64 len mem[_2195] % 32] = mem[_2195 + -(mem[_2195] % 32) + floor32(mem[_2195]) + 64 len mem[_2195] % 32]
                    call msg.sender.mem[_2195 + 32 len 4] with:
                       value arg3 wei
                         gas gas_remaining wei
                        args mem[_2195 + 36 len mem[_2195] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[_2195 + 135 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[_2195 + ceil32(return_data.size) + 136 len 29]
                    ('bool', 'ext_call.success')
        else:
            _1554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1554] = return_data.size
            mem[_1554 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _765)
            if not return_data.size:
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2102 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2166 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2166
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2102))
                                call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2166, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2102))
                                call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2166, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2272 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2166
                            mem[mem[64] + 68] = address(_2272)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2102))
                            call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2166, address(_2272), 128, 0, mem[mem[64] + 164]
                    else:
                        _2167 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2167
                            mem[mem[64] + 36] = 0
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2102))
                                call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2167, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2102))
                                call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2167, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2273 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2167
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2273)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2102))
                            call address(_2102).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2167, 0, address(_2273), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                if arg4:
                    mem[mem[64] + 4] = arg3
                    require ext_code.size(arg4)
                    call arg4.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2198 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    _2200 = mem[_2198]
                    mem[mem[64] len floor32(mem[_2198])] = mem[_2198 + 32 len floor32(mem[_2198])]
                    mem[mem[64] + floor32(mem[_2198]) + -(mem[_2198] % 32) + 32 len mem[_2198] % 32] = mem[_2198 + floor32(mem[_2198]) + -(mem[_2198] % 32) + 64 len mem[_2198] % 32]
                    call msg.sender with:
                       value arg3 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2200 + _2198 + -mem[64] + 28]
                    if return_data.size:
                        _2522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2522] = return_data.size
                        mem[_2522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
            else:
                require return_data.size >= 32
                if not mem[_1554 + 32]:
                    revert with 0, 32, 36, 0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, Mask(224, 0, _765)
                idx = 0
                while idx < arg5.length:
                    require idx < mem[96]
                    _2105 = mem[(32 * idx) + 128]
                    require idx + 1 < mem[(32 * arg5.length) + 128]
                    if 0 == Mask(1, 160, mem[(32 * idx) + 128]):
                        _2170 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2170
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2105))
                                call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2170, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2105))
                                call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2170, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2278 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _2170
                            mem[mem[64] + 68] = address(_2278)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2105))
                            call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2170, address(_2278), 128, 0, mem[mem[64] + 164]
                    else:
                        _2171 = mem[(32 * idx + 1) + (32 * arg5.length) + 160]
                        if idx + 1 == arg5.length:
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2171
                            mem[mem[64] + 36] = 0
                            if arg4:
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2105))
                                call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2171, 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_2105))
                                call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2171, 0, msg.sender, 128, 0, mem[mem[64] + 164]
                        else:
                            require idx + 1 < mem[96]
                            _2279 = mem[(32 * idx + 1) + 128]
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2171
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_2279)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(_2105))
                            call address(_2105).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2171, 0, address(_2279), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                if arg4:
                    mem[mem[64] + 4] = arg3
                    require ext_code.size(arg4)
                    call arg4.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2201 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    _2203 = mem[_2201]
                    mem[mem[64] len floor32(mem[_2201])] = mem[_2201 + 32 len floor32(mem[_2201])]
                    mem[mem[64] + floor32(mem[_2201]) + -(mem[_2201] % 32) + 32 len mem[_2201] % 32] = mem[_2201 + floor32(mem[_2201]) + -(mem[_2201] % 32) + 64 len mem[_2201] % 32]
                    call msg.sender with:
                       value arg3 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2203 + _2201 + -mem[64] + 28]
                    if return_data.size:
                        _2523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2523] = return_data.size
                        mem[_2523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[mem[64] + 103 len 29]
    return _765
}

function sub_91a32b69(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = 0
    if not arg5.length:
        revert with 0, 'At least one pool required'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg2 != msg.value:
            revert with 0, 'Incorrect amount of ETH sent'
        mem[(32 * arg5.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg4)
        call arg4.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < arg5.length
        _21 = mem[128]
        mem[(32 * arg5.length) + 132] = mem[140 len 20]
        mem[(32 * arg5.length) + 164] = msg.value
        require ext_code.size(arg4)
        call arg4.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_21), msg.value
        mem[(32 * arg5.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg5.length:
            require idx < arg5.length
            _1160 = mem[(32 * idx) + 128]
            if s <= 0:
                revert with 0, 
                            32,
                            39,
                            0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * arg5.length) + 235 len 25]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg5.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not Mask(1, 160, _1160):
                if not s:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require 10000 * Mask(112, 0, ext_call.return_data[0])
                    if not Mask(1, 160, _1160):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1432 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 196] = address(_1432)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_1432), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1433 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_1433)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_1433), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    continue 
                if Mask(95, 0, _1160) >> 161 * s / s != Mask(95, 0, _1160) >> 161:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(95, 0, _1160) >> 161 * s:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(95, 0, _1160) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _1160) >> 161 * s
                        if not Mask(1, 160, _1160):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _1160) >> 161 * s
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_1160))
                                call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _1160) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _1430 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0
                                mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _1160) >> 161 * s
                                mem[(32 * arg5.length) + 196] = address(_1430)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_1160))
                                call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / Mask(95, 0, _1160) >> 161 * s, address(_1430), 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _1160) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                mem[(32 * arg5.length) + 196] = msg.sender
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_1160))
                                call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _1160) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                            else:
                                require idx + 1 < arg5.length
                                _1431 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _1160) >> 161 * s
                                mem[(32 * arg5.length) + 164] = 0
                                mem[(32 * arg5.length) + 196] = address(_1431)
                                mem[(32 * arg5.length) + 228] = 128
                                mem[(32 * arg5.length) + 260] = 0
                                require ext_code.size(address(_1160))
                                call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / Mask(95, 0, _1160) >> 161 * s, 0, address(_1431), 128, 0, mem[(32 * arg5.length) + 292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / Mask(95, 0, _1160) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                    if (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    if not Mask(1, 160, _1160):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1512 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 196] = address(_1512)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_1512), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1513 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_1513)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1513), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(95, 0, _1160) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _1160) >> 161 * s
                    if not Mask(1, 160, _1160):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1510 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_1510)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, address(_1510), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1511 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_1511)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, 0, address(_1511), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                if not Mask(1, 160, _1160):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1594 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 196] = address(_1594)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_1594), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1595 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_1595)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_1595), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                continue 
            if not s:
                require Mask(112, 0, ext_call.return_data[32])
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * Mask(112, 0, ext_call.return_data[32])
                if not Mask(1, 160, _1160):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1436 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 196] = address(_1436)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_1436), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1437 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_1437)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_1437), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                continue 
            if Mask(95, 0, _1160) >> 161 * s / s != Mask(95, 0, _1160) >> 161:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(95, 0, _1160) >> 161 * s:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(95, 0, _1160) >> 161 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require Mask(95, 0, _1160) >> 161 * s
                    if not Mask(1, 160, _1160):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / Mask(95, 0, _1160) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1434 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0
                            mem[(32 * arg5.length) + 164] = 0 / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 196] = address(_1434)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / Mask(95, 0, _1160) >> 161 * s, address(_1434), 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = msg.sender
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / Mask(95, 0, _1160) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                        else:
                            require idx + 1 < arg5.length
                            _1435 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 132] = 0 / Mask(95, 0, _1160) >> 161 * s
                            mem[(32 * arg5.length) + 164] = 0
                            mem[(32 * arg5.length) + 196] = address(_1435)
                            mem[(32 * arg5.length) + 228] = 128
                            mem[(32 * arg5.length) + 260] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0 / Mask(95, 0, _1160) >> 161 * s, 0, address(_1435), 128, 0, mem[(32 * arg5.length) + 292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / Mask(95, 0, _1160) >> 161 * s
                    continue 
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
                if (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                if not Mask(1, 160, _1160):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1516 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 196] = address(_1516)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_1516), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1517 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_1517)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1517), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = 0 / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                continue 
            if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(95, 0, _1160) >> 161 * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require Mask(95, 0, _1160) >> 161 * s
                if not Mask(1, 160, _1160):
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1514 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = 0
                        mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                        mem[(32 * arg5.length) + 196] = address(_1514)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, address(_1514), 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    if idx + 1 == arg5.length:
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = msg.sender
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                    else:
                        require idx + 1 < arg5.length
                        _1515 = mem[(32 * idx + 1) + 128]
                        mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                        mem[(32 * arg5.length) + 164] = 0
                        mem[(32 * arg5.length) + 196] = address(_1515)
                        mem[(32 * arg5.length) + 228] = 128
                        mem[(32 * arg5.length) + 260] = 0
                        require ext_code.size(address(_1160))
                        call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s, 0, address(_1515), 128, 0, mem[(32 * arg5.length) + 292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / Mask(95, 0, _1160) >> 161 * s
                continue 
            if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 229 len 31]
            if (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            if not Mask(1, 160, _1160):
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 196] = msg.sender
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_1160))
                    call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _1596 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = 0
                    mem[(32 * arg5.length) + 164] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 196] = address(_1596)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_1160))
                    call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_1596), 128, 0, mem[(32 * arg5.length) + 292]
            else:
                if idx + 1 == arg5.length:
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    mem[(32 * arg5.length) + 196] = msg.sender
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_1160))
                    call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 292]
                else:
                    require idx + 1 < arg5.length
                    _1597 = mem[(32 * idx + 1) + 128]
                    mem[(32 * arg5.length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + 132] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(32 * arg5.length) + 164] = 0
                    mem[(32 * arg5.length) + 196] = address(_1597)
                    mem[(32 * arg5.length) + 228] = 128
                    mem[(32 * arg5.length) + 260] = 0
                    require ext_code.size(address(_1160))
                    call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_1597), 128, 0, mem[(32 * arg5.length) + 292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _1160) >> 161 * s / (Mask(95, 0, _1160) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if s < arg3:
            revert with 0, 
                        32,
                        43,
                        0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[(32 * arg5.length) + 239 len 21]
    else:
        require 0 < arg5.length
        mem[(32 * arg5.length) + 164] = msg.sender
        mem[(32 * arg5.length) + 196] = mem[140 len 20]
        mem[(32 * arg5.length) + 228] = arg2
        mem[(32 * arg5.length) + 128] = 100
        mem[(32 * arg5.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * arg5.length) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * arg5.length) + 260 len 96] = unknown_0x23b872dd(?????), msg.sender, mem[(32 * arg5.length) + 196], Mask(224, 32, arg2) >> 32
        mem[(32 * arg5.length) + 384 len 4] = uint32(arg2)
        call arg1.mem[(32 * arg5.length) + 224 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[(32 * arg5.length) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * arg5.length) + 364 len 20],
                            uint32(arg2),
                            mem[(32 * arg5.length) + 388 len 4]
            if not arg5.length:
                idx = 0
                s = arg2
                while idx < arg5.length:
                    require idx < arg5.length
                    _2292 = mem[(32 * idx) + 128]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * arg5.length) + 367 len 25]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg5.length) + 260 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(1, 160, _2292):
                        if not s:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if not Mask(1, 160, _2292):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2620 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 328] = address(_2620)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_2620), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2621 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2621)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_2621), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            continue 
                        if Mask(95, 0, _2292) >> 161 * s / s != Mask(95, 0, _2292) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if not Mask(95, 0, _2292) >> 161 * s:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if Mask(95, 0, _2292) >> 161 * s < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require Mask(95, 0, _2292) >> 161 * s
                                if not Mask(1, 160, _2292):
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0
                                        mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2292) >> 161 * s
                                        if arg4:
                                            mem[(32 * arg5.length) + 328] = this.address
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2292))
                                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2292) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                        else:
                                            mem[(32 * arg5.length) + 328] = msg.sender
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2292))
                                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2292) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2618 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0
                                        mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2292) >> 161 * s
                                        mem[(32 * arg5.length) + 328] = address(_2618)
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2292) >> 161 * s, address(_2618), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2292) >> 161 * s
                                        mem[(32 * arg5.length) + 296] = 0
                                        if arg4:
                                            mem[(32 * arg5.length) + 328] = this.address
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2292))
                                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2292) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                        else:
                                            mem[(32 * arg5.length) + 328] = msg.sender
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2292))
                                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2292) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2619 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2292) >> 161 * s
                                        mem[(32 * arg5.length) + 296] = 0
                                        mem[(32 * arg5.length) + 328] = address(_2619)
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2292) >> 161 * s, 0, address(_2619), 128, 0, mem[(32 * arg5.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 0 / Mask(95, 0, _2292) >> 161 * s
                                continue 
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                            if (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            if not Mask(1, 160, _2292):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2876 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 328] = address(_2876)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_2876), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2877 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2877)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_2877), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            continue 
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(95, 0, _2292) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2292) >> 161 * s
                            if not Mask(1, 160, _2292):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2874 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 328] = address(_2874)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, address(_2874), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2875 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2875)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, address(_2875), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        if not Mask(1, 160, _2292):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _3114 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 328] = address(_3114)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_3114), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _3115 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_3115)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_3115), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if not s:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if not Mask(1, 160, _2292):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2624 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 328] = address(_2624)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_2624), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2625 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2625)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_2625), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                    if Mask(95, 0, _2292) >> 161 * s / s != Mask(95, 0, _2292) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if not Mask(95, 0, _2292) >> 161 * s:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(95, 0, _2292) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2292) >> 161 * s
                            if not Mask(1, 160, _2292):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2292) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2292) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2292) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2622 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 328] = address(_2622)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _2292) >> 161 * s, address(_2622), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2292) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2292))
                                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2292) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2623 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2292) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2623)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _2292) >> 161 * s, 0, address(_2623), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / Mask(95, 0, _2292) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        if not Mask(1, 160, _2292):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2880 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 328] = address(_2880)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_2880), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2881 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2881)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_2881), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if Mask(95, 0, _2292) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _2292) >> 161 * s
                        if not Mask(1, 160, _2292):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2878 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                mem[(32 * arg5.length) + 328] = address(_2878)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, address(_2878), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2292))
                                    call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2879 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2879)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s, 0, address(_2879), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / Mask(95, 0, _2292) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    if not Mask(1, 160, _2292):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = 0
                            mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            if arg4:
                                mem[(32 * arg5.length) + 328] = this.address
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                mem[(32 * arg5.length) + 328] = msg.sender
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            require idx + 1 < arg5.length
                            _3116 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = 0
                            mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 328] = address(_3116)
                            mem[(32 * arg5.length) + 360] = 128
                            mem[(32 * arg5.length) + 392] = 0
                            require ext_code.size(address(_2292))
                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_3116), 128, 0, mem[(32 * arg5.length) + 424]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 296] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 328] = this.address
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                mem[(32 * arg5.length) + 328] = msg.sender
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2292))
                                call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            require idx + 1 < arg5.length
                            _3117 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 296] = 0
                            mem[(32 * arg5.length) + 328] = address(_3117)
                            mem[(32 * arg5.length) + 360] = 128
                            mem[(32 * arg5.length) + 392] = 0
                            require ext_code.size(address(_2292))
                            call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_3117), 128, 0, mem[(32 * arg5.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2292) >> 161 * s / (Mask(95, 0, _2292) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require arg5.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                36,
                                0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * arg5.length) + 364 len 20],
                                uint32(arg2),
                                mem[(32 * arg5.length) + 388 len 4]
                idx = 0
                s = arg2
                while idx < arg5.length:
                    require idx < arg5.length
                    _2295 = mem[(32 * idx) + 128]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * arg5.length) + 367 len 25]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg5.length) + 260 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(1, 160, _2295):
                        if not s:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if not Mask(1, 160, _2295):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2628 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 328] = address(_2628)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_2628), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2629 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2629)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_2629), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            continue 
                        if Mask(95, 0, _2295) >> 161 * s / s != Mask(95, 0, _2295) >> 161:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if not Mask(95, 0, _2295) >> 161 * s:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if Mask(95, 0, _2295) >> 161 * s < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require Mask(95, 0, _2295) >> 161 * s
                                if not Mask(1, 160, _2295):
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0
                                        mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2295) >> 161 * s
                                        if arg4:
                                            mem[(32 * arg5.length) + 328] = this.address
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2295))
                                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2295) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                        else:
                                            mem[(32 * arg5.length) + 328] = msg.sender
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2295))
                                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2295) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2626 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0
                                        mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2295) >> 161 * s
                                        mem[(32 * arg5.length) + 328] = address(_2626)
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2295) >> 161 * s, address(_2626), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2295) >> 161 * s
                                        mem[(32 * arg5.length) + 296] = 0
                                        if arg4:
                                            mem[(32 * arg5.length) + 328] = this.address
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2295))
                                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2295) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                        else:
                                            mem[(32 * arg5.length) + 328] = msg.sender
                                            mem[(32 * arg5.length) + 360] = 128
                                            mem[(32 * arg5.length) + 392] = 0
                                            require ext_code.size(address(_2295))
                                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2295) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2627 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2295) >> 161 * s
                                        mem[(32 * arg5.length) + 296] = 0
                                        mem[(32 * arg5.length) + 328] = address(_2627)
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2295) >> 161 * s, 0, address(_2627), 128, 0, mem[(32 * arg5.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 0 / Mask(95, 0, _2295) >> 161 * s
                                continue 
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                            if (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            if not Mask(1, 160, _2295):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2884 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 328] = address(_2884)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_2884), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2885 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2885)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_2885), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            continue 
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(95, 0, _2295) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2295) >> 161 * s
                            if not Mask(1, 160, _2295):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2882 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 328] = address(_2882)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, address(_2882), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2883 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2883)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, address(_2883), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        if not Mask(1, 160, _2295):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _3118 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 328] = address(_3118)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_3118), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _3119 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_3119)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_3119), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if not s:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if not Mask(1, 160, _2295):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2632 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 328] = address(_2632)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_2632), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2633 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2633)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_2633), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                    if Mask(95, 0, _2295) >> 161 * s / s != Mask(95, 0, _2295) >> 161:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if not Mask(95, 0, _2295) >> 161 * s:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(95, 0, _2295) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2295) >> 161 * s
                            if not Mask(1, 160, _2295):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2295) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2295) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2295) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2630 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0
                                    mem[(32 * arg5.length) + 296] = 0 / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 328] = address(_2630)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _2295) >> 161 * s, address(_2630), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + 328] = this.address
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2295) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                    else:
                                        mem[(32 * arg5.length) + 328] = msg.sender
                                        mem[(32 * arg5.length) + 360] = 128
                                        mem[(32 * arg5.length) + 392] = 0
                                        require ext_code.size(address(_2295))
                                        call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2295) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    require idx + 1 < arg5.length
                                    _2631 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + 264] = 0 / Mask(95, 0, _2295) >> 161 * s
                                    mem[(32 * arg5.length) + 296] = 0
                                    mem[(32 * arg5.length) + 328] = address(_2631)
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _2295) >> 161 * s, 0, address(_2631), 128, 0, mem[(32 * arg5.length) + 424]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / Mask(95, 0, _2295) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                        if (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        if not Mask(1, 160, _2295):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2888 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 328] = address(_2888)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_2888), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2889 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2889)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_2889), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if Mask(95, 0, _2295) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _2295) >> 161 * s
                        if not Mask(1, 160, _2295):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2886 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = 0
                                mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                mem[(32 * arg5.length) + 328] = address(_2886)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, address(_2886), 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                mem[(32 * arg5.length) + 296] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + 328] = this.address
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                                else:
                                    mem[(32 * arg5.length) + 328] = msg.sender
                                    mem[(32 * arg5.length) + 360] = 128
                                    mem[(32 * arg5.length) + 392] = 0
                                    require ext_code.size(address(_2295))
                                    call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                require idx + 1 < arg5.length
                                _2887 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                                mem[(32 * arg5.length) + 296] = 0
                                mem[(32 * arg5.length) + 328] = address(_2887)
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s, 0, address(_2887), 128, 0, mem[(32 * arg5.length) + 424]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / Mask(95, 0, _2295) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg5.length) + 361 len 31]
                    if (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    if not Mask(1, 160, _2295):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = 0
                            mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            if arg4:
                                mem[(32 * arg5.length) + 328] = this.address
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                mem[(32 * arg5.length) + 328] = msg.sender
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            require idx + 1 < arg5.length
                            _3120 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = 0
                            mem[(32 * arg5.length) + 296] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 328] = address(_3120)
                            mem[(32 * arg5.length) + 360] = 128
                            mem[(32 * arg5.length) + 392] = 0
                            require ext_code.size(address(_2295))
                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_3120), 128, 0, mem[(32 * arg5.length) + 424]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 296] = 0
                            if arg4:
                                mem[(32 * arg5.length) + 328] = this.address
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + 424]
                            else:
                                mem[(32 * arg5.length) + 328] = msg.sender
                                mem[(32 * arg5.length) + 360] = 128
                                mem[(32 * arg5.length) + 392] = 0
                                require ext_code.size(address(_2295))
                                call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + 424]
                        else:
                            require idx + 1 < arg5.length
                            _3121 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + 264] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + 296] = 0
                            mem[(32 * arg5.length) + 328] = address(_3121)
                            mem[(32 * arg5.length) + 360] = 128
                            mem[(32 * arg5.length) + 392] = 0
                            require ext_code.size(address(_2295))
                            call address(_2295).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_3121), 128, 0, mem[(32 * arg5.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2295) >> 161 * s / (Mask(95, 0, _2295) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            if not arg4:
                if s < arg3:
                    revert with 0, 
                                32,
                                43,
                                0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg5.length) + 371 len 21]
            else:
                require ext_code.size(arg4)
                call arg4.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * arg5.length) + 395 len 29]
                    if s < arg3:
                        revert with 0, 
                                    32,
                                    43,
                                    0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * arg5.length) + 403 len 21]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 396 len 29]
                    if s < arg3:
                        revert with 0, 
                                    32,
                                    43,
                                    0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 404 len 21]
        else:
            mem[(32 * arg5.length) + 260] = return_data.size
            mem[(32 * arg5.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 365 len 28]
            if not return_data.size:
                idx = 0
                s = arg2
                while idx < arg5.length:
                    require idx < arg5.length
                    _2298 = mem[(32 * idx) + 128]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 368 len 25]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(1, 160, _2298):
                        if not s:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if not Mask(1, 160, _2298):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2636 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2636)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_2636), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2637 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2637)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_2637), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            continue 
                        if Mask(95, 0, _2298) >> 161 * s / s != Mask(95, 0, _2298) >> 161:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if not Mask(95, 0, _2298) >> 161 * s:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if Mask(95, 0, _2298) >> 161 * s < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require Mask(95, 0, _2298) >> 161 * s
                                if not Mask(1, 160, _2298):
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2298) >> 161 * s
                                        if arg4:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2298))
                                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2298) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                        else:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2298))
                                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2298) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2634 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2298) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2634)
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2298) >> 161 * s, address(_2634), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2298) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                        if arg4:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2298))
                                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2298) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                        else:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2298))
                                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2298) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2635 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2298) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2635)
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2298) >> 161 * s, 0, address(_2635), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 0 / Mask(95, 0, _2298) >> 161 * s
                                continue 
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                            if (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            if not Mask(1, 160, _2298):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2892 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2892)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_2892), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2893 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2893)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_2893), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            continue 
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(95, 0, _2298) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2298) >> 161 * s
                            if not Mask(1, 160, _2298):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2890 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2890)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, address(_2890), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2891 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2891)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, address(_2891), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        if not Mask(1, 160, _2298):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _3122 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3122)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_3122), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _3123 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3123)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_3123), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if not s:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if not Mask(1, 160, _2298):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2640 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2640)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_2640), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2641 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2641)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_2641), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                    if Mask(95, 0, _2298) >> 161 * s / s != Mask(95, 0, _2298) >> 161:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if not Mask(95, 0, _2298) >> 161 * s:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(95, 0, _2298) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2298) >> 161 * s
                            if not Mask(1, 160, _2298):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2298) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2298) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2298) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2638 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2638)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _2298) >> 161 * s, address(_2638), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2298) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2298))
                                        call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2298) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2639 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2298) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2639)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _2298) >> 161 * s, 0, address(_2639), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / Mask(95, 0, _2298) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        if not Mask(1, 160, _2298):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2896 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2896)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_2896), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2897 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2897)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_2897), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if Mask(95, 0, _2298) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _2298) >> 161 * s
                        if not Mask(1, 160, _2298):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2894 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2894)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, address(_2894), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2298))
                                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2895 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2895)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s, 0, address(_2895), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / Mask(95, 0, _2298) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    if not Mask(1, 160, _2298):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            if arg4:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            require idx + 1 < arg5.length
                            _3124 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3124)
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                            require ext_code.size(address(_2298))
                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_3124), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                            if arg4:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2298))
                                call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            require idx + 1 < arg5.length
                            _3125 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3125)
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                            require ext_code.size(address(_2298))
                            call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_3125), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2298) >> 161 * s / (Mask(95, 0, _2298) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * arg5.length) + 292]:
                    revert with 0, 
                                32,
                                36,
                                0x545472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 365 len 28]
                idx = 0
                s = arg2
                while idx < arg5.length:
                    require idx < arg5.length
                    _2301 = mem[(32 * idx) + 128]
                    if s <= 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe556e697377617056324c69623a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 368 len 25]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not Mask(1, 160, _2301):
                        if not s:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            if not Mask(1, 160, _2301):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2644 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2644)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(_2644), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2645 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2645)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(_2645), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                            continue 
                        if Mask(95, 0, _2301) >> 161 * s / s != Mask(95, 0, _2301) >> 161:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if not Mask(95, 0, _2301) >> 161 * s:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if Mask(95, 0, _2301) >> 161 * s < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require Mask(95, 0, _2301) >> 161 * s
                                if not Mask(1, 160, _2301):
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2301) >> 161 * s
                                        if arg4:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2301))
                                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2301) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                        else:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2301))
                                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0 / Mask(95, 0, _2301) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2642 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2301) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2642)
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2301) >> 161 * s, address(_2642), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    if idx + 1 == arg5.length:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2301) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                        if arg4:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2301))
                                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2301) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                        else:
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                            require ext_code.size(address(_2301))
                                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                 gas gas_remaining wei
                                                args 0 / Mask(95, 0, _2301) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        require idx + 1 < arg5.length
                                        _2643 = mem[(32 * idx + 1) + 128]
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2301) >> 161 * s
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2643)
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2301) >> 161 * s, 0, address(_2643), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 0 / Mask(95, 0, _2301) >> 161 * s
                                continue 
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                                revert with 0, 
                                            32,
                                            33,
                                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                            if (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            require (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            if not Mask(1, 160, _2301):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2900 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2900)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_2900), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2901 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2901)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_2901), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                            continue 
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(95, 0, _2301) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2301) >> 161 * s
                            if not Mask(1, 160, _2301):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2898 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2898)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, address(_2898), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2899 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2899)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, address(_2899), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        if not Mask(1, 160, _2301):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _3126 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3126)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(_3126), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _3127 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3127)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_3127), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if not s:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 10000 * Mask(112, 0, ext_call.return_data[32])
                        if not Mask(1, 160, _2301):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2648 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2648)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(_2648), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2649 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2649)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(_2649), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        continue 
                    if Mask(95, 0, _2301) >> 161 * s / s != Mask(95, 0, _2301) >> 161:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if not Mask(95, 0, _2301) >> 161 * s:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(95, 0, _2301) >> 161 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require Mask(95, 0, _2301) >> 161 * s
                            if not Mask(1, 160, _2301):
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2301) >> 161 * s
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2301) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / Mask(95, 0, _2301) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2646 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2646)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / Mask(95, 0, _2301) >> 161 * s, address(_2646), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                if idx + 1 == arg5.length:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    if arg4:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2301) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_2301))
                                        call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0 / Mask(95, 0, _2301) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    require idx + 1 < arg5.length
                                    _2647 = mem[(32 * idx + 1) + 128]
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / Mask(95, 0, _2301) >> 161 * s
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2647)
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / Mask(95, 0, _2301) >> 161 * s, 0, address(_2647), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / Mask(95, 0, _2301) >> 161 * s
                            continue 
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                        if (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        if not Mask(1, 160, _2301):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2904 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2904)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_2904), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2905 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2905)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_2905), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if Mask(95, 0, _2301) >> 161 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require Mask(95, 0, _2301) >> 161 * s
                        if not Mask(1, 160, _2301):
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2902 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2902)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, address(_2902), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            if idx + 1 == arg5.length:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                if arg4:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_2301))
                                    call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                require idx + 1 < arg5.length
                                _2903 = mem[(32 * idx + 1) + 128]
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_2903)
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s, 0, address(_2903), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / Mask(95, 0, _2301) >> 161 * s
                        continue 
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 362 len 31]
                    if (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    if not Mask(1, 160, _2301):
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            if arg4:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            require idx + 1 < arg5.length
                            _3128 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3128)
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                            require ext_code.size(address(_2301))
                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(_3128), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                    else:
                        if idx + 1 == arg5.length:
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                            if arg4:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = this.address
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = msg.sender
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                                require ext_code.size(address(_2301))
                                call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, msg.sender, 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                        else:
                            require idx + 1 < arg5.length
                            _3129 = mem[(32 * idx + 1) + 128]
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 265] = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 297] = 0
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 329] = address(_3129)
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 361] = 128
                            mem[(32 * arg5.length) + ceil32(return_data.size) + 393] = 0
                            require ext_code.size(address(_2301))
                            call address(_2301).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_3129), 128, 0, mem[(32 * arg5.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0]) * Mask(95, 0, _2301) >> 161 * s / (Mask(95, 0, _2301) >> 161 * s) + (10000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            if not arg4:
                if s < arg3:
                    revert with 0, 
                                32,
                                43,
                                0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[(32 * arg5.length) + ceil32(return_data.size) + 372 len 21]
            else:
                require ext_code.size(arg4)
                call arg4.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 396 len 29]
                    if s < arg3:
                        revert with 0, 
                                    32,
                                    43,
                                    0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * arg5.length) + ceil32(return_data.size) + 404 len 21]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * arg5.length) + (2 * ceil32(return_data.size)) + 397 len 29]
                    if s < arg3:
                        revert with 0, 
                                    32,
                                    43,
                                    0x44556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[(32 * arg5.length) + (2 * ceil32(return_data.size)) + 405 len 21]
    ('ge', ('var', 1), ('param', 'arg3'))
    return s
}



}
