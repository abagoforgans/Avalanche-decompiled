contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address tokenAddress;
uint256 unlockTime;
uint256 releaseTime;
uint256 totalRewards;
array of address stor105;
mapping of uint256 sub_7e183487;
mapping of uint256 sub_e877b1b7;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;

function totalRewards() payable {
    return totalRewards
}

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

function owner() payable {
    return owner
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

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
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

function sub_bc3a0574(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not uint8(stor0.field_0):
        revert with 0, 'not initialized'
    if unlockTime != -1:
        revert with 0, 'release started'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor105.length++
        mem[0] = 105
        stor7FB4[stor105.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
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

function startRelease() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not uint8(stor0.field_0):
        revert with 0, 'not initialized'
    if unlockTime != -1:
        revert with 0, 'release started'
    unlockTime = block.timestamp
    if not stor105.length:
        revert with 0, 'not set beneficiaries'
    if not totalRewards / stor105.length:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Insufficient rewards'
    else:
        if stor105.length * totalRewards / stor105.length / totalRewards / stor105.length != stor105.length:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor105.length * totalRewards / stor105.length:
            revert with 0, 'Insufficient rewards'
    idx = 0
    while idx < stor105.length:
        mem[0] = stor105[idx]
        mem[32] = 106
        sub_7e183487[stor105[idx]] = totalRewards / stor105.length
        idx = idx + 1
        continue 
    emit 0x1cce4402: unlockTime, totalRewards / stor105.length
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x735465616d4c6f636b3a20546865206c6f636b7570206475726174696f6e206d7573742068617665207061737365,
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

function initialize(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        tokenAddress = arg1
        unlockTime = -1
        totalRewards = arg2
        releaseTime = arg3
        emit 0xba5a3528: address(arg1), arg2, arg3
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            tokenAddress = arg1
            unlockTime = -1
            totalRewards = arg2
            releaseTime = arg3
            emit 0xba5a3528: address(arg1), arg2, arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                tokenAddress = arg1
                unlockTime = -1
                totalRewards = arg2
                releaseTime = arg3
                emit 0xba5a3528: address(arg1), arg2, arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    tokenAddress = arg1
                    unlockTime = -1
                    totalRewards = arg2
                    releaseTime = arg3
                    emit 0xba5a3528: address(arg1), arg2, arg3
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        tokenAddress = arg1
                        unlockTime = -1
                        totalRewards = arg2
                        releaseTime = arg3
                        emit 0xba5a3528: address(arg1), arg2, arg3
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        tokenAddress = arg1
                        unlockTime = -1
                        totalRewards = arg2
                        releaseTime = arg3
                        emit 0xba5a3528: address(arg1), arg2, arg3
                        uint8(stor0.field_8) = 0
}



}
