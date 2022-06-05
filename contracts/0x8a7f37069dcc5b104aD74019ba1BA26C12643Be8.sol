contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
uint256 unlockTime;

function unlockTime() {
    return unlockTime
}

function _fallback() payable {
    revert
}

function lockPool(uint256 arg1) {
    require calldata.size - 4 >= 32
}

function sub_ca92ef5f(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Invalid sender'
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), '1'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addressToBytes(address arg1) {
    require calldata.size - 4 >= 32
    mem[116] = 0x140000000000000000000000000000000000000000 xor arg1
    mem[64] = 148
    mem[148] = 32
    mem[180] = mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160
    mem[212 len ceil32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160)] = mem[128 len ceil32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160)]
    if not Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1):
        return memory
          from 148
           len mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160 + 64
    mem[floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 212] = mem[floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + -(Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 244 len Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160]
    return memory
      from 148
       len floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 96
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = address(ext_call.return_data[0])
    mem[160] = address(ext_call.return_data[0])
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    if not arg2:
        mem[224] = arg3
        if not arg2:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3085 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3112 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3429 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3112)
                        _3430 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3432 = sha3(mem[_3430 + 32 len mem[_3430]])
                        mem[_3429 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3429 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3429 + 125] = _3432
                        mem[_3429 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3429 + 72] = 85
                        mem[64] = _3429 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3432, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3432, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3429 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3429 + 294 len 27]
                        if address(_3085) == address(_3085):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3429 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3429 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3429 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3429 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3429 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3437 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3085)
                        _3438 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3440 = sha3(mem[_3438 + 32 len mem[_3438]])
                        mem[_3437 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3437 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3437 + 125] = _3440
                        mem[_3437 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3437 + 72] = 85
                        mem[64] = _3437 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3440, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3440, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3437 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3437 + 294 len 27]
                        if address(_3085) == address(_3085):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3437 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3437 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3437 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3437 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3437 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3445 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3112)
                        _3446 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3448 = sha3(mem[_3446 + 32 len mem[_3446]])
                        mem[_3445 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3445 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3445 + 125] = _3448
                        mem[_3445 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3445 + 72] = 85
                        mem[64] = _3445 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3448, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3448, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3445 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3445 + 294 len 27]
                        if address(_3085) == address(_3112):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3445 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3445 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3445 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3445 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3445 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3453 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3085)
                        _3454 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3456 = sha3(mem[_3454 + 32 len mem[_3454]])
                        mem[_3453 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3453 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3453 + 125] = _3456
                        mem[_3453 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3453 + 72] = 85
                        mem[64] = _3453 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3456, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3456, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3453 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3453 + 294 len 27]
                        if address(_3085) == address(_3112):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3453 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3453 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3453 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3453 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3453 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3109 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3109
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3109, arg3, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6090 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6099 = mem[_6090]
            require mem[_6090] <= 4294967296
            require mem[_6090] + 32 <= return_data.size
            require mem[mem[_6090] + _6090] <= 4294967296 and mem[_6090] + (32 * mem[mem[_6090] + _6090]) + 32 <= return_data.size
            mem[_6090 + ceil32(return_data.size)] = mem[mem[_6090] + _6090]
            mem[64] = (32 * mem[_6099 + _6090]) + _6090 + ceil32(return_data.size) + 32
            require 1 < mem[_6090 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3109
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3091 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3120 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3497 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3120)
                        _3498 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3500 = sha3(mem[_3498 + 32 len mem[_3498]])
                        mem[_3497 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3497 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3497 + 125] = _3500
                        mem[_3497 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3497 + 72] = 85
                        mem[64] = _3497 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3500, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3500, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3497 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3497 + 294 len 27]
                        if address(_3091) == address(_3091):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3497 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3497 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3497 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3497 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3497 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3505 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3091)
                        _3506 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3508 = sha3(mem[_3506 + 32 len mem[_3506]])
                        mem[_3505 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3505 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3505 + 125] = _3508
                        mem[_3505 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3505 + 72] = 85
                        mem[64] = _3505 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3508, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3508, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3505 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3505 + 294 len 27]
                        if address(_3091) == address(_3091):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3505 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3505 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3505 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3505 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3505 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3513 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3120)
                        _3514 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3516 = sha3(mem[_3514 + 32 len mem[_3514]])
                        mem[_3513 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3513 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3513 + 125] = _3516
                        mem[_3513 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3513 + 72] = 85
                        mem[64] = _3513 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3516, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3516, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3513 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3513 + 294 len 27]
                        if address(_3091) == address(_3120):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3513 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3513 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3513 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3513 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3513 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3521 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3091)
                        _3522 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3524 = sha3(mem[_3522 + 32 len mem[_3522]])
                        mem[_3521 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3521 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3521 + 125] = _3524
                        mem[_3521 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3521 + 72] = 85
                        mem[64] = _3521 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3524, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3524, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3521 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3521 + 294 len 27]
                        if address(_3091) == address(_3120):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3521 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3521 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3521 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3521 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3521 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3117 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3117
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3117, arg3, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6092 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6103 = mem[_6092]
            require mem[_6092] <= 4294967296
            require mem[_6092] + 32 <= return_data.size
            require mem[mem[_6092] + _6092] <= 4294967296 and mem[_6092] + (32 * mem[mem[_6092] + _6092]) + 32 <= return_data.size
            mem[_6092 + ceil32(return_data.size)] = mem[mem[_6092] + _6092]
            mem[64] = (32 * mem[_6103 + _6092]) + _6092 + ceil32(return_data.size) + 32
            require 1 < mem[_6092 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3117
    else:
        mem[224] = arg2
        if not arg2:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3097 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3128 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3565 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3128)
                        _3566 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3568 = sha3(mem[_3566 + 32 len mem[_3566]])
                        mem[_3565 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3565 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3565 + 125] = _3568
                        mem[_3565 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3565 + 72] = 85
                        mem[64] = _3565 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3568, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3568, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3565 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3565 + 294 len 27]
                        if address(_3097) == address(_3097):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3565 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3565 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3565 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3565 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3565 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3573 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3097)
                        _3574 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3576 = sha3(mem[_3574 + 32 len mem[_3574]])
                        mem[_3573 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3573 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3573 + 125] = _3576
                        mem[_3573 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3573 + 72] = 85
                        mem[64] = _3573 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3576, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3576, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3573 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3573 + 294 len 27]
                        if address(_3097) == address(_3097):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3573 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3573 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3573 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3573 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3573 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3581 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3128)
                        _3582 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3584 = sha3(mem[_3582 + 32 len mem[_3582]])
                        mem[_3581 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3581 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3581 + 125] = _3584
                        mem[_3581 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3581 + 72] = 85
                        mem[64] = _3581 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3584, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3584, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3581 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3581 + 294 len 27]
                        if address(_3097) == address(_3128):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3581 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3581 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3581 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3581 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3581 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3589 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3097)
                        _3590 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3592 = sha3(mem[_3590 + 32 len mem[_3590]])
                        mem[_3589 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3589 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3589 + 125] = _3592
                        mem[_3589 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3589 + 72] = 85
                        mem[64] = _3589 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3592, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3592, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3589 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3589 + 294 len 27]
                        if address(_3097) == address(_3128):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3589 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3589 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3589 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3589 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3589 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3125 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3125
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3125, arg2, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6094 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6107 = mem[_6094]
            require mem[_6094] <= 4294967296
            require mem[_6094] + 32 <= return_data.size
            require mem[mem[_6094] + _6094] <= 4294967296 and mem[_6094] + (32 * mem[mem[_6094] + _6094]) + 32 <= return_data.size
            mem[_6094 + ceil32(return_data.size)] = mem[mem[_6094] + _6094]
            mem[64] = (32 * mem[_6107 + _6094]) + _6094 + ceil32(return_data.size) + 32
            require 1 < mem[_6094 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3125
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3103 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3136 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3633 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3136)
                        _3634 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3636 = sha3(mem[_3634 + 32 len mem[_3634]])
                        mem[_3633 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3633 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3633 + 125] = _3636
                        mem[_3633 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3633 + 72] = 85
                        mem[64] = _3633 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3636, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3636, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3633 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3633 + 294 len 27]
                        if address(_3103) == address(_3103):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3633 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3633 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3633 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3633 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3633 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3641 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3103)
                        _3642 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3644 = sha3(mem[_3642 + 32 len mem[_3642]])
                        mem[_3641 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3641 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3641 + 125] = _3644
                        mem[_3641 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3641 + 72] = 85
                        mem[64] = _3641 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3644, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3644, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3641 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3641 + 294 len 27]
                        if address(_3103) == address(_3103):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3641 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3641 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3641 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3641 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3641 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3649 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3136)
                        _3650 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3652 = sha3(mem[_3650 + 32 len mem[_3650]])
                        mem[_3649 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3649 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3649 + 125] = _3652
                        mem[_3649 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3649 + 72] = 85
                        mem[64] = _3649 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3652, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3652, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3649 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3649 + 294 len 27]
                        if address(_3103) == address(_3136):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3649 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3649 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3649 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3649 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3649 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3657 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3103)
                        _3658 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3660 = sha3(mem[_3658 + 32 len mem[_3658]])
                        mem[_3657 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3657 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3657 + 125] = _3660
                        mem[_3657 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3657 + 72] = 85
                        mem[64] = _3657 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3660, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3660, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3657 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3657 + 294 len 27]
                        if address(_3103) == address(_3136):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3657 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3657 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3657 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3657 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                if not 997 * mem[(32 * idx) + 224]:
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3657 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3133 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3133
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3133, arg2, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6096 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6111 = mem[_6096]
            require mem[_6096] <= 4294967296
            require mem[_6096] + 32 <= return_data.size
            require mem[mem[_6096] + _6096] <= 4294967296 and mem[_6096] + (32 * mem[mem[_6096] + _6096]) + 32 <= return_data.size
            mem[_6096 + ceil32(return_data.size)] = mem[mem[_6096] + _6096]
            mem[64] = (32 * mem[_6111 + _6096]) + _6096 + ceil32(return_data.size) + 32
            require 1 < mem[_6096 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3133
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
