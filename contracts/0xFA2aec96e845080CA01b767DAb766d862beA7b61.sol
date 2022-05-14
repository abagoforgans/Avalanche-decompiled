contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const hi = 12


address factoryAddress;
address sushiRouterAddress;

function sushiRouter() payable {
    return sushiRouterAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, this.address, 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_43add587(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg3.length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        require arg3.length - 1 < arg3.length
        mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
        idx = mem[96] - 1
        while idx:
            require idx - 1 < mem[96]
            require idx < mem[96]
            _988 = mem[(32 * idx) + 128]
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1033 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_988)
                    _1034 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1036 = sha3(mem[_1034 + 32 len mem[_1034]])
                    mem[_1033 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1033 + 105] = address(arg1)
                    mem[_1033 + 125] = _1036
                    mem[_1033 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                    mem[_1033 + 72] = 85
                    require ext_code.size(address(sha3(0, arg1, _1036, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                    staticcall address(sha3(0, arg1, _1036, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1033 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                        _1145 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1033 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1033 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1033 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[64] = _1033 + 253
                            mem[_1033 + 189] = 30
                            mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                            if _1145 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1033 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                revert with 0, 32, 30, mem[_1033 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1145
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145) / Mask(112, 0, ext_call.return_data[32]) - _1145 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                                mem[64] = _1033 + 253
                                mem[_1033 + 189] = 30
                                mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                                if _1145 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1033 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1033 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1145
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145) / Mask(112, 0, ext_call.return_data[32]) - _1145 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 290 len 31]
                                mem[64] = _1033 + 253
                                mem[_1033 + 189] = 30
                                mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                                if _1145 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1033 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1033 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1145
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145) / Mask(112, 0, ext_call.return_data[32]) - _1145 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)
                                if (1000 * _1145 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1 < 1000 * _1145 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1145 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1145)) + 1
                    else:
                        _1146 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1033 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1033 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1033 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[64] = _1033 + 253
                            mem[_1033 + 189] = 30
                            mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                            if _1146 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1033 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                revert with 0, 32, 30, mem[_1033 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1146
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146) / Mask(112, 0, ext_call.return_data[0]) - _1146 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                                mem[64] = _1033 + 253
                                mem[_1033 + 189] = 30
                                mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                                if _1146 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1033 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1033 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1146
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146) / Mask(112, 0, ext_call.return_data[0]) - _1146 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 290 len 31]
                                mem[64] = _1033 + 253
                                mem[_1033 + 189] = 30
                                mem[_1033 + 221] = 'SafeMath: subtraction overflow'
                                if _1146 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1033 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1033 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1033 + 321] = mem[idx + _1033 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1033 + 321] = mem[_1033 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1033 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1146
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146) / Mask(112, 0, ext_call.return_data[0]) - _1146 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1033 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)
                                if (1000 * _1146 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1 < 1000 * _1146 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1146 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1146)) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1040 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _1041 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1043 = sha3(mem[_1041 + 32 len mem[_1041]])
                    mem[_1040 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1040 + 105] = address(arg1)
                    mem[_1040 + 125] = _1043
                    mem[_1040 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                    mem[_1040 + 72] = 85
                    require ext_code.size(address(sha3(0, arg1, _1043, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                    staticcall address(sha3(0, arg1, _1043, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1040 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                        _1147 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1040 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1040 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1040 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[64] = _1040 + 253
                            mem[_1040 + 189] = 30
                            mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                            if _1147 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1040 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                revert with 0, 32, 30, mem[_1040 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1147
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147) / Mask(112, 0, ext_call.return_data[32]) - _1147 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                                mem[64] = _1040 + 253
                                mem[_1040 + 189] = 30
                                mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                                if _1147 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1040 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1040 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1147
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147) / Mask(112, 0, ext_call.return_data[32]) - _1147 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 290 len 31]
                                mem[64] = _1040 + 253
                                mem[_1040 + 189] = 30
                                mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                                if _1147 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1040 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1040 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1147
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147) / Mask(112, 0, ext_call.return_data[32]) - _1147 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)
                                if (1000 * _1147 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1 < 1000 * _1147 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1147 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1147)) + 1
                    else:
                        _1148 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1040 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1040 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1040 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[64] = _1040 + 253
                            mem[_1040 + 189] = 30
                            mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                            if _1148 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1040 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                revert with 0, 32, 30, mem[_1040 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1148
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148) / Mask(112, 0, ext_call.return_data[0]) - _1148 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                                mem[64] = _1040 + 253
                                mem[_1040 + 189] = 30
                                mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                                if _1148 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1040 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1040 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1148
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148) / Mask(112, 0, ext_call.return_data[0]) - _1148 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 290 len 31]
                                mem[64] = _1040 + 253
                                mem[_1040 + 189] = 30
                                mem[_1040 + 221] = 'SafeMath: subtraction overflow'
                                if _1148 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1040 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1040 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1040 + 321] = mem[idx + _1040 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1040 + 321] = mem[_1040 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1040 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1148
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148) / Mask(112, 0, ext_call.return_data[0]) - _1148 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1040 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)
                                if (1000 * _1148 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1 < 1000 * _1148 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1148 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1148)) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                    if not mem[(32 * idx - 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1047 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                    mem[mem[64] + 52] = address(_988)
                    _1048 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1050 = sha3(mem[_1048 + 32 len mem[_1048]])
                    mem[_1047 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1047 + 105] = address(arg1)
                    mem[_1047 + 125] = _1050
                    mem[_1047 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                    mem[_1047 + 72] = 85
                    require ext_code.size(address(sha3(0, arg1, _1050, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                    staticcall address(sha3(0, arg1, _1050, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1047 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_988) == mem[(32 * idx - 1) + 140 len 20]:
                        _1149 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1047 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1047 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1047 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[64] = _1047 + 253
                            mem[_1047 + 189] = 30
                            mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                            if _1149 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1047 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                revert with 0, 32, 30, mem[_1047 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1149
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149) / Mask(112, 0, ext_call.return_data[32]) - _1149 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                                mem[64] = _1047 + 253
                                mem[_1047 + 189] = 30
                                mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                                if _1149 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1047 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1047 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1149
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149) / Mask(112, 0, ext_call.return_data[32]) - _1149 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 290 len 31]
                                mem[64] = _1047 + 253
                                mem[_1047 + 189] = 30
                                mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                                if _1149 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1047 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1047 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1149
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149) / Mask(112, 0, ext_call.return_data[32]) - _1149 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)
                                if (1000 * _1149 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1 < 1000 * _1149 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1149 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1149)) + 1
                    else:
                        _1150 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1047 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1047 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1047 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[64] = _1047 + 253
                            mem[_1047 + 189] = 30
                            mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                            if _1150 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1047 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                revert with 0, 32, 30, mem[_1047 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1150
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150) / Mask(112, 0, ext_call.return_data[0]) - _1150 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                                mem[64] = _1047 + 253
                                mem[_1047 + 189] = 30
                                mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                                if _1150 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1047 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1047 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1150
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150) / Mask(112, 0, ext_call.return_data[0]) - _1150 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 290 len 31]
                                mem[64] = _1047 + 253
                                mem[_1047 + 189] = 30
                                mem[_1047 + 221] = 'SafeMath: subtraction overflow'
                                if _1150 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1047 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1047 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1047 + 321] = mem[idx + _1047 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1047 + 321] = mem[_1047 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1047 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1150
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150) / Mask(112, 0, ext_call.return_data[0]) - _1150 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1047 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)
                                if (1000 * _1150 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1 < 1000 * _1150 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1150 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1150)) + 1
                else:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _1054 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                    mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                    _1055 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _1057 = sha3(mem[_1055 + 32 len mem[_1055]])
                    mem[_1054 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1054 + 105] = address(arg1)
                    mem[_1054 + 125] = _1057
                    mem[_1054 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                    mem[_1054 + 72] = 85
                    require ext_code.size(address(sha3(0, arg1, _1057, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                    staticcall address(sha3(0, arg1, _1057, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1054 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg3.length) + 128]
                    if address(_988) == mem[(32 * idx - 1) + 140 len 20]:
                        _1151 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1054 + 301 len 20]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1054 + 297 len 24]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1054 + 297 len 24]
                        if not ext_call.return_data[18 len 14]:
                            mem[64] = _1054 + 253
                            mem[_1054 + 189] = 30
                            mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                            if _1151 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1054 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                revert with 0, 32, 30, mem[_1054 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1151
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151) / Mask(112, 0, ext_call.return_data[32]) - _1151 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                                mem[64] = _1054 + 253
                                mem[_1054 + 189] = 30
                                mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                                if _1151 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1054 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1054 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1151
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151) / Mask(112, 0, ext_call.return_data[32]) - _1151 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 290 len 31]
                                mem[64] = _1054 + 253
                                mem[_1054 + 189] = 30
                                mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                                if _1151 > Mask(112, 0, ext_call.return_data[32]):
                                    mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1054 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1054 + 321]
                                require Mask(112, 0, ext_call.return_data[32]) - _1151
                                if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151) / Mask(112, 0, ext_call.return_data[32]) - _1151 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)
                                if (1000 * _1151 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1 < 1000 * _1151 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1151 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1151)) + 1
                    else:
                        _1152 = mem[(32 * idx) + (32 * arg3.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                        mem[_1054 + 301 len 20]
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1054 + 297 len 24]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1054 + 297 len 24]
                        if not ext_call.return_data[50 len 14]:
                            mem[64] = _1054 + 253
                            mem[_1054 + 189] = 30
                            mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                            if _1152 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1054 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                revert with 0, 32, 30, mem[_1054 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1152
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152) / Mask(112, 0, ext_call.return_data[0]) - _1152 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1
                        else:
                            if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 290 len 31]
                            if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                                mem[64] = _1054 + 253
                                mem[_1054 + 189] = 30
                                mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                                if _1152 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1054 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1054 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1152
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152) / Mask(112, 0, ext_call.return_data[0]) - _1152 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)
                                if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1
                            else:
                                if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 290 len 31]
                                mem[64] = _1054 + 253
                                mem[_1054 + 189] = 30
                                mem[_1054 + 221] = 'SafeMath: subtraction overflow'
                                if _1152 > Mask(112, 0, ext_call.return_data[0]):
                                    mem[_1054 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1054 + 257] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1054 + 321] = mem[idx + _1054 + 221]
                                        idx = idx + 32
                                        continue 
                                    mem[_1054 + 321] = mem[_1054 + 323 len 30]
                                    revert with 0, 32, 30, mem[_1054 + 321]
                                require Mask(112, 0, ext_call.return_data[0]) - _1152
                                if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152) / Mask(112, 0, ext_call.return_data[0]) - _1152 != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1054 + 354 len 31]
                                require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)
                                if (1000 * _1152 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1 < 1000 * _1152 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152):
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx - 1 < mem[(32 * arg3.length) + 128]
                                mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1152 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1152)) + 1
            idx = idx - 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        _987 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _987) + 32]
    mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    require arg3.length - 1 < arg3.length
    mem[(32 * arg3.length - 1) + (32 * arg3.length) + 160] = arg2
    idx = mem[96] - 1
    while idx:
        require idx - 1 < mem[96]
        require idx < mem[96]
        _992 = mem[(32 * idx) + 128]
        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx - 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1061 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_992)
                _1062 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1064 = sha3(mem[_1062 + 32 len mem[_1062]])
                mem[_1061 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1061 + 105] = address(arg1)
                mem[_1061 + 125] = _1064
                mem[_1061 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                mem[_1061 + 72] = 85
                require ext_code.size(address(sha3(0, arg1, _1064, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                staticcall address(sha3(0, arg1, _1064, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                        gas gas_remaining wei
                mem[_1061 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    _1153 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1061 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1061 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1061 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[64] = _1061 + 253
                        mem[_1061 + 189] = 30
                        mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                        if _1153 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1061 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1061 + 321] = mem[_1061 + 323 len 30]
                            revert with 0, 32, 30, mem[_1061 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _1153
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153) / Mask(112, 0, ext_call.return_data[32]) - _1153 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                            mem[64] = _1061 + 253
                            mem[_1061 + 189] = 30
                            mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                            if _1153 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1061 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1061 + 321] = mem[_1061 + 323 len 30]
                                revert with 0, 32, 30, mem[_1061 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1153
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153) / Mask(112, 0, ext_call.return_data[32]) - _1153 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 290 len 31]
                            mem[64] = _1061 + 253
                            mem[_1061 + 189] = 30
                            mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                            if _1153 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1061 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1061 + 321] = mem[_1061 + 323 len 30]
                                revert with 0, 32, 30, mem[_1061 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1153
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153) / Mask(112, 0, ext_call.return_data[32]) - _1153 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)
                            if (1000 * _1153 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1 < 1000 * _1153 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1153 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1153)) + 1
                else:
                    _1154 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1061 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1061 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1061 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[64] = _1061 + 253
                        mem[_1061 + 189] = 30
                        mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                        if _1154 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1061 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1061 + 321] = mem[_1061 + 323 len 30]
                            revert with 0, 32, 30, mem[_1061 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _1154
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154) / Mask(112, 0, ext_call.return_data[0]) - _1154 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                            mem[64] = _1061 + 253
                            mem[_1061 + 189] = 30
                            mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                            if _1154 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1061 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1061 + 321] = mem[_1061 + 323 len 30]
                                revert with 0, 32, 30, mem[_1061 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1154
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154) / Mask(112, 0, ext_call.return_data[0]) - _1154 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 290 len 31]
                            mem[64] = _1061 + 253
                            mem[_1061 + 189] = 30
                            mem[_1061 + 221] = 'SafeMath: subtraction overflow'
                            if _1154 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1061 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1061 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1061 + 321] = mem[idx + _1061 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1061 + 321] = mem[_1061 + 323 len 30]
                                revert with 0, 32, 30, mem[_1061 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1154
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154) / Mask(112, 0, ext_call.return_data[0]) - _1154 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1061 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)
                            if (1000 * _1154 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1 < 1000 * _1154 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1154 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1154)) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1068 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1069 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1071 = sha3(mem[_1069 + 32 len mem[_1069]])
                mem[_1068 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1068 + 105] = address(arg1)
                mem[_1068 + 125] = _1071
                mem[_1068 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                mem[_1068 + 72] = 85
                require ext_code.size(address(sha3(0, arg1, _1071, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                staticcall address(sha3(0, arg1, _1071, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                        gas gas_remaining wei
                mem[_1068 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg3.length) + 128]
                if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx - 1) + 140 len 20]:
                    _1155 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1068 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1068 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1068 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[64] = _1068 + 253
                        mem[_1068 + 189] = 30
                        mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                        if _1155 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1068 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1068 + 321] = mem[_1068 + 323 len 30]
                            revert with 0, 32, 30, mem[_1068 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _1155
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155) / Mask(112, 0, ext_call.return_data[32]) - _1155 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                            mem[64] = _1068 + 253
                            mem[_1068 + 189] = 30
                            mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                            if _1155 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1068 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1068 + 321] = mem[_1068 + 323 len 30]
                                revert with 0, 32, 30, mem[_1068 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1155
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155) / Mask(112, 0, ext_call.return_data[32]) - _1155 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 290 len 31]
                            mem[64] = _1068 + 253
                            mem[_1068 + 189] = 30
                            mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                            if _1155 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1068 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1068 + 321] = mem[_1068 + 323 len 30]
                                revert with 0, 32, 30, mem[_1068 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1155
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155) / Mask(112, 0, ext_call.return_data[32]) - _1155 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)
                            if (1000 * _1155 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1 < 1000 * _1155 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1155 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1155)) + 1
                else:
                    _1156 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1068 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1068 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1068 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[64] = _1068 + 253
                        mem[_1068 + 189] = 30
                        mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                        if _1156 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1068 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1068 + 321] = mem[_1068 + 323 len 30]
                            revert with 0, 32, 30, mem[_1068 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _1156
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156) / Mask(112, 0, ext_call.return_data[0]) - _1156 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                            mem[64] = _1068 + 253
                            mem[_1068 + 189] = 30
                            mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                            if _1156 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1068 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1068 + 321] = mem[_1068 + 323 len 30]
                                revert with 0, 32, 30, mem[_1068 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1156
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156) / Mask(112, 0, ext_call.return_data[0]) - _1156 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 290 len 31]
                            mem[64] = _1068 + 253
                            mem[_1068 + 189] = 30
                            mem[_1068 + 221] = 'SafeMath: subtraction overflow'
                            if _1156 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1068 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1068 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1068 + 321] = mem[idx + _1068 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1068 + 321] = mem[_1068 + 323 len 30]
                                revert with 0, 32, 30, mem[_1068 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1156
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156) / Mask(112, 0, ext_call.return_data[0]) - _1156 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1068 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)
                            if (1000 * _1156 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1 < 1000 * _1156 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1156 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1156)) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1075 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_992)
                _1076 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1078 = sha3(mem[_1076 + 32 len mem[_1076]])
                mem[_1075 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1075 + 105] = address(arg1)
                mem[_1075 + 125] = _1078
                mem[_1075 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                mem[_1075 + 72] = 85
                require ext_code.size(address(sha3(0, arg1, _1078, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                staticcall address(sha3(0, arg1, _1078, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                        gas gas_remaining wei
                mem[_1075 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg3.length) + 128]
                if address(_992) == mem[(32 * idx - 1) + 140 len 20]:
                    _1157 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1075 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1075 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1075 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[64] = _1075 + 253
                        mem[_1075 + 189] = 30
                        mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                        if _1157 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1075 + 321] = mem[_1075 + 323 len 30]
                            revert with 0, 32, 30, mem[_1075 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _1157
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157) / Mask(112, 0, ext_call.return_data[32]) - _1157 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                            mem[64] = _1075 + 253
                            mem[_1075 + 189] = 30
                            mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                            if _1157 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1075 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1075 + 321] = mem[_1075 + 323 len 30]
                                revert with 0, 32, 30, mem[_1075 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1157
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157) / Mask(112, 0, ext_call.return_data[32]) - _1157 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 290 len 31]
                            mem[64] = _1075 + 253
                            mem[_1075 + 189] = 30
                            mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                            if _1157 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1075 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1075 + 321] = mem[_1075 + 323 len 30]
                                revert with 0, 32, 30, mem[_1075 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1157
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157) / Mask(112, 0, ext_call.return_data[32]) - _1157 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)
                            if (1000 * _1157 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1 < 1000 * _1157 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1157 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1157)) + 1
                else:
                    _1158 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1075 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1075 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1075 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[64] = _1075 + 253
                        mem[_1075 + 189] = 30
                        mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                        if _1158 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1075 + 321] = mem[_1075 + 323 len 30]
                            revert with 0, 32, 30, mem[_1075 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _1158
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158) / Mask(112, 0, ext_call.return_data[0]) - _1158 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                            mem[64] = _1075 + 253
                            mem[_1075 + 189] = 30
                            mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                            if _1158 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1075 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1075 + 321] = mem[_1075 + 323 len 30]
                                revert with 0, 32, 30, mem[_1075 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1158
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158) / Mask(112, 0, ext_call.return_data[0]) - _1158 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 290 len 31]
                            mem[64] = _1075 + 253
                            mem[_1075 + 189] = 30
                            mem[_1075 + 221] = 'SafeMath: subtraction overflow'
                            if _1158 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1075 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1075 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1075 + 321] = mem[idx + _1075 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1075 + 321] = mem[_1075 + 323 len 30]
                                revert with 0, 32, 30, mem[_1075 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1158
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158) / Mask(112, 0, ext_call.return_data[0]) - _1158 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1075 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)
                            if (1000 * _1158 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1 < 1000 * _1158 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1158 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1158)) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1082 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _1083 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1085 = sha3(mem[_1083 + 32 len mem[_1083]])
                mem[_1082 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1082 + 105] = address(arg1)
                mem[_1082 + 125] = _1085
                mem[_1082 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                mem[_1082 + 72] = 85
                require ext_code.size(address(sha3(0, arg1, _1085, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                staticcall address(sha3(0, arg1, _1085, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                        gas gas_remaining wei
                mem[_1082 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg3.length) + 128]
                if address(_992) == mem[(32 * idx - 1) + 140 len 20]:
                    _1159 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1082 + 301 len 20]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1082 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1082 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        mem[64] = _1082 + 253
                        mem[_1082 + 189] = 30
                        mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                        if _1159 > Mask(112, 0, ext_call.return_data[32]):
                            mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1082 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1082 + 321] = mem[_1082 + 323 len 30]
                            revert with 0, 32, 30, mem[_1082 + 321]
                        require Mask(112, 0, ext_call.return_data[32]) - _1159
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159) / Mask(112, 0, ext_call.return_data[32]) - _1159 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14]:
                            mem[64] = _1082 + 253
                            mem[_1082 + 189] = 30
                            mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                            if _1159 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1082 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 321] = mem[_1082 + 323 len 30]
                                revert with 0, 32, 30, mem[_1082 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1159
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159) / Mask(112, 0, ext_call.return_data[32]) - _1159 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 290 len 31]
                            mem[64] = _1082 + 253
                            mem[_1082 + 189] = 30
                            mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                            if _1159 > Mask(112, 0, ext_call.return_data[32]):
                                mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1082 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 321] = mem[_1082 + 323 len 30]
                                revert with 0, 32, 30, mem[_1082 + 321]
                            require Mask(112, 0, ext_call.return_data[32]) - _1159
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159) / Mask(112, 0, ext_call.return_data[32]) - _1159 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)
                            if (1000 * _1159 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1 < 1000 * _1159 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1159 * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * _1159)) + 1
                else:
                    _1160 = mem[(32 * idx) + (32 * arg3.length) + 160]
                    if mem[(32 * idx) + (32 * arg3.length) + 160] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                    mem[_1082 + 301 len 20]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1082 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_1082 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        mem[64] = _1082 + 253
                        mem[_1082 + 189] = 30
                        mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                        if _1160 > Mask(112, 0, ext_call.return_data[0]):
                            mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1082 + 257] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                idx = idx + 32
                                continue 
                            mem[_1082 + 321] = mem[_1082 + 323 len 30]
                            revert with 0, 32, 30, mem[_1082 + 321]
                        require Mask(112, 0, ext_call.return_data[0]) - _1160
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160) / Mask(112, 0, ext_call.return_data[0]) - _1160 != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1
                    else:
                        if mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + (32 * arg3.length) + 160]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 290 len 31]
                        if not mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14]:
                            mem[64] = _1082 + 253
                            mem[_1082 + 189] = 30
                            mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                            if _1160 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1082 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 321] = mem[_1082 + 323 len 30]
                                revert with 0, 32, 30, mem[_1082 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1160
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160) / Mask(112, 0, ext_call.return_data[0]) - _1160 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1
                        else:
                            if 1000 * mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] / mem[(32 * idx) + (32 * arg3.length) + 160] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 290 len 31]
                            mem[64] = _1082 + 253
                            mem[_1082 + 189] = 30
                            mem[_1082 + 221] = 'SafeMath: subtraction overflow'
                            if _1160 > Mask(112, 0, ext_call.return_data[0]):
                                mem[_1082 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1082 + 257] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1082 + 321] = mem[idx + _1082 + 221]
                                    idx = idx + 32
                                    continue 
                                mem[_1082 + 321] = mem[_1082 + 323 len 30]
                                revert with 0, 32, 30, mem[_1082 + 321]
                            require Mask(112, 0, ext_call.return_data[0]) - _1160
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160) / Mask(112, 0, ext_call.return_data[0]) - _1160 != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1082 + 354 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)
                            if (1000 * _1160 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1 < 1000 * _1160 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[(32 * arg3.length) + 128]
                            mem[(32 * idx - 1) + (32 * arg3.length) + 160] = (1000 * _1160 * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * _1160)) + 1
        idx = idx - 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    _991 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _991) + 32]
}



}
