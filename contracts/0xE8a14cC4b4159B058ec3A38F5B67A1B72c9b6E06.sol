contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
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

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
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

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
}

function setBonusStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    startBlock = arg1
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    bonusEndBlock = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
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
        revert with 0, 'SafeMath: subtraction overflow'
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
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(rewardTokenAddress) <= 0:
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
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stakeTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
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
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_512:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor7:
                        revert with 'NH{q', 18
                    if block.number > bonusEndBlock:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor7:
                            revert with 'NH{q', 18
                        if block.number > bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor7:
                            revert with 'NH{q', 18
                        if block.number > bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                        revert with 0, 'SafeMath: division by zero'
                    if not stor7:
                        revert with 'NH{q', 18
                    if block.number > bonusEndBlock:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor7:
                            revert with 'NH{q', 18
                        if block.number > bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not stor7:
                                revert with 'NH{q', 18
                            if block.number > bonusEndBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if not 0 / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not stor7:
                                revert with 'NH{q', 18
                            if block.number > bonusEndBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
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
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            if totalStaked:
                if block.number <= bonusEndBlock:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if not block.number - poolInfo[idx].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor7:
                            revert with 'NH{q', 18
                        if block.number > bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / totalStaked
                        else:
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                    revert with 'NH{q', 17
                                if not 0 / stor7:
                                    revert with 'NH{q', 18
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if not block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 18
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not stor7:
                                revert with 'NH{q', 18
                            if block.number > bonusEndBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if not 0 / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                        revert with 'NH{q', 17
                                    if not 0 / stor7:
                                        revert with 'NH{q', 18
                                    if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 18
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not stor7:
                                revert with 'NH{q', 18
                            if block.number > bonusEndBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                        revert with 'NH{q', 17
                                    if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                        revert with 'NH{q', 18
                                    if 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor7:
                            revert with 'NH{q', 18
                        if block.number > bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalStaked:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / totalStaked
                        else:
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                    revert with 'NH{q', 17
                                if not 0 / stor7:
                                    revert with 'NH{q', 18
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if poolInfo[idx].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if bonusEndBlock < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if not bonusEndBlock - poolInfo[idx].field_512:
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not stor7:
                                revert with 'NH{q', 18
                            if block.number > bonusEndBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalStaked:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if not 0 / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                        revert with 'NH{q', 17
                                    if not 0 / stor7:
                                        revert with 'NH{q', 18
                                    if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if bonusEndBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if not bonusEndBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 18
                            if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                if stor7 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not stor7:
                                    revert with 'NH{q', 18
                                if block.number > bonusEndBlock:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if not 0 / stor7:
                                        if totalStaked <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalStaked:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalStaked
                                    else:
                                        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                                            revert with 'NH{q', 17
                                        if not 0 / stor7:
                                            revert with 'NH{q', 18
                                        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalStaked <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalStaked:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                            else:
                                if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 18
                                if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if stor7 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not stor7:
                                    revert with 'NH{q', 18
                                if block.number > bonusEndBlock:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalStaked:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                        if totalStaked <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalStaked:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalStaked
                                    else:
                                        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                            revert with 'NH{q', 17
                                        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                            revert with 'NH{q', 18
                                        if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalStaked <= 0:
                                            revert with 0, 'SafeMath: division by zero'
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
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
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
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
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
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if not block.number - uint256(poolInfo.field_512):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[address(arg1)].field_256
                if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 18
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if block.number - uint256(poolInfo.field_512) and rewardPerBlock > -1 / block.number - uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if not block.number - uint256(poolInfo.field_512):
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not stor7:
                revert with 'NH{q', 18
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                    revert with 'NH{q', 17
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[address(arg1)].field_256
                if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 18
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                revert with 'NH{q', 17
            if not 0 / stor7:
                revert with 'NH{q', 18
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            revert with 'NH{q', 17
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not stor7:
            revert with 'NH{q', 18
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            revert with 'NH{q', 17
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if bonusEndBlock < uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndBlock - uint256(poolInfo.field_512) and rewardPerBlock > -1 / bonusEndBlock - uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if not bonusEndBlock - uint256(poolInfo.field_512):
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not stor7:
            revert with 'NH{q', 18
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalStaked:
                revert with 'NH{q', 18
            if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
                revert with 'NH{q', 17
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[address(arg1)].field_256
            if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if not userInfo[address(arg1)].field_0:
                revert with 'NH{q', 18
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not 0 / stor7:
            revert with 'NH{q', 18
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        revert with 'NH{q', 17
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if stor7 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not stor7:
        revert with 'NH{q', 18
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return -userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not userInfo[address(arg1)].field_0:
            revert with 'NH{q', 18
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        revert with 'NH{q', 17
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        revert with 'NH{q', 18
    if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not totalStaked:
        revert with 'NH{q', 18
    if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
        revert with 'NH{q', 17
    if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return -userInfo[address(arg1)].field_256
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not userInfo[address(arg1)].field_0:
        revert with 'NH{q', 18
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
