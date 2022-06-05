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
                _3333 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3356 = mem[(32 * idx + 1) + 128]
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
                        _3637 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3356)
                        _3638 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3640 = sha3(mem[_3638 + 32 len mem[_3638]])
                        mem[_3637 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3637 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3637 + 125] = _3640
                        mem[_3637 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3637 + 72] = 85
                        mem[64] = _3637 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3640, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3640, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3637 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3637 + 294 len 27]
                        if address(_3333) == address(_3333):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3637 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3637 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3637 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3637 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3637 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3645 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3333)
                        _3646 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3648 = sha3(mem[_3646 + 32 len mem[_3646]])
                        mem[_3645 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3645 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3645 + 125] = _3648
                        mem[_3645 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3645 + 72] = 85
                        mem[64] = _3645 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3648, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3648, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3645 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3645 + 294 len 27]
                        if address(_3333) == address(_3333):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3645 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3645 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3645 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3645 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3645 + 290 len 31]
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
                        _3653 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3356)
                        _3654 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3656 = sha3(mem[_3654 + 32 len mem[_3654]])
                        mem[_3653 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3653 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3653 + 125] = _3656
                        mem[_3653 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3653 + 72] = 85
                        mem[64] = _3653 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3656, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3656, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3653 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3653 + 294 len 27]
                        if address(_3333) == address(_3356):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3653 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3653 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3653 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3653 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3653 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3661 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3333)
                        _3662 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3664 = sha3(mem[_3662 + 32 len mem[_3662]])
                        mem[_3661 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3661 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3661 + 125] = _3664
                        mem[_3661 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3661 + 72] = 85
                        mem[64] = _3661 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3664, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3664, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3661 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3661 + 294 len 27]
                        if address(_3333) == address(_3356):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3661 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3661 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3661 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3661 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3661 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3355 = mem[256]
            if not mem[256]:
                _3402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3402] = 26
                mem[_3402 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg3 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, arg3 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6604 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6604] <= 4294967296
                require mem[_6604] + 32 <= return_data.size
                require mem[mem[_6604] + _6604] <= 4294967296 and mem[_6604] + (32 * mem[mem[_6604] + _6604]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require mem[256]
                if 1003 * mem[256] / mem[256] != 1003:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3442] = 26
                mem[_3442 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 1003 * _3355 / 1000
                mem[mem[64] + 36] = arg3 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 1003 * _3355 / 1000, arg3 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6603 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6603] <= 4294967296
                require mem[_6603] + 32 <= return_data.size
                require mem[mem[_6603] + _6603] <= 4294967296 and mem[_6603] + (32 * mem[mem[_6603] + _6603]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1003 * _3355 / 1000
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3339 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3360 = mem[(32 * idx + 1) + 128]
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
                        _3713 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3360)
                        _3714 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3716 = sha3(mem[_3714 + 32 len mem[_3714]])
                        mem[_3713 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3713 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3713 + 125] = _3716
                        mem[_3713 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3713 + 72] = 85
                        mem[64] = _3713 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3716, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3716, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3713 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3713 + 294 len 27]
                        if address(_3339) == address(_3339):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3713 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3713 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3713 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3713 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3713 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3721 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3339)
                        _3722 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3724 = sha3(mem[_3722 + 32 len mem[_3722]])
                        mem[_3721 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3721 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3721 + 125] = _3724
                        mem[_3721 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3721 + 72] = 85
                        mem[64] = _3721 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3724, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3724, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3721 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3721 + 294 len 27]
                        if address(_3339) == address(_3339):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3721 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3721 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3721 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3721 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3721 + 290 len 31]
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
                        _3729 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3360)
                        _3730 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3732 = sha3(mem[_3730 + 32 len mem[_3730]])
                        mem[_3729 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3729 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3729 + 125] = _3732
                        mem[_3729 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3729 + 72] = 85
                        mem[64] = _3729 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3732, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3732, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3729 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3729 + 294 len 27]
                        if address(_3339) == address(_3360):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3729 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3729 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3729 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3729 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3729 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3737 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3339)
                        _3738 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3740 = sha3(mem[_3738 + 32 len mem[_3738]])
                        mem[_3737 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3737 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3737 + 125] = _3740
                        mem[_3737 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3737 + 72] = 85
                        mem[64] = _3737 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3740, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3740, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3737 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3737 + 294 len 27]
                        if address(_3339) == address(_3360):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3737 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3737 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3737 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3737 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3737 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3359 = mem[256]
            if not mem[256]:
                _3404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3404] = 26
                mem[_3404 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg3 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, arg3 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6608 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6608] <= 4294967296
                require mem[_6608] + 32 <= return_data.size
                require mem[mem[_6608] + _6608] <= 4294967296 and mem[_6608] + (32 * mem[mem[_6608] + _6608]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require mem[256]
                if 1003 * mem[256] / mem[256] != 1003:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3444] = 26
                mem[_3444 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 1003 * _3359 / 1000
                mem[mem[64] + 36] = arg3 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 1003 * _3359 / 1000, arg3 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6607 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6607] <= 4294967296
                require mem[_6607] + 32 <= return_data.size
                require mem[mem[_6607] + _6607] <= 4294967296 and mem[_6607] + (32 * mem[mem[_6607] + _6607]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1003 * _3359 / 1000
    else:
        mem[224] = arg2
        if not arg2:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3345 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3364 = mem[(32 * idx + 1) + 128]
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
                        _3789 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3364)
                        _3790 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3792 = sha3(mem[_3790 + 32 len mem[_3790]])
                        mem[_3789 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3789 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3789 + 125] = _3792
                        mem[_3789 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3789 + 72] = 85
                        mem[64] = _3789 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3792, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3792, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3789 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3789 + 294 len 27]
                        if address(_3345) == address(_3345):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3789 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3789 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3789 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3789 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3789 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3797 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3345)
                        _3798 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3800 = sha3(mem[_3798 + 32 len mem[_3798]])
                        mem[_3797 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3797 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3797 + 125] = _3800
                        mem[_3797 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3797 + 72] = 85
                        mem[64] = _3797 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3800, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3800, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3797 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3797 + 294 len 27]
                        if address(_3345) == address(_3345):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3797 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3797 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3797 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3797 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3797 + 290 len 31]
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
                        _3805 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3364)
                        _3806 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3808 = sha3(mem[_3806 + 32 len mem[_3806]])
                        mem[_3805 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3805 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3805 + 125] = _3808
                        mem[_3805 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3805 + 72] = 85
                        mem[64] = _3805 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3808, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3808, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3805 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3805 + 294 len 27]
                        if address(_3345) == address(_3364):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3805 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3805 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3805 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3805 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3805 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3813 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3345)
                        _3814 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3816 = sha3(mem[_3814 + 32 len mem[_3814]])
                        mem[_3813 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3813 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3813 + 125] = _3816
                        mem[_3813 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3813 + 72] = 85
                        mem[64] = _3813 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3816, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3816, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3813 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3813 + 294 len 27]
                        if address(_3345) == address(_3364):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3813 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3813 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3813 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3813 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3813 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3363 = mem[256]
            if not mem[256]:
                _3406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3406] = 26
                mem[_3406 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg2 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, arg2 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6612 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6612] <= 4294967296
                require mem[_6612] + 32 <= return_data.size
                require mem[mem[_6612] + _6612] <= 4294967296 and mem[_6612] + (32 * mem[mem[_6612] + _6612]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require mem[256]
                if 1003 * mem[256] / mem[256] != 1003:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3446] = 26
                mem[_3446 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 1003 * _3363 / 1000
                mem[mem[64] + 36] = arg2 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 1003 * _3363 / 1000, arg2 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6611 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6611] <= 4294967296
                require mem[_6611] + 32 <= return_data.size
                require mem[mem[_6611] + _6611] <= 4294967296 and mem[_6611] + (32 * mem[mem[_6611] + _6611]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1003 * _3363 / 1000
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3351 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3368 = mem[(32 * idx + 1) + 128]
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
                        _3865 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3368)
                        _3866 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3868 = sha3(mem[_3866 + 32 len mem[_3866]])
                        mem[_3865 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3865 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3865 + 125] = _3868
                        mem[_3865 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3865 + 72] = 85
                        mem[64] = _3865 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3868, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3868, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3865 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3865 + 294 len 27]
                        if address(_3351) == address(_3351):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3865 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3865 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3865 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3865 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3865 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3873 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3351)
                        _3874 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3876 = sha3(mem[_3874 + 32 len mem[_3874]])
                        mem[_3873 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3873 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3873 + 125] = _3876
                        mem[_3873 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3873 + 72] = 85
                        mem[64] = _3873 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3876, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3876, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3873 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3873 + 294 len 27]
                        if address(_3351) == address(_3351):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3873 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3873 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3873 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3873 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3873 + 290 len 31]
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
                        _3881 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3368)
                        _3882 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3884 = sha3(mem[_3882 + 32 len mem[_3882]])
                        mem[_3881 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3881 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3881 + 125] = _3884
                        mem[_3881 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3881 + 72] = 85
                        mem[64] = _3881 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3884, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3884, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3881 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3881 + 294 len 27]
                        if address(_3351) == address(_3368):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3881 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3881 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3881 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3881 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3881 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3889 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3351)
                        _3890 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3892 = sha3(mem[_3890 + 32 len mem[_3890]])
                        mem[_3889 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3889 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3889 + 125] = _3892
                        mem[_3889 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3889 + 72] = 85
                        mem[64] = _3889 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3892, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3892, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3889 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3889 + 294 len 27]
                        if address(_3351) == address(_3368):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3889 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3889 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3889 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3889 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3889 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3367 = mem[256]
            if not mem[256]:
                _3408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3408] = 26
                mem[_3408 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = arg2 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, arg2 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6616 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6616] <= 4294967296
                require mem[_6616] + 32 <= return_data.size
                require mem[mem[_6616] + _6616] <= 4294967296 and mem[_6616] + (32 * mem[mem[_6616] + _6616]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require mem[256]
                if 1003 * mem[256] / mem[256] != 1003:
                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3448] = 26
                mem[_3448 + 32] = 'SafeMath: division by zero'
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
                mem[mem[64] + 4] = 1003 * _3367 / 1000
                mem[mem[64] + 36] = arg2 + 10 * 10^18
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(stor2)
                call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 1003 * _3367 / 1000, arg2 + 10 * 10^18, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6615 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6615] <= 4294967296
                require mem[_6615] + 32 <= return_data.size
                require mem[mem[_6615] + _6615] <= 4294967296 and mem[_6615] + (32 * mem[mem[_6615] + _6615]) + 32 <= return_data.size
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1003 * _3367 / 1000
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
