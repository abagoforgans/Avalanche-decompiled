contract main {




// =====================  Runtime code  =====================


address owner;
address syrupAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor6;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 totalStaked;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function totalStaked() payable {
    return totalStaked
}

function syrup() payable {
    return syrupAddress
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function changeRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    return (bonusEndBlock - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 >= ext_call.return_data[0] - totalStaked:
        revert with 0, 'not enough rewards'
    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}

function emergencyWithdraw() payable {
    require 0 < poolInfo.length
    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if userInfo[address(msg.sender)].field_0 > totalStaked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStaked -= userInfo[address(msg.sender)].field_0
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    emit EmergencyWithdraw(userInfo[address(msg.sender)].field_0, msg.sender);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6
                            if 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not 0 / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                require 0 / stor6
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                require (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6
                                if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked
        poolInfo[arg1].field_512 = block.number
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(poolInfo.field_512):
            if stor6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor6
            if not 0 / stor6:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require block.number - uint256(poolInfo.field_512)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor6
            if not 0 / stor6:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
        if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require bonusEndBlock - uint256(poolInfo.field_512)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor6
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
    if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        if not totalStaked:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 30
            mem[_237 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _239 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_239 + idx + 68] = mem[_237 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_239 + 68] = mem[_239 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _239 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_262] = 26
                mem[_262 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_272 + idx + 68] = mem[_262 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_272 + 68] = mem[_272 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _272 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_344 + idx + 68] = mem[_331 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_344 + 68] = mem[_344 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _344 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 26
                mem[_343 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _366 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_366 + idx + 68] = mem[_343 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_366 + 68] = mem[_366 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _366 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_280 + idx + 68] = mem[_271 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_280 + 68] = mem[_280 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _280 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 26
                    mem[_342 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_363 + idx + 68] = mem[_342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_363 + 68] = mem[_363 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _363 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 26
                mem[_362 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_389 + idx + 68] = mem[_362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_389 + 68] = mem[_389 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _389 + -mem[64] + 100
            require (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 26
            mem[_279 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_296 + idx + 68] = mem[_279 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_296 + 68] = mem[_296 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _296 + -mem[64] + 100
            require stor6
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_386 + idx + 68] = mem[_361 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_386 + 68] = mem[_386 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _386 + -mem[64] + 100
            require (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 26
            mem[_385 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / totalStaked
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _417 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_417 + idx + 68] = mem[_385 + idx + 32]
                idx = idx + 32
                continue 
            mem[_417 + 68] = mem[_417 + 74 len 26]
            revert with memory
              from mem[64]
               len _417 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 26
                mem[_295 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_311 + idx + 68] = mem[_295 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_311 + 68] = mem[_311 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _311 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_310] = 26
            mem[_310 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / totalStaked
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _326 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_326 + idx + 68] = mem[_310 + idx + 32]
                idx = idx + 32
                continue 
            mem[_326 + 68] = mem[_326 + 74 len 26]
            revert with memory
              from mem[64]
               len _326 + -mem[64] + 100
        _238 = mem[64]
        mem[64] = mem[64] + 64
        mem[_238] = 30
        mem[_238 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_242 + idx + 68] = mem[_238 + idx + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 70 len 30]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_276 + idx + 68] = mem[_263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 68] = mem[_276 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_333] = 26
                mem[_333 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _349 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_349 + idx + 68] = mem[_333 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_349 + 68] = mem[_349 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _349 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / totalStaked
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _375 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_375 + idx + 68] = mem[_348 + idx + 32]
                idx = idx + 32
                continue 
            mem[_375 + 68] = mem[_375 + 74 len 26]
            revert with memory
              from mem[64]
               len _375 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 26
            mem[_275 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _285 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_285 + idx + 68] = mem[_275 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_285 + 68] = mem[_285 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _285 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_372 + idx + 68] = mem[_347 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_372 + 68] = mem[_372 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _372 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_371] = 26
            mem[_371 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / totalStaked
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _399 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_399 + idx + 68] = mem[_371 + idx + 32]
                idx = idx + 32
                continue 
            mem[_399 + 68] = mem[_399 + 74 len 26]
            revert with memory
              from mem[64]
               len _399 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _284 = mem[64]
        mem[64] = mem[64] + 64
        mem[_284] = 26
        mem[_284 + 32] = 'SafeMath: division by zero'
        if stor6 <= 0:
            _301 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_301 + idx + 68] = mem[_284 + idx + 32]
                idx = idx + 32
                continue 
            mem[_301 + 68] = mem[_301 + 74 len 26]
            revert with memory
              from mem[64]
               len _301 + -mem[64] + 100
        require stor6
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 26
            mem[_370 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / totalStaked
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _396 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_396 + idx + 68] = mem[_370 + idx + 32]
                idx = idx + 32
                continue 
            mem[_396 + 68] = mem[_396 + 74 len 26]
            revert with memory
              from mem[64]
               len _396 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
        if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _395 = mem[64]
        mem[64] = mem[64] + 64
        mem[_395] = 26
        mem[_395 + 32] = 'SafeMath: division by zero'
        if totalStaked > 0:
            require totalStaked
            if poolInfo[idx].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / totalStaked) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / totalStaked
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _424 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_424 + idx + 68] = mem[_395 + idx + 32]
            idx = idx + 32
            continue 
        mem[_424 + 68] = mem[_424 + 74 len 26]
        revert with memory
          from mem[64]
           len _424 + -mem[64] + 100
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 0, 'withdraw: not good'
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(msg.sender)].field_0:
            if userInfo[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[address(msg.sender)].field_256 <= 0:
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if arg1 > userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_0 -= arg1
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    if arg1 > totalStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalStaked -= arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                emit Withdraw(arg1, msg.sender);
            else:
                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(arg1, msg.sender);
                else:
                    if arg1 > userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_0 -= arg1
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if arg1 > totalStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalStaked -= arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(address rg1, uint256 rg2):
                                  arg1,
                                  mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                  msg.sender,
        else:
            require userInfo[address(msg.sender)].field_0
            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if arg1 > userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_0 -= arg1
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    if arg1 > totalStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalStaked -= arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                emit Withdraw(arg1, msg.sender);
            else:
                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(arg1, msg.sender);
                else:
                    if arg1 > userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_0 -= arg1
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if arg1 > totalStaked:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalStaked -= arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(address rg1, uint256 rg2):
                                  arg1,
                                  mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                  msg.sender,
    else:
        if not totalStaked:
            uint256(poolInfo.field_512) = block.number
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if arg1 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_0 -= arg1
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call address(poolInfo.field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if arg1 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(arg1, msg.sender);
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(arg1, msg.sender);
                    else:
                        if arg1 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_0 -= arg1
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call address(poolInfo.field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg1 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(address rg1, uint256 rg2):
                                      arg1,
                                      mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if arg1 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_0 -= arg1
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call address(poolInfo.field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                        if arg1 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Withdraw(arg1, msg.sender);
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(arg1, msg.sender);
                    else:
                        if arg1 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_0 -= arg1
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call address(poolInfo.field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg1 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 783 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(address rg1, uint256 rg2):
                                      arg1,
                                      mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
        else:
            if block.number <= bonusEndBlock:
                if uint256(poolInfo.field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo.field_512):
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                else:
                    require block.number - uint256(poolInfo.field_512)
                    if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                            if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
                uint256(poolInfo.field_512) = block.number
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if arg1 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[address(msg.sender)].field_0 -= arg1
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            call address(poolInfo.field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                            if arg1 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 810 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(arg1, msg.sender);
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 682 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if arg1 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[address(msg.sender)].field_0 -= arg1
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            call address(poolInfo.field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 975 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(address rg1, uint256 rg2):
                                          arg1,
                                          mem[(2 * ceil32(return_data.size)) + 970 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if arg1 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[address(msg.sender)].field_0 -= arg1
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            call address(poolInfo.field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                            if arg1 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 810 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Withdraw(arg1, msg.sender);
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 682 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if arg1 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[address(msg.sender)].field_0 -= arg1
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            call address(poolInfo.field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 975 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(address rg1, uint256 rg2):
                                          arg1,
                                          mem[(2 * ceil32(return_data.size)) + 970 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    uint256(poolInfo.field_512) = block.number
                    if not userInfo[address(msg.sender)].field_0:
                        if userInfo[address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 746 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 618 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(arg1, msg.sender);
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 911 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(address rg1, uint256 rg2):
                                              arg1,
                                              mem[(2 * ceil32(return_data.size)) + 906 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 746 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 618 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(arg1, msg.sender);
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 809 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 856 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 911 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(address rg1, uint256 rg2):
                                              arg1,
                                              mem[(2 * ceil32(return_data.size)) + 906 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                else:
                    if uint256(poolInfo.field_512) > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - uint256(poolInfo.field_512):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require bonusEndBlock - uint256(poolInfo.field_512)
                        if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not 0 / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / totalStaked
                            else:
                                require 0 / stor6
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / totalStaked
                            else:
                                require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                                if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
                    uint256(poolInfo.field_512) = block.number
                    if not userInfo[address(msg.sender)].field_0:
                        if userInfo[address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 810 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(arg1, msg.sender);
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 975 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(address rg1, uint256 rg2):
                                              arg1,
                                              mem[(2 * ceil32(return_data.size)) + 970 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 810 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Withdraw(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(arg1, msg.sender);
                            else:
                                if arg1 > userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[address(msg.sender)].field_0 -= arg1
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                                call address(poolInfo.field_0) with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 841]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 > totalStaked:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalStaked -= arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 975 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Withdraw(address rg1, uint256 rg2):
                                              arg1,
                                              mem[(2 * ceil32(return_data.size)) + 970 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[address(msg.sender)].field_0 <= 0:
            if arg1 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call address(poolInfo.field_0) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            emit Deposit(arg1, msg.sender);
        else:
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(address rg1, uint256 rg2):
                                     arg1,
                                     mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(address rg1, uint256 rg2):
                                     arg1,
                                     mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
    else:
        if not totalStaked:
            uint256(poolInfo.field_512) = block.number
            if userInfo[address(msg.sender)].field_0 <= 0:
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                emit Deposit(arg1, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(address rg1, uint256 rg2):
                                         arg1,
                                         mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(address rg1, uint256 rg2):
                                         arg1,
                                         mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
        else:
            if block.number <= bonusEndBlock:
                if uint256(poolInfo.field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo.field_512):
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                else:
                    require block.number - uint256(poolInfo.field_512)
                    if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                            if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
                uint256(poolInfo.field_512) = block.number
                if userInfo[address(msg.sender)].field_0 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if totalStaked + arg1 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 586 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if userInfo[address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if totalStaked + arg1 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 777 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 809]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[address(msg.sender)].field_0 += arg1
                                if totalStaked + arg1 < totalStaked:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                totalStaked += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(address rg1, uint256 rg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if totalStaked + arg1 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 777 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 809]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[address(msg.sender)].field_0 += arg1
                                if totalStaked + arg1 < totalStaked:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                totalStaked += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(address rg1, uint256 rg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / totalStaked
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    uint256(poolInfo.field_512) = block.number
                    if userInfo[address(msg.sender)].field_0 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[address(msg.sender)].field_0:
                            if userInfo[address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 650 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 618 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 713 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 745]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(address rg1, uint256 rg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 650 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 618 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 713 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 745]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(address rg1, uint256 rg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                else:
                    if uint256(poolInfo.field_512) > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - uint256(poolInfo.field_512):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / totalStaked
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                    else:
                        require bonusEndBlock - uint256(poolInfo.field_512)
                        if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not 0 / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / totalStaked
                            else:
                                require 0 / stor6
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / totalStaked
                            else:
                                require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                                if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
                    uint256(poolInfo.field_512) = block.number
                    if userInfo[address(msg.sender)].field_0 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[608 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if totalStaked + arg1 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 586 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[address(msg.sender)].field_0:
                            if userInfo[address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 777 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 809]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(address rg1, uint256 rg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 777 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 809]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if totalStaked + arg1 < totalStaked:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    totalStaked += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(address rg1, uint256 rg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
}



}
