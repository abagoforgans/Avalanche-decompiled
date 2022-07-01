contract main {




// =====================  Runtime code  =====================


#
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 totalStaked;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor7;
uint256 startBlock;
uint256 bonusEndBlock;
address sub_5bf6c88aAddress;
address stor11;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function stakeToken() payable {
    return stakeTokenAddress
}

function sub_5bf6c88a(?) payable {
    return sub_5bf6c88aAddress
}

function totalStaked() payable {
    return totalStaked
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'Farm already started'
    startBlock = arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    uint256(poolInfo.field_512) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalStakeTokenBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ab89fbbb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor11)
    staticcall stor11.0x1959a002 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    return (bonusEndBlock - arg1)
}

function getStakeTokenFeeBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 260] = 32
    mem[ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
    if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stakeTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
            if not mem[ceil32(return_data.size) + 356]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_512:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor7:
                        revert with 'NH{q', 18
                    if not 0 / stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                            revert with 'NH{q', 17
                        if not 0 / stor7:
                            revert with 'NH{q', 18
                        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if not block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 18
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor7:
                            revert with 'NH{q', 18
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                revert with 'NH{q', 17
                            if not 0 / stor7:
                                revert with 'NH{q', 18
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            revert with 'NH{q', 17
                        if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            revert with 'NH{q', 18
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor7:
                            revert with 'NH{q', 18
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                revert with 'NH{q', 17
                            if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                revert with 'NH{q', 18
                            if 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 1000000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor7:
                        revert with 'NH{q', 18
                    if not 0 / stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                            revert with 'NH{q', 17
                        if not 0 / stor7:
                            revert with 'NH{q', 18
                        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor7:
                            revert with 'NH{q', 18
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                revert with 'NH{q', 17
                            if not 0 / stor7:
                                revert with 'NH{q', 18
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if bonusEndBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if not bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 'NH{q', 18
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 'NH{q', 18
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                    revert with 'NH{q', 17
                                if not 0 / stor7:
                                    revert with 'NH{q', 18
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                                revert with 'NH{q', 18
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 'NH{q', 18
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                    revert with 'NH{q', 17
                                if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                    revert with 'NH{q', 18
                                if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 1000000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not totalStaked:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 30
            mem[_191 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_193 + idx + 68] = mem[_191 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_193 + 98] = 0
                revert with memory
                  from mem[64]
                   len _193 + -mem[64] + 100
            if block.number < poolInfo[idx].field_512:
                revert with 'NH{q', 17
            if not block.number - poolInfo[idx].field_512:
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 26
                mem[_207 + 32] = 'SafeMath: division by zero'
                if stor7 <= 0:
                    _209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_209 + idx + 68] = mem[_207 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_209 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _209 + -mem[64] + 100
                if not stor7:
                    revert with 'NH{q', 18
                if not 0 / stor7:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = 26
                    mem[_226 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_234 + idx + 68] = mem[_226 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_234 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _234 + -mem[64] + 100
                if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                    revert with 'NH{q', 17
                if not 0 / stor7:
                    revert with 'NH{q', 18
                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_261] = 26
                mem[_261 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _271 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_271 + idx + 68] = mem[_261 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_271 + 94] = 0
                revert with memory
                  from mem[64]
                   len _271 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                revert with 'NH{q', 17
            if not block.number - poolInfo[idx].field_512:
                revert with 'NH{q', 18
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                if stor7 <= 0:
                    _230 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_230 + idx + 68] = mem[_222 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_230 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _230 + -mem[64] + 100
                if not stor7:
                    revert with 'NH{q', 18
                if not 0 / stor7:
                    _260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_260] = 26
                    mem[_260 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _269 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_269 + idx + 68] = mem[_260 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_269 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _269 + -mem[64] + 100
                if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                    revert with 'NH{q', 17
                if not 0 / stor7:
                    revert with 'NH{q', 18
                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 26
                mem[_305 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_313 + idx + 68] = mem[_305 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 94] = 0
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                revert with 'NH{q', 17
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                revert with 'NH{q', 18
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if stor7 <= 0:
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_264 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_264 + 94] = 0
                revert with memory
                  from mem[64]
                   len _264 + -mem[64] + 100
            if not stor7:
                revert with 'NH{q', 18
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_311 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_311 + 94] = 0
                revert with memory
                  from mem[64]
                   len _311 + -mem[64] + 100
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                revert with 'NH{q', 17
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _345 = mem[64]
            mem[64] = mem[64] + 64
            mem[_345] = 26
            mem[_345 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _347 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_347 + idx + 68] = mem[_345 + idx + 32]
                idx = idx + 32
                continue 
            mem[_347 + 94] = 0
            revert with memory
              from mem[64]
               len _347 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _197 = mem[64]
            mem[64] = mem[64] + 64
            mem[_197] = 26
            mem[_197 + 32] = 'SafeMath: division by zero'
            if stor7 <= 0:
                _200 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_200 + idx + 68] = mem[_197 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_200 + 94] = 0
                revert with memory
                  from mem[64]
                   len _200 + -mem[64] + 100
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_215 + idx + 68] = mem[_211 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_215 + 94] = 0
                revert with memory
                  from mem[64]
                   len _215 + -mem[64] + 100
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 26
            mem[_238 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_243 + idx + 68] = mem[_238 + idx + 32]
                idx = idx + 32
                continue 
            mem[_243 + 94] = 0
            revert with memory
              from mem[64]
               len _243 + -mem[64] + 100
        _192 = mem[64]
        mem[64] = mem[64] + 64
        mem[_192] = 30
        mem[_192 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _194 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_194 + idx + 68] = mem[_192 + idx + 32]
                idx = idx + 32
                continue 
            mem[_194 + 98] = 0
            revert with memory
              from mem[64]
               len _194 + -mem[64] + 100
        if bonusEndBlock < poolInfo[idx].field_512:
            revert with 'NH{q', 17
        if not bonusEndBlock - poolInfo[idx].field_512:
            _208 = mem[64]
            mem[64] = mem[64] + 64
            mem[_208] = 26
            mem[_208 + 32] = 'SafeMath: division by zero'
            if stor7 <= 0:
                _210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_210 + idx + 68] = mem[_208 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_210 + 94] = 0
                revert with memory
                  from mem[64]
                   len _210 + -mem[64] + 100
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_236 + idx + 68] = mem[_228 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 94] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _275 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_275 + idx + 68] = mem[_263 + idx + 32]
                idx = idx + 32
                continue 
            mem[_275 + 94] = 0
            revert with memory
              from mem[64]
               len _275 + -mem[64] + 100
        if bonusEndBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[idx].field_512:
            revert with 'NH{q', 17
        if not bonusEndBlock - poolInfo[idx].field_512:
            revert with 'NH{q', 18
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 26
            mem[_223 + 32] = 'SafeMath: division by zero'
            if stor7 <= 0:
                _232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_232 + idx + 68] = mem[_223 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_232 + 94] = 0
                revert with memory
                  from mem[64]
                   len _232 + -mem[64] + 100
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                _262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_262] = 26
                mem[_262 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _273 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_273 + idx + 68] = mem[_262 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_273 + 94] = 0
                revert with memory
                  from mem[64]
                   len _273 + -mem[64] + 100
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _307 = mem[64]
            mem[64] = mem[64] + 64
            mem[_307] = 26
            mem[_307 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _318 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_318 + idx + 68] = mem[_307 + idx + 32]
                idx = idx + 32
                continue 
            mem[_318 + 94] = 0
            revert with memory
              from mem[64]
               len _318 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            revert with 'NH{q', 17
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            revert with 'NH{q', 18
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _258 = mem[64]
        mem[64] = mem[64] + 64
        mem[_258] = 26
        mem[_258 + 32] = 'SafeMath: division by zero'
        if stor7 <= 0:
            _266 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_266 + idx + 68] = mem[_258 + idx + 32]
                idx = idx + 32
                continue 
            mem[_266 + 94] = 0
            revert with memory
              from mem[64]
               len _266 + -mem[64] + 100
        if not stor7:
            revert with 'NH{q', 18
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / totalStaked
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _316 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_316 + idx + 68] = mem[_306 + idx + 32]
                idx = idx + 32
                continue 
            mem[_316 + 94] = 0
            revert with memory
              from mem[64]
               len _316 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
            revert with 'NH{q', 17
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _346 = mem[64]
        mem[64] = mem[64] + 64
        mem[_346] = 26
        mem[_346 + 32] = 'SafeMath: division by zero'
        if totalStaked > 0:
            if not totalStaked:
                revert with 'NH{q', 18
            if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) - 1:
                revert with 'NH{q', 17
            if poolInfo[idx].field_768 + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _350 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_350 + idx + 68] = mem[_346 + idx + 32]
            idx = idx + 32
            continue 
        mem[_350 + 94] = 0
        revert with memory
          from mem[64]
           len _350 + -mem[64] + 100
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number < uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if not block.number - uint256(poolInfo.field_512):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[address(arg1)].field_256
                if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 18
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if block.number - uint256(poolInfo.field_512) and rewardPerBlock > -1 / block.number - uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if not block.number - uint256(poolInfo.field_512):
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[address(arg1)].field_256
                if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 18
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            revert with 'NH{q', 17
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0, 'SafeMath: multiplication overflow'
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7:
            revert with 'NH{q', 18
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            revert with 'NH{q', 17
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndBlock < uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndBlock - uint256(poolInfo.field_512) and rewardPerBlock > -1 / bonusEndBlock - uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if not bonusEndBlock - uint256(poolInfo.field_512):
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        revert with 'NH{q', 17
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0, 'SafeMath: multiplication overflow'
    if stor7 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7:
        revert with 'NH{q', 18
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        revert with 'NH{q', 17
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        revert with 'NH{q', 18
    if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalStaked:
        revert with 'NH{q', 18
    if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
        revert with 'NH{q', 17
    if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return -userInfo[address(arg1)].field_256
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not userInfo[address(arg1)].field_0:
        revert with 'NH{q', 18
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
