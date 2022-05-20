contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address tokenAddress;
mapping of struct vestingSchedules;
mapping of struct cliffs;

function owner() payable {
    return owner
}

function cliffs(address arg1) payable {
    require calldata.size - 4 >= 32
    return cliffs[arg1].field_0, cliffs[arg1].field_128
}

function token() payable {
    return tokenAddress
}

function vestingSchedules(address arg1) payable {
    require calldata.size - 4 >= 32
    return vestingSchedules[arg1].field_0, 
           vestingSchedules[arg1].field_0,
           vestingSchedules[arg1].field_0,
           vestingSchedules[arg1].field_0,
           vestingSchedules[arg1].field_224
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeVestingSchedule(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not vestingSchedules[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73546f6b656e457363726f773a2076657374696e67207363686564756c65206e6f74207365,
                    mem[201 len 27]
    vestingSchedules[address(arg1)].field_0 = 0
    vestingSchedules[address(arg1)].field_128 = 0
    vestingSchedules[address(arg1)].field_160 = 0
    vestingSchedules[address(arg1)].field_192 = 0
    vestingSchedules[address(arg1)].field_0 = vestingSchedules[address(arg1)].field_0
    emit VestingScheduleRemoved(arg1);
}

function setCliff(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'TokenEscrow: zero address'
    if arg2 <= 0:
        revert with 0, 'TokenEscrow: zero amount'
    if cliffs[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x77546f6b656e457363726f773a20636c69666620616c7265616479206578697374,
                    mem[197 len 31]
    if uint128(arg2) != arg2:
        revert with 0, 'TokenEscrow: amount overflow'
    if uint32(arg3) != arg3:
        revert with 0, 'TokenEscrow: unlockTime overflow'
    cliffs[address(arg1)].field_0 = uint128(arg2)
    cliffs[address(arg1)].field_128 = uint32(arg3)
    emit CliffAdded(arg2, arg3, arg1);
}

function setVestingSchedule(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'TokenEscrow: zero address'
    if arg2 <= 0:
        revert with 0, 'TokenEscrow: zero amount'
    if arg3 >= arg4:
        revert with 0, 'TokenEscrow: invalid time range'
    if arg5 <= 0:
        revert with 0, 'TokenEscrow: invalid step'
    if arg3 > arg4:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg5
    if arg4 - arg3 % arg5:
        revert with 0, 'TokenEscrow: invalid step'
    if vestingSchedules[address(arg1)].field_0:
        revert with 0, 32, 44, 0x73546f6b656e457363726f773a2076657374696e67207363686564756c6520616c7265616479206578697374, mem[272 len 20]
    if uint128(arg2) != arg2:
        revert with 0, 'TokenEscrow: amount overflow'
    if uint32(arg3) != arg3:
        revert with 0, 'TokenEscrow: startTime overflow'
    if uint32(arg4) != arg4:
        revert with 0, 'TokenEscrow: endTime overflow'
    if uint32(arg5) != arg5:
        revert with 0, 'TokenEscrow: step overflow'
    vestingSchedules[address(arg1)].field_0 = uint128(arg2)
    vestingSchedules[address(arg1)].field_128 = uint32(arg3)
    vestingSchedules[address(arg1)].field_160 = uint32(arg4)
    vestingSchedules[address(arg1)].field_192 = uint32(arg5)
    vestingSchedules[address(arg1)].field_224 = uint32(arg3)
    emit VestingScheduleAdded(arg2, arg3, arg4, arg5, arg1);
}

function sub_1dcf0b30(?) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
    if not arg1:
        revert with 0, 'TokenEscrow: zero address'
    tokenAddress = arg1
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function getWithdrawableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if not vestingSchedules[address(arg1)].field_0:
        if not cliffs[address(arg1)].field_0:
            return 0
        if block.timestamp < cliffs[address(arg1)].field_128:
            return 0
        if cliffs[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return cliffs[address(arg1)].field_0
    if block.timestamp < vestingSchedules[address(arg1)].field_128:
        if not cliffs[address(arg1)].field_0:
            return 0
        if block.timestamp < cliffs[address(arg1)].field_128:
            return 0
        if cliffs[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return cliffs[address(arg1)].field_0
    if vestingSchedules[address(arg1)].field_128 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingSchedules[address(arg1)].field_192 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingSchedules[address(arg1)].field_192
    if not block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
        if vestingSchedules[address(arg1)].field_128 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if vestingSchedules[address(arg1)].field_128 < vestingSchedules[address(arg1)].field_160:
            if vestingSchedules[address(arg1)].field_128 <= vestingSchedules[address(arg1)].field_224:
                if not cliffs[address(arg1)].field_0:
                    return 0
                if block.timestamp < cliffs[address(arg1)].field_128:
                    return 0
                if cliffs[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return cliffs[address(arg1)].field_0
            if vestingSchedules[address(arg1)].field_128 > vestingSchedules[address(arg1)].field_160:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingSchedules[address(arg1)].field_192 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingSchedules[address(arg1)].field_192
            if vestingSchedules[address(arg1)].field_128 != vestingSchedules[address(arg1)].field_160:
                if vestingSchedules[address(arg1)].field_224 > vestingSchedules[address(arg1)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if not vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
                    if not cliffs[address(arg1)].field_0:
                        return 0
                    if block.timestamp < cliffs[address(arg1)].field_128:
                        return 0
                    if cliffs[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return cliffs[address(arg1)].field_0
                require vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 / vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                if cliffs[address(arg1)].field_0:
                    if block.timestamp >= cliffs[address(arg1)].field_128:
                        if (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0)
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 'SafeMath: addition overflow'
                return (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192)
        else:
            if vestingSchedules[address(arg1)].field_160 <= vestingSchedules[address(arg1)].field_0:
                if not cliffs[address(arg1)].field_0:
                    return 0
                if block.timestamp < cliffs[address(arg1)].field_128:
                    return 0
                if cliffs[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return cliffs[address(arg1)].field_0
            if vestingSchedules[address(arg1)].field_128 > vestingSchedules[address(arg1)].field_160:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingSchedules[address(arg1)].field_192 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingSchedules[address(arg1)].field_192
            if vestingSchedules[address(arg1)].field_160 != vestingSchedules[address(arg1)].field_160:
                if vestingSchedules[address(arg1)].field_224 > vestingSchedules[address(arg1)].field_160:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if not vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
                    if not cliffs[address(arg1)].field_0:
                        return 0
                    if block.timestamp < cliffs[address(arg1)].field_128:
                        return 0
                    if cliffs[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return cliffs[address(arg1)].field_0
                require vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 / vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                if cliffs[address(arg1)].field_0:
                    if block.timestamp >= cliffs[address(arg1)].field_128:
                        if (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0)
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 'SafeMath: addition overflow'
                return (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192)
    else:
        require block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
        if block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192 / block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != vestingSchedules[address(arg1)].field_192:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
        if (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 < block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192:
            revert with 0, 'SafeMath: addition overflow'
        if (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 < vestingSchedules[address(arg1)].field_160:
            if (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 <= vestingSchedules[address(arg1)].field_224:
                if not cliffs[address(arg1)].field_0:
                    return 0
                if block.timestamp < cliffs[address(arg1)].field_128:
                    return 0
                if cliffs[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return cliffs[address(arg1)].field_0
            if vestingSchedules[address(arg1)].field_128 > vestingSchedules[address(arg1)].field_160:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingSchedules[address(arg1)].field_192 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingSchedules[address(arg1)].field_192
            if (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 != vestingSchedules[address(arg1)].field_160:
                if vestingSchedules[address(arg1)].field_224 > (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if not vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
                    if not cliffs[address(arg1)].field_0:
                        return 0
                    if block.timestamp < cliffs[address(arg1)].field_128:
                        return 0
                    if cliffs[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return cliffs[address(arg1)].field_0
                require vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 / vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                if cliffs[address(arg1)].field_0:
                    if block.timestamp >= cliffs[address(arg1)].field_128:
                        if (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0)
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 'SafeMath: addition overflow'
                return (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * (block.timestamp - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_192) + vestingSchedules[address(arg1)].field_128 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192)
        else:
            if vestingSchedules[address(arg1)].field_160 <= vestingSchedules[address(arg1)].field_0:
                if not cliffs[address(arg1)].field_0:
                    return 0
                if block.timestamp < cliffs[address(arg1)].field_128:
                    return 0
                if cliffs[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return cliffs[address(arg1)].field_0
            if vestingSchedules[address(arg1)].field_128 > vestingSchedules[address(arg1)].field_160:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingSchedules[address(arg1)].field_192 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingSchedules[address(arg1)].field_192
            if vestingSchedules[address(arg1)].field_160 != vestingSchedules[address(arg1)].field_160:
                if vestingSchedules[address(arg1)].field_224 > vestingSchedules[address(arg1)].field_160:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if not vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
                    if not cliffs[address(arg1)].field_0:
                        return 0
                    if block.timestamp < cliffs[address(arg1)].field_128:
                        return 0
                    if cliffs[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return cliffs[address(arg1)].field_0
                require vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 / vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                if cliffs[address(arg1)].field_0:
                    if block.timestamp >= cliffs[address(arg1)].field_128:
                        if (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0)
                if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192 < vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192:
                    revert with 0, 'SafeMath: addition overflow'
                return (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_224 / vestingSchedules[address(arg1)].field_192)
    if vestingSchedules[address(arg1)].field_128 > vestingSchedules[address(arg1)].field_224:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingSchedules[address(arg1)].field_192 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingSchedules[address(arg1)].field_192
    if vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
    if not vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
        if 0 > vestingSchedules[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if cliffs[address(arg1)].field_0:
            if block.timestamp >= cliffs[address(arg1)].field_128:
                if vestingSchedules[address(arg1)].field_0 + cliffs[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                return (vestingSchedules[address(arg1)].field_0 + cliffs[address(arg1)].field_0)
        if vestingSchedules[address(arg1)].field_0 < vestingSchedules[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return vestingSchedules[address(arg1)].field_0
    require vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192
    if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 / vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 != vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
    if vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 > vestingSchedules[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not cliffs[address(arg1)].field_0:
        return (vestingSchedules[address(arg1)].field_0 - (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192))
    if block.timestamp < cliffs[address(arg1)].field_128:
        return (vestingSchedules[address(arg1)].field_0 - (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192))
    if cliffs[address(arg1)].field_0 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (vestingSchedules[address(arg1)].field_0 - (vestingSchedules[address(arg1)].field_0 / vestingSchedules[address(arg1)].field_160 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192 * vestingSchedules[address(arg1)].field_224 - vestingSchedules[address(arg1)].field_128 / vestingSchedules[address(arg1)].field_192) + cliffs[address(arg1)].field_0)
}

function withdraw() payable {
    if not vestingSchedules[address(msg.sender)].field_0:
        if not cliffs[address(msg.sender)].field_0:
            revert with 0, 'TokenEscrow: nothing to withdraw'
        if block.timestamp < cliffs[address(msg.sender)].field_128:
            revert with 0, 'TokenEscrow: nothing to withdraw'
        if cliffs[address(msg.sender)].field_0 > 0:
            cliffs[address(msg.sender)].field_0 = 0
            cliffs[address(msg.sender)].field_128 = 0
        if cliffs[address(msg.sender)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if cliffs[address(msg.sender)].field_0 <= 0:
            revert with 0, 'TokenEscrow: nothing to withdraw'
        if cliffs[address(msg.sender)].field_0 > 0:
            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cliffs[address(msg.sender)].field_0
    else:
        if block.timestamp < vestingSchedules[address(msg.sender)].field_128:
            if not cliffs[address(msg.sender)].field_0:
                revert with 0, 'TokenEscrow: nothing to withdraw'
            if block.timestamp < cliffs[address(msg.sender)].field_128:
                revert with 0, 'TokenEscrow: nothing to withdraw'
            if cliffs[address(msg.sender)].field_0 > 0:
                cliffs[address(msg.sender)].field_0 = 0
                cliffs[address(msg.sender)].field_128 = 0
            if cliffs[address(msg.sender)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if cliffs[address(msg.sender)].field_0 <= 0:
                revert with 0, 'TokenEscrow: nothing to withdraw'
            if cliffs[address(msg.sender)].field_0 > 0:
                emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, cliffs[address(msg.sender)].field_0
        else:
            if vestingSchedules[address(msg.sender)].field_128 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingSchedules[address(msg.sender)].field_192
            if not block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                if vestingSchedules[address(msg.sender)].field_128 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if vestingSchedules[address(msg.sender)].field_128 < vestingSchedules[address(msg.sender)].field_160:
                    if vestingSchedules[address(msg.sender)].field_128 <= vestingSchedules[address(msg.sender)].field_224:
                        if not cliffs[address(msg.sender)].field_0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if block.timestamp < cliffs[address(msg.sender)].field_128:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            cliffs[address(msg.sender)].field_0 = 0
                            cliffs[address(msg.sender)].field_128 = 0
                        if cliffs[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cliffs[address(msg.sender)].field_0 <= 0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cliffs[address(msg.sender)].field_0
                    else:
                        if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_160:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if vestingSchedules[address(msg.sender)].field_192 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require vestingSchedules[address(msg.sender)].field_192
                        if vestingSchedules[address(msg.sender)].field_128 != vestingSchedules[address(msg.sender)].field_160:
                            if vestingSchedules[address(msg.sender)].field_224 > vestingSchedules[address(msg.sender)].field_128:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if not cliffs[address(msg.sender)].field_0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if block.timestamp < cliffs[address(msg.sender)].field_128:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    cliffs[address(msg.sender)].field_0 = 0
                                    cliffs[address(msg.sender)].field_128 = 0
                                if cliffs[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if cliffs[address(msg.sender)].field_0 <= 0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                    vestingSchedules[address(msg.sender)].field_224 = vestingSchedules[address(msg.sender)].field_128
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                        else:
                            if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_224:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if 0 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 > 0:
                                            emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if cliffs[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                else:
                    if vestingSchedules[address(msg.sender)].field_160 <= vestingSchedules[address(msg.sender)].field_0:
                        if not cliffs[address(msg.sender)].field_0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if block.timestamp < cliffs[address(msg.sender)].field_128:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            cliffs[address(msg.sender)].field_0 = 0
                            cliffs[address(msg.sender)].field_128 = 0
                        if cliffs[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cliffs[address(msg.sender)].field_0 <= 0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cliffs[address(msg.sender)].field_0
                    else:
                        if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_160:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if vestingSchedules[address(msg.sender)].field_192 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require vestingSchedules[address(msg.sender)].field_192
                        if vestingSchedules[address(msg.sender)].field_160 != vestingSchedules[address(msg.sender)].field_160:
                            if vestingSchedules[address(msg.sender)].field_224 > vestingSchedules[address(msg.sender)].field_160:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if not cliffs[address(msg.sender)].field_0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if block.timestamp < cliffs[address(msg.sender)].field_128:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    cliffs[address(msg.sender)].field_0 = 0
                                    cliffs[address(msg.sender)].field_128 = 0
                                if cliffs[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if cliffs[address(msg.sender)].field_0 <= 0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                    vestingSchedules[address(msg.sender)].field_224 = vestingSchedules[address(msg.sender)].field_160
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                        else:
                            if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_224:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if 0 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 > 0:
                                            emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if cliffs[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
            else:
                require block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                if block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192 / block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_192:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                if (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 < block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192:
                    revert with 0, 'SafeMath: addition overflow'
                if (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 < vestingSchedules[address(msg.sender)].field_160:
                    if (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 <= vestingSchedules[address(msg.sender)].field_224:
                        if not cliffs[address(msg.sender)].field_0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if block.timestamp < cliffs[address(msg.sender)].field_128:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            cliffs[address(msg.sender)].field_0 = 0
                            cliffs[address(msg.sender)].field_128 = 0
                        if cliffs[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cliffs[address(msg.sender)].field_0 <= 0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cliffs[address(msg.sender)].field_0
                    else:
                        if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_160:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if vestingSchedules[address(msg.sender)].field_192 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require vestingSchedules[address(msg.sender)].field_192
                        if (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 != vestingSchedules[address(msg.sender)].field_160:
                            if vestingSchedules[address(msg.sender)].field_224 > (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if not cliffs[address(msg.sender)].field_0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if block.timestamp < cliffs[address(msg.sender)].field_128:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    cliffs[address(msg.sender)].field_0 = 0
                                    cliffs[address(msg.sender)].field_128 = 0
                                if cliffs[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if cliffs[address(msg.sender)].field_0 <= 0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                    vestingSchedules[address(msg.sender)].field_224 = uint32((block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128)
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * (block.timestamp - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_192) + vestingSchedules[address(msg.sender)].field_128 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                        else:
                            if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_224:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if 0 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 > 0:
                                            emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if cliffs[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                else:
                    if vestingSchedules[address(msg.sender)].field_160 <= vestingSchedules[address(msg.sender)].field_0:
                        if not cliffs[address(msg.sender)].field_0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if block.timestamp < cliffs[address(msg.sender)].field_128:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            cliffs[address(msg.sender)].field_0 = 0
                            cliffs[address(msg.sender)].field_128 = 0
                        if cliffs[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if cliffs[address(msg.sender)].field_0 <= 0:
                            revert with 0, 'TokenEscrow: nothing to withdraw'
                        if cliffs[address(msg.sender)].field_0 > 0:
                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cliffs[address(msg.sender)].field_0
                    else:
                        if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_160:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if vestingSchedules[address(msg.sender)].field_192 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require vestingSchedules[address(msg.sender)].field_192
                        if vestingSchedules[address(msg.sender)].field_160 != vestingSchedules[address(msg.sender)].field_160:
                            if vestingSchedules[address(msg.sender)].field_224 > vestingSchedules[address(msg.sender)].field_160:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if not cliffs[address(msg.sender)].field_0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if block.timestamp < cliffs[address(msg.sender)].field_128:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    cliffs[address(msg.sender)].field_0 = 0
                                    cliffs[address(msg.sender)].field_128 = 0
                                if cliffs[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if cliffs[address(msg.sender)].field_0 <= 0:
                                    revert with 0, 'TokenEscrow: nothing to withdraw'
                                if cliffs[address(msg.sender)].field_0 > 0:
                                    emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                    vestingSchedules[address(msg.sender)].field_224 = vestingSchedules[address(msg.sender)].field_160
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192 > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_224 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
                        else:
                            if vestingSchedules[address(msg.sender)].field_128 > vestingSchedules[address(msg.sender)].field_224:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_192
                            if vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                            if not vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                if 0 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 < vestingSchedules[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 > 0:
                                            emit TokenVested(vestingSchedules[address(msg.sender)].field_0, msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 + cliffs[address(msg.sender)].field_0
                            else:
                                require vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 / vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 != vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[805 len 31]
                                if vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 > vestingSchedules[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                    vestingSchedules[address(msg.sender)].field_0 = 0
                                    vestingSchedules[address(msg.sender)].field_128 = 0
                                    vestingSchedules[address(msg.sender)].field_160 = 0
                                    vestingSchedules[address(msg.sender)].field_192 = 0
                                    vestingSchedules[address(msg.sender)].field_0 = vestingSchedules[address(msg.sender)].field_0
                                if not cliffs[address(msg.sender)].field_0:
                                    if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                        revert with 0, 'TokenEscrow: nothing to withdraw'
                                    emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                else:
                                    if block.timestamp < cliffs[address(msg.sender)].field_128:
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)
                                    else:
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            cliffs[address(msg.sender)].field_0 = 0
                                            cliffs[address(msg.sender)].field_128 = 0
                                        if cliffs[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0 <= 0:
                                            revert with 0, 'TokenEscrow: nothing to withdraw'
                                        if vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) > 0:
                                            emit TokenVested((vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192)), msg.sender);
                                        if cliffs[address(msg.sender)].field_0 > 0:
                                            emit CliffWithdrawn(cliffs[address(msg.sender)].field_0, msg.sender);
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, vestingSchedules[address(msg.sender)].field_0 - (vestingSchedules[address(msg.sender)].field_0 / vestingSchedules[address(msg.sender)].field_160 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192 * vestingSchedules[address(msg.sender)].field_224 - vestingSchedules[address(msg.sender)].field_128 / vestingSchedules[address(msg.sender)].field_192) + cliffs[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
