contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_50713720(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(0x91d35d7f63487909c863001ddca481c6de47091)
    staticcall 0x91d35d7f63487909c863001ddca481c6de47091.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'tpdne'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg2, address(this.address), 128, 9, Mask(72, 0, 'not empty')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
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
    require ext_code.size(0x91d35d7f63487909c863001ddca481c6de47091)
    staticcall 0x91d35d7f63487909c863001ddca481c6de47091.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Und'
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    mem[128] = address(ext_call.return_data[0])
    mem[160] = address(ext_call.return_data[0])
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[256] = arg3
    idx = mem[96] - 1
    while idx:
        require idx - 1 < mem[96]
        _799 = mem[(32 * idx - 1) + 128]
        require idx < mem[96]
        _808 = mem[(32 * idx) + 128]
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
                _905 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_808)
                _906 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _908 = sha3(mem[_906 + 32 len mem[_906]])
                mem[_905 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_905 + 105] = 0x91d35d7f63487909c863001ddca481c6de47091000000000000000000000000
                mem[_905 + 125] = _908
                mem[_905 + 157] = 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31
                mem[_905 + 72] = 85
                mem[64] = _905 + 189
                require ext_code.size(address(sha3(0, 656740322330838928, _908, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)))
                staticcall address(sha3(0, 656740322330838928, _908, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)).getReserves() with:
                        gas gas_remaining wei
                mem[_905 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_905 + 301 len 20]
                if address(_799) == address(_799):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_905 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_905 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[18 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_905 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_905 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[50 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_905 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _912 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _913 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _915 = sha3(mem[_913 + 32 len mem[_913]])
                mem[_912 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_912 + 105] = 0x91d35d7f63487909c863001ddca481c6de47091000000000000000000000000
                mem[_912 + 125] = _915
                mem[_912 + 157] = 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31
                mem[_912 + 72] = 85
                mem[64] = _912 + 189
                require ext_code.size(address(sha3(0, 656740322330838928, _915, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)))
                staticcall address(sha3(0, 656740322330838928, _915, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)).getReserves() with:
                        gas gas_remaining wei
                mem[_912 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_912 + 301 len 20]
                if address(_799) == address(_799):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_912 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_912 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[18 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_912 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_912 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[50 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_912 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
        else:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 32, 37, 0x54556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                if not mem[(32 * idx - 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _919 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx - 1) + 128])
                mem[mem[64] + 52] = address(_808)
                _920 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _922 = sha3(mem[_920 + 32 len mem[_920]])
                mem[_919 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_919 + 105] = 0x91d35d7f63487909c863001ddca481c6de47091000000000000000000000000
                mem[_919 + 125] = _922
                mem[_919 + 157] = 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31
                mem[_919 + 72] = 85
                mem[64] = _919 + 189
                require ext_code.size(address(sha3(0, 656740322330838928, _922, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)))
                staticcall address(sha3(0, 656740322330838928, _922, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)).getReserves() with:
                        gas gas_remaining wei
                mem[_919 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_919 + 301 len 20]
                if address(_808) == address(_799):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_919 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_919 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[18 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_919 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_919 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[50 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_919 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _926 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                mem[mem[64] + 52] = address(mem[(32 * idx - 1) + 128])
                _927 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _929 = sha3(mem[_927 + 32 len mem[_927]])
                mem[_926 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_926 + 105] = 0x91d35d7f63487909c863001ddca481c6de47091000000000000000000000000
                mem[_926 + 125] = _929
                mem[_926 + 157] = 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31
                mem[_926 + 72] = 85
                mem[64] = _926 + 189
                require ext_code.size(address(sha3(0, 656740322330838928, _929, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)))
                staticcall address(sha3(0, 656740322330838928, _929, 0x84845e7ccb283dec564acfcd3d9287a491dec6d675705545a2ab8be22ad78f31)).getReserves() with:
                        gas gas_remaining wei
                mem[_926 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[192]
                if mem[(32 * idx) + 224] <= 0:
                    revert with 0, 
                                32,
                                44,
                                0x73556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[_926 + 301 len 20]
                if address(_808) == address(_799):
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_926 + 297 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_926 + 297 len 24]
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                        require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[18 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[50 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[50 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                else:
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_926 + 297 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 40, 0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_926 + 297 len 24]
                    if not ext_call.return_data[50 len 14]:
                        if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                        if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                        require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[192]
                        mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                    else:
                        if mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != mem[(32 * idx) + 224]:
                            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                        if not mem[(32 * idx) + 224] * ext_call.return_data[50 len 14]:
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] != 1000:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            if mem[(32 * idx) + 224] > ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_call.return_data[18 len 14] - mem[(32 * idx) + 224]
                            if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]) / ext_call.return_data[18 len 14] - mem[(32 * idx) + 224] != 997:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_926 + 290 len 31]
                            require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])
                            if (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[192]
                            mem[(32 * idx - 1) + 224] = (1000 * mem[(32 * idx) + 224] * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
        idx = idx - 1
        continue 
    require 0 < mem[192]
    _805 = mem[224]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'nev1'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x42424242b0c0d8a19dcd0df362815e242586354a, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 68] = 1
    require ext_code.size(0x42424242b0c0d8a19dcd0df362815e242586354a)
    call 0x42424242b0c0d8a19dcd0df362815e242586354a.0x5b27052e with:
         gas gas_remaining wei
        args arg3, 1, 1, 1, 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 36] = arg3
    require ext_code.size(0xeeeeeb57642040be42185f49c52f7e9b38f8eeee)
    call 0xeeeeeb57642040be42185f49c52f7e9b38f8eeee.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[96]
    mem[128] = 0xeeeeeb57642040be42185f49c52f7e9b38f8eeee
    require 1 < mem[96]
    mem[160] = address(ext_call.return_data[0])
    require ext_code.size(0xeeeeeb57642040be42185f49c52f7e9b38f8eeee)
    staticcall 0xeeeeeb57642040be42185f49c52f7e9b38f8eeee.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _805
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + (240 * 24 * 3600)
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _805, 160, address(this.address), block.timestamp + (240 * 24 * 3600), mem[mem[64] + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1560 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1563 = mem[_1560]
    require mem[_1560] <= 4294967296
    require mem[_1560] + 32 <= return_data.size
    require mem[_1560 + mem[_1560]] <= 4294967296 and mem[_1560] + (32 * mem[_1560 + mem[_1560]]) + 32 <= return_data.size
    mem[_1560 + ceil32(return_data.size)] = mem[_1560 + mem[_1560]]
    _1568 = mem[_1560 + _1563]
    mem[_1560 + ceil32(return_data.size) + 32 len floor32(mem[_1560 + _1563])] = mem[_1560 + _1563 + 32 len floor32(mem[_1560 + _1563])]
    mem[64] = (32 * _1568) + _1560 + ceil32(return_data.size) + 32
    require 1 < mem[_1560 + ceil32(return_data.size)]
    if mem[_1560 + ceil32(return_data.size) + 64] <= _805:
        revert with 0, 'afnp'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _805
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
