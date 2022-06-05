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
    if arg1 != stor0:
        revert with 0, '!owner'
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
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
                _3087 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3114 = mem[(32 * idx + 1) + 128]
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
                        _3431 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3114)
                        _3432 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3434 = sha3(mem[_3432 + 32 len mem[_3432]])
                        mem[_3431 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3431 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3431 + 125] = _3434
                        mem[_3431 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3431 + 72] = 85
                        mem[64] = _3431 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3434, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3434, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3431 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3431 + 294 len 27]
                        if address(_3087) == address(_3087):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3431 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3431 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3431 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3431 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3431 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3439 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3087)
                        _3440 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3442 = sha3(mem[_3440 + 32 len mem[_3440]])
                        mem[_3439 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3439 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3439 + 125] = _3442
                        mem[_3439 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3439 + 72] = 85
                        mem[64] = _3439 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3442, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3442, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3439 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3439 + 294 len 27]
                        if address(_3087) == address(_3087):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3439 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3439 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3439 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3439 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3439 + 290 len 31]
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
                        _3447 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3114)
                        _3448 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3450 = sha3(mem[_3448 + 32 len mem[_3448]])
                        mem[_3447 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3447 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3447 + 125] = _3450
                        mem[_3447 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3447 + 72] = 85
                        mem[64] = _3447 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3450, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3450, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3447 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3447 + 294 len 27]
                        if address(_3087) == address(_3114):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3447 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3447 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3447 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3447 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3447 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3455 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3087)
                        _3456 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3458 = sha3(mem[_3456 + 32 len mem[_3456]])
                        mem[_3455 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3455 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3455 + 125] = _3458
                        mem[_3455 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3455 + 72] = 85
                        mem[64] = _3455 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3458, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3458, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3455 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3455 + 294 len 27]
                        if address(_3087) == address(_3114):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3455 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3455 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3455 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3455 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3455 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3111 = mem[256]
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
            mem[mem[64] + 4] = _3111
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3111, arg3, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6092 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6101 = mem[_6092]
            require mem[_6092] <= 4294967296
            require mem[_6092] + 32 <= return_data.size
            require mem[mem[_6092] + _6092] <= 4294967296 and mem[_6092] + (32 * mem[mem[_6092] + _6092]) + 32 <= return_data.size
            mem[_6092 + ceil32(return_data.size)] = mem[mem[_6092] + _6092]
            mem[64] = (32 * mem[_6101 + _6092]) + _6092 + ceil32(return_data.size) + 32
            require 1 < mem[_6092 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3111
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3093 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3122 = mem[(32 * idx + 1) + 128]
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
                        _3499 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3122)
                        _3500 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3502 = sha3(mem[_3500 + 32 len mem[_3500]])
                        mem[_3499 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3499 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3499 + 125] = _3502
                        mem[_3499 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3499 + 72] = 85
                        mem[64] = _3499 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3502, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3502, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3499 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3499 + 294 len 27]
                        if address(_3093) == address(_3093):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3499 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3499 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3499 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3499 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3499 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3507 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3093)
                        _3508 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3510 = sha3(mem[_3508 + 32 len mem[_3508]])
                        mem[_3507 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3507 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3507 + 125] = _3510
                        mem[_3507 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3507 + 72] = 85
                        mem[64] = _3507 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3510, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3510, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3507 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3507 + 294 len 27]
                        if address(_3093) == address(_3093):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3507 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3507 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3507 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3507 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3507 + 290 len 31]
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
                        _3515 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3122)
                        _3516 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3518 = sha3(mem[_3516 + 32 len mem[_3516]])
                        mem[_3515 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3515 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3515 + 125] = _3518
                        mem[_3515 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3515 + 72] = 85
                        mem[64] = _3515 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3518, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3518, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3515 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3515 + 294 len 27]
                        if address(_3093) == address(_3122):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3515 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3515 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3515 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3515 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3515 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3523 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3093)
                        _3524 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3526 = sha3(mem[_3524 + 32 len mem[_3524]])
                        mem[_3523 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3523 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3523 + 125] = _3526
                        mem[_3523 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3523 + 72] = 85
                        mem[64] = _3523 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3526, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3526, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3523 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3523 + 294 len 27]
                        if address(_3093) == address(_3122):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3523 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3523 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3523 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3523 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3523 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3119 = mem[256]
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
            mem[mem[64] + 4] = _3119
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3119, arg3, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6094 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6105 = mem[_6094]
            require mem[_6094] <= 4294967296
            require mem[_6094] + 32 <= return_data.size
            require mem[mem[_6094] + _6094] <= 4294967296 and mem[_6094] + (32 * mem[mem[_6094] + _6094]) + 32 <= return_data.size
            mem[_6094 + ceil32(return_data.size)] = mem[mem[_6094] + _6094]
            mem[64] = (32 * mem[_6105 + _6094]) + _6094 + ceil32(return_data.size) + 32
            require 1 < mem[_6094 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3119
    else:
        mem[224] = arg2
        if not arg2:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3099 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3130 = mem[(32 * idx + 1) + 128]
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
                        _3567 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3130)
                        _3568 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3570 = sha3(mem[_3568 + 32 len mem[_3568]])
                        mem[_3567 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3567 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3567 + 125] = _3570
                        mem[_3567 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3567 + 72] = 85
                        mem[64] = _3567 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3570, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3570, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3567 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3567 + 294 len 27]
                        if address(_3099) == address(_3099):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3567 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3567 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3567 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3567 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3567 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3575 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3099)
                        _3576 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3578 = sha3(mem[_3576 + 32 len mem[_3576]])
                        mem[_3575 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3575 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3575 + 125] = _3578
                        mem[_3575 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3575 + 72] = 85
                        mem[64] = _3575 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3578, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3578, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3575 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3575 + 294 len 27]
                        if address(_3099) == address(_3099):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3575 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3575 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3575 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3575 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3575 + 290 len 31]
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
                        _3583 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3130)
                        _3584 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3586 = sha3(mem[_3584 + 32 len mem[_3584]])
                        mem[_3583 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3583 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3583 + 125] = _3586
                        mem[_3583 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3583 + 72] = 85
                        mem[64] = _3583 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3586, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3586, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3583 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3583 + 294 len 27]
                        if address(_3099) == address(_3130):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3583 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3583 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3583 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3583 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3583 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3591 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3099)
                        _3592 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3594 = sha3(mem[_3592 + 32 len mem[_3592]])
                        mem[_3591 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3591 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3591 + 125] = _3594
                        mem[_3591 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3591 + 72] = 85
                        mem[64] = _3591 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3594, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3594, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3591 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3591 + 294 len 27]
                        if address(_3099) == address(_3130):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3591 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3591 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3591 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3591 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3591 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3127 = mem[256]
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
            mem[mem[64] + 4] = _3127
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3127, arg2, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6096 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6109 = mem[_6096]
            require mem[_6096] <= 4294967296
            require mem[_6096] + 32 <= return_data.size
            require mem[mem[_6096] + _6096] <= 4294967296 and mem[_6096] + (32 * mem[mem[_6096] + _6096]) + 32 <= return_data.size
            mem[_6096 + ceil32(return_data.size)] = mem[mem[_6096] + _6096]
            mem[64] = (32 * mem[_6109 + _6096]) + _6096 + ceil32(return_data.size) + 32
            require 1 < mem[_6096 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3127
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3105 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3138 = mem[(32 * idx + 1) + 128]
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
                        _3635 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3138)
                        _3636 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3638 = sha3(mem[_3636 + 32 len mem[_3636]])
                        mem[_3635 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3635 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3635 + 125] = _3638
                        mem[_3635 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3635 + 72] = 85
                        mem[64] = _3635 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3638, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3638, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3635 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3635 + 294 len 27]
                        if address(_3105) == address(_3105):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3635 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3635 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3635 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3635 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3635 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3643 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3105)
                        _3644 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3646 = sha3(mem[_3644 + 32 len mem[_3644]])
                        mem[_3643 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3643 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3643 + 125] = _3646
                        mem[_3643 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3643 + 72] = 85
                        mem[64] = _3643 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3646, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3646, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3643 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3643 + 294 len 27]
                        if address(_3105) == address(_3105):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3643 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3643 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3643 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3643 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3643 + 290 len 31]
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
                        _3651 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3138)
                        _3652 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3654 = sha3(mem[_3652 + 32 len mem[_3652]])
                        mem[_3651 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3651 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3651 + 125] = _3654
                        mem[_3651 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3651 + 72] = 85
                        mem[64] = _3651 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3654, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3654, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3651 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3651 + 294 len 27]
                        if address(_3105) == address(_3138):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3651 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3651 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3651 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3651 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3651 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3659 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3105)
                        _3660 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3662 = sha3(mem[_3660 + 32 len mem[_3660]])
                        mem[_3659 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3659 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3659 + 125] = _3662
                        mem[_3659 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3659 + 72] = 85
                        mem[64] = _3659 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3662, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3662, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3659 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3659 + 294 len 27]
                        if address(_3105) == address(_3138):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3659 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3659 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3659 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3659 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3659 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3135 = mem[256]
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
            mem[mem[64] + 4] = _3135
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _3135, arg2, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6098 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6113 = mem[_6098]
            require mem[_6098] <= 4294967296
            require mem[_6098] + 32 <= return_data.size
            require mem[mem[_6098] + _6098] <= 4294967296 and mem[_6098] + (32 * mem[mem[_6098] + _6098]) + 32 <= return_data.size
            mem[_6098 + ceil32(return_data.size)] = mem[mem[_6098] + _6098]
            mem[64] = (32 * mem[_6113 + _6098]) + _6098 + ceil32(return_data.size) + 32
            require 1 < mem[_6098 + ceil32(return_data.size)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _3135
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
