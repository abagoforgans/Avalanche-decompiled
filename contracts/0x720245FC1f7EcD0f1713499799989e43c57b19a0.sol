contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;

function _fallback() payable {
    revert
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

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != stor0:
        revert with 0, 'Invalid sender'
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
                _3103 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3126 = mem[(32 * idx + 1) + 128]
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
                        _3443 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3126)
                        _3444 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3446 = sha3(mem[_3444 + 32 len mem[_3444]])
                        mem[_3443 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3443 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3443 + 125] = _3446
                        mem[_3443 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3443 + 72] = 85
                        mem[64] = _3443 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3446, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3446, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3443 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3443 + 294 len 27]
                        if address(_3103) == address(_3103):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3443 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3443 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3443 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3443 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3443 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3451 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3103)
                        _3452 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3454 = sha3(mem[_3452 + 32 len mem[_3452]])
                        mem[_3451 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3451 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3451 + 125] = _3454
                        mem[_3451 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3451 + 72] = 85
                        mem[64] = _3451 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3454, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3454, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3451 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3451 + 294 len 27]
                        if address(_3103) == address(_3103):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3451 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3451 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3451 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3451 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3451 + 290 len 31]
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
                        _3459 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3126)
                        _3460 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3462 = sha3(mem[_3460 + 32 len mem[_3460]])
                        mem[_3459 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3459 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3459 + 125] = _3462
                        mem[_3459 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3459 + 72] = 85
                        mem[64] = _3459 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3462, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3462, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3459 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3459 + 294 len 27]
                        if address(_3103) == address(_3126):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3459 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3459 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3459 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3459 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3459 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3467 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3103)
                        _3468 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3470 = sha3(mem[_3468 + 32 len mem[_3468]])
                        mem[_3467 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3467 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3467 + 125] = _3470
                        mem[_3467 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3467 + 72] = 85
                        mem[64] = _3467 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3470, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3470, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3467 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3467 + 294 len 27]
                        if address(_3103) == address(_3126):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3467 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3467 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3467 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3467 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3467 + 290 len 31]
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
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = _3125 + (3 * _3125 / 10000)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _3125 + (3 * _3125 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6124 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6133 = mem[_6124]
            require mem[_6124] <= 4294967296
            require mem[_6124] + 32 <= return_data.size
            require mem[mem[_6124] + _6124] <= 4294967296 and mem[_6124] + (32 * mem[mem[_6124] + _6124]) + 32 <= return_data.size
            mem[_6124 + ceil32(return_data.size)] = mem[mem[_6124] + _6124]
            _6156 = mem[_6133 + _6124]
            mem[_6124 + ceil32(return_data.size) + 32 len floor32(mem[_6133 + _6124])] = mem[_6133 + _6124 + 32 len floor32(mem[_6133 + _6124])]
            mem[64] = (32 * _6156) + _6124 + ceil32(return_data.size) + 32
            require 1 < mem[_6124 + ceil32(return_data.size)]
            if mem[_6124 + ceil32(return_data.size) + 64] <= _3125 + (3 * _3125 / 10000):
                revert with 0, 'Not enough amount'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _3125 + (3 * _3125 / 10000)
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3109 = mem[(32 * idx) + 128]
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
                        _3507 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3130)
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
                        if address(_3109) == address(_3109):
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
                        _3515 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3109)
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
                        if address(_3109) == address(_3109):
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
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3523 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3130)
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
                        if address(_3109) == address(_3130):
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
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3531 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3109)
                        _3532 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3534 = sha3(mem[_3532 + 32 len mem[_3532]])
                        mem[_3531 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3531 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3531 + 125] = _3534
                        mem[_3531 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3531 + 72] = 85
                        mem[64] = _3531 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3534, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3534, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3531 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3531 + 294 len 27]
                        if address(_3109) == address(_3130):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3531 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3531 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3531 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3531 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3531 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                idx = idx + 1
                continue 
            require 1 < mem[192]
            _3129 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = _3129 + (3 * _3129 / 10000)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, _3129 + (3 * _3129 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6126 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6137 = mem[_6126]
            require mem[_6126] <= 4294967296
            require mem[_6126] + 32 <= return_data.size
            require mem[mem[_6126] + _6126] <= 4294967296 and mem[_6126] + (32 * mem[mem[_6126] + _6126]) + 32 <= return_data.size
            mem[_6126 + ceil32(return_data.size)] = mem[mem[_6126] + _6126]
            _6158 = mem[_6137 + _6126]
            mem[_6126 + ceil32(return_data.size) + 32 len floor32(mem[_6137 + _6126])] = mem[_6137 + _6126 + 32 len floor32(mem[_6137 + _6126])]
            mem[64] = (32 * _6158) + _6126 + ceil32(return_data.size) + 32
            require 1 < mem[_6126 + ceil32(return_data.size)]
            if mem[_6126 + ceil32(return_data.size) + 64] <= _3129 + (3 * _3129 / 10000):
                revert with 0, 'Not enough amount'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _3129 + (3 * _3129 / 10000)
    else:
        mem[224] = arg2
        if not arg2:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3115 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _3134 = mem[(32 * idx + 1) + 128]
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
                        _3571 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3134)
                        _3572 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3574 = sha3(mem[_3572 + 32 len mem[_3572]])
                        mem[_3571 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3571 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3571 + 125] = _3574
                        mem[_3571 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3571 + 72] = 85
                        mem[64] = _3571 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3574, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3574, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3571 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3571 + 294 len 27]
                        if address(_3115) == address(_3115):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3571 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3571 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3571 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3571 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3571 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3579 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3115)
                        _3580 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3582 = sha3(mem[_3580 + 32 len mem[_3580]])
                        mem[_3579 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3579 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3579 + 125] = _3582
                        mem[_3579 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3579 + 72] = 85
                        mem[64] = _3579 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3582, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3582, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3579 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3579 + 294 len 27]
                        if address(_3115) == address(_3115):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3579 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3579 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3579 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3579 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3579 + 290 len 31]
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
                        _3587 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                        mem[mem[64] + 52] = address(_3134)
                        _3588 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3590 = sha3(mem[_3588 + 32 len mem[_3588]])
                        mem[_3587 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3587 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3587 + 125] = _3590
                        mem[_3587 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3587 + 72] = 85
                        mem[64] = _3587 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3590, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3590, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3587 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3587 + 294 len 27]
                        if address(_3115) == address(_3134):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3587 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3587 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3587 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3587 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3587 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3595 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 128])
                        mem[mem[64] + 52] = address(_3115)
                        _3596 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3598 = sha3(mem[_3596 + 32 len mem[_3596]])
                        mem[_3595 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3595 + 105] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10000000000000000000000000
                        mem[_3595 + 125] = _3598
                        mem[_3595 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3595 + 72] = 85
                        mem[64] = _3595 + 189
                        require ext_code.size(address(sha3(0, 11157320132538271434, _3598, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, 11157320132538271434, _3598, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3595 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[192]
                        if mem[(32 * idx) + 224] <= 0:
                            revert with 0, 32, 37, 0x774a6f654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[_3595 + 294 len 27]
                        if address(_3115) == address(_3134):
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3595 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3595 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[18 len 14]
                                require ext_call.return_data[18 len 14]
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[18 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[18 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[50 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                    if not ext_call.return_data[18 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[18 len 14]
                                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                        if (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * idx) + 224])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3595 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3595 + 291 len 30]
                            if not mem[(32 * idx) + 224]:
                                require ext_call.return_data[50 len 14]
                                require ext_call.return_data[50 len 14]
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 1000 * ext_call.return_data[50 len 14]
                                require idx + 1 < mem[192]
                                mem[(32 * idx + 1) + 224] = 0 / 1000 * ext_call.return_data[50 len 14]
                            else:
                                require mem[(32 * idx) + 224]
                                if 997 * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != 997:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
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
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                        if (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224]) < 1000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * idx) + 224])
                                else:
                                    require 997 * mem[(32 * idx) + 224]
                                    if 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224] != ext_call.return_data[18 len 14]:
                                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
                                    if not ext_call.return_data[50 len 14]:
                                        if 997 * mem[(32 * idx) + 224] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 997 * mem[(32 * idx) + 224]
                                        require idx + 1 < mem[192]
                                        mem[(32 * idx + 1) + 224] = 997 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / 997 * mem[(32 * idx) + 224]
                                    else:
                                        require ext_call.return_data[50 len 14]
                                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_3595 + 290 len 31]
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
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _3133 + (3 * _3133 / 10000)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _3133 + (3 * _3133 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6128 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6141 = mem[_6128]
            require mem[_6128] <= 4294967296
            require mem[_6128] + 32 <= return_data.size
            require mem[mem[_6128] + _6128] <= 4294967296 and mem[_6128] + (32 * mem[mem[_6128] + _6128]) + 32 <= return_data.size
            mem[_6128 + ceil32(return_data.size)] = mem[mem[_6128] + _6128]
            _6160 = mem[_6141 + _6128]
            mem[_6128 + ceil32(return_data.size) + 32 len floor32(mem[_6141 + _6128])] = mem[_6141 + _6128 + 32 len floor32(mem[_6141 + _6128])]
            mem[64] = (32 * _6160) + _6128 + ceil32(return_data.size) + 32
            require 1 < mem[_6128 + ceil32(return_data.size)]
            if mem[_6128 + ceil32(return_data.size) + 64] <= _3133 + (3 * _3133 / 10000):
                revert with 0, 'Not enough amount'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _3133 + (3 * _3133 / 10000)
        else:
            idx = 0
            while idx < 1:
                require idx < mem[96]
                _3121 = mem[(32 * idx) + 128]
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
                        if address(_3121) == address(_3121):
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
                        mem[mem[64] + 52] = address(_3121)
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
                        if address(_3121) == address(_3121):
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
                        if address(_3121) == address(_3138):
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
                        mem[mem[64] + 52] = address(_3121)
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
                        if address(_3121) == address(_3138):
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
            _3137 = mem[256]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'pangolin approve failed'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _3137 + (3 * _3137 / 10000)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(stor2)
            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _3137 + (3 * _3137 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6130 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6145 = mem[_6130]
            require mem[_6130] <= 4294967296
            require mem[_6130] + 32 <= return_data.size
            require mem[mem[_6130] + _6130] <= 4294967296 and mem[_6130] + (32 * mem[mem[_6130] + _6130]) + 32 <= return_data.size
            mem[_6130 + ceil32(return_data.size)] = mem[mem[_6130] + _6130]
            _6162 = mem[_6145 + _6130]
            mem[_6130 + ceil32(return_data.size) + 32 len floor32(mem[_6145 + _6130])] = mem[_6145 + _6130 + 32 len floor32(mem[_6145 + _6130])]
            mem[64] = (32 * _6162) + _6130 + ceil32(return_data.size) + 32
            require 1 < mem[_6130 + ceil32(return_data.size)]
            if mem[_6130 + ceil32(return_data.size) + 64] <= _3137 + (3 * _3137 / 10000):
                revert with 0, 'Not enough amount'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _3137 + (3 * _3137 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
