contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address tokenAddress; offset 16
uint256 stor0; offset 8
uint256 unlockTime;
uint256 releaseTime;
mapping of uint256 sub_7e183487;
mapping of uint256 sub_e877b1b7;

function initialized() payable {
    return bool(uint8(stor0.field_0))
}

function unlockTime() payable {
    return unlockTime
}

function sub_7e183487(?) payable {
    require calldata.size - 4 >= 32
    return sub_7e183487[arg1]
}

function releaseTime() payable {
    return releaseTime
}

function sub_e877b1b7(?) payable {
    require calldata.size - 4 >= 32
    return sub_e877b1b7[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function withdrawable(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= unlockTime:
        return 0
    if not sub_7e183487[address(arg1)]:
        return 0
    if unlockTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7e183487[address(arg1)]:
        if not releaseTime:
            revert with 0, 'SafeMath: division by zero'
        if sub_e877b1b7[address(arg1)] > 0 / releaseTime:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / releaseTime) - sub_e877b1b7[address(arg1)])
    if (block.timestamp * sub_7e183487[address(arg1)]) - (unlockTime * sub_7e183487[address(arg1)]) / sub_7e183487[address(arg1)] != block.timestamp - unlockTime:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not releaseTime:
        revert with 0, 'SafeMath: division by zero'
    if sub_e877b1b7[address(arg1)] > (block.timestamp * sub_7e183487[address(arg1)]) - (unlockTime * sub_7e183487[address(arg1)]) / releaseTime:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((block.timestamp * sub_7e183487[address(arg1)]) - (unlockTime * sub_7e183487[address(arg1)]) / releaseTime) - sub_e877b1b7[address(arg1)])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe5465616d4c6f636b3a20546865206c6f636b7570206475726174696f6e206d7573742068617665207061737365,
                    mem[210 len 18]
    if not sub_7e183487[msg.sender]:
        revert with 0, 'TeamLock: not beneficiary'
    if unlockTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7e183487[address(msg.sender)]:
        if not releaseTime:
            revert with 0, 'SafeMath: division by zero'
        if sub_e877b1b7[address(msg.sender)] > 0 / releaseTime:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > (0 / releaseTime) - sub_e877b1b7[address(msg.sender)]:
            revert with 0, 'TeamLock: invalid amount'
    else:
        if (block.timestamp * sub_7e183487[address(msg.sender)]) - (unlockTime * sub_7e183487[address(msg.sender)]) / sub_7e183487[address(msg.sender)] != block.timestamp - unlockTime:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not releaseTime:
            revert with 0, 'SafeMath: division by zero'
        if sub_e877b1b7[address(msg.sender)] > (block.timestamp * sub_7e183487[address(msg.sender)]) - (unlockTime * sub_7e183487[address(msg.sender)]) / releaseTime:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > ((block.timestamp * sub_7e183487[address(msg.sender)]) - (unlockTime * sub_7e183487[address(msg.sender)]) / releaseTime) - sub_e877b1b7[address(msg.sender)]:
            revert with 0, 'TeamLock: invalid amount'
    if arg1 + sub_e877b1b7[msg.sender] < sub_e877b1b7[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e877b1b7[msg.sender] += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg1, msg.sender);
}

function sub_b71fb9cc(?) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if uint8(stor0.field_8):
        tokenAddress = arg1
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.getDeploymentStartTime() with:
                gas gas_remaining wei
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        unlockTime = arg2 + ext_call.return_data[0]
        releaseTime = arg3
        if arg4.length != arg5.length:
            revert with 0, 'invalid length'
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < arg4.length
            require idx < arg5.length
            _166 = mem[(32 * idx) + (32 * arg4.length) + 160]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            sub_7e183487[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg4.length) + 160]
            if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
            continue 
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _166 * arg4.length > ext_call.return_data[0]:
            revert with 0, 'invalid total rewards'
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                tokenAddress = arg1
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.getDeploymentStartTime() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                unlockTime = arg2 + ext_call.return_data[0]
                releaseTime = arg3
                if arg4.length != arg5.length:
                    revert with 0, 'invalid length'
                idx = 0
                s = 0
                while idx < arg4.length:
                    require idx < arg4.length
                    require idx < arg5.length
                    _169 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    sub_7e183487[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg4.length) + 160]
                    if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
                    continue 
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _169 * arg4.length > ext_call.return_data[0]:
                    revert with 0, 'invalid total rewards'
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                tokenAddress = arg1
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.getDeploymentStartTime() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                unlockTime = arg2 + ext_call.return_data[0]
                releaseTime = arg3
                if arg4.length != arg5.length:
                    revert with 0, 'invalid length'
                idx = 0
                s = 0
                while idx < arg4.length:
                    require idx < arg4.length
                    require idx < arg5.length
                    _172 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    sub_7e183487[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg4.length) + 160]
                    if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
                    continue 
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _172 * arg4.length > ext_call.return_data[0]:
                    revert with 0, 'invalid total rewards'
        else:
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[(32 * arg4.length) + (32 * arg5.length) + 274 len 18]
            if uint8(stor0.field_8):
                tokenAddress = arg1
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.getDeploymentStartTime() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                unlockTime = arg2 + ext_call.return_data[0]
                releaseTime = arg3
                if arg4.length != arg5.length:
                    revert with 0, 'invalid length'
                idx = 0
                s = 0
                while idx < arg4.length:
                    require idx < arg4.length
                    require idx < arg5.length
                    _175 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    sub_7e183487[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg4.length) + 160]
                    if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
                    continue 
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _175 * arg4.length > ext_call.return_data[0]:
                    revert with 0, 'invalid total rewards'
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                tokenAddress = arg1
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.getDeploymentStartTime() with:
                        gas gas_remaining wei
                mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                unlockTime = arg2 + ext_call.return_data[0]
                releaseTime = arg3
                if arg4.length != arg5.length:
                    revert with 0, 'invalid length'
                idx = 0
                s = 0
                while idx < arg4.length:
                    require idx < arg4.length
                    require idx < arg5.length
                    _178 = mem[(32 * idx) + (32 * arg4.length) + 160]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    sub_7e183487[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg4.length) + 160]
                    if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
                    continue 
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _178 * arg4.length > ext_call.return_data[0]:
                    revert with 0, 'invalid total rewards'
    emit 0xba5a3528: address(arg1), unlockTime, arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
