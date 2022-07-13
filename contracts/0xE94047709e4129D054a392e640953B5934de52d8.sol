contract main {




// =====================  Runtime code  =====================


#
#  - recoverWrongTokens(address arg1, address arg2, uint256 arg3)
#  - claimRewards()
#  - stake(address arg1, uint256 arg2)
#  - unstake(address arg1, uint256 arg2)
#
const PRECISION = 10^18


address owner;
address sub_4a7d3ef6Address;
address wtfAddress;
uint256 rewardPerShare;
uint256 stor5;
uint256 stor6;
uint256 lastRewardBlock;
uint256 stor8;
uint256 totalStaked;
mapping of struct rewardDebt;

function getRewardDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardDebt[address(arg1)].field_256
}

function wtf() payable {
    return wtfAddress
}

function rewardPerShare() payable {
    return rewardPerShare
}

function sub_4a7d3ef6(?) payable {
    return sub_4a7d3ef6Address
}

function getAccountData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardDebt[address(arg1)].field_0, rewardDebt[address(arg1)].field_256
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardDebt[arg1].field_0, rewardDebt[arg1].field_256
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function _fallback() payable {
    revert
}

function isPoolActive() payable {
    return (block.number < stor6)
}

function pool() payable {
    return rewardPerShare, stor5, stor6, lastRewardBlock, stor8, totalStaked
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6ef6305d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VeWTF Staking: New startBlock must be lower than new endBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'VeWTF Staking: New startBlock must be higher than current block'
    stor5 = arg1
    stor6 = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function sub_54f274cc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number > lastRewardBlock:
        if totalStaked:
            if lastRewardBlock < stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VeWTF Staking: _from should be >= startRewardBlock'
            if lastRewardBlock >= stor6:
                if False and stor8 > 0:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if rewardPerShare > !(0 / totalStaked):
                    revert with 0, 17
                rewardPerShare += 0 / totalStaked
            else:
                if block.number < stor6:
                    if block.number < lastRewardBlock:
                        revert with 0, 17
                    if block.number - lastRewardBlock and stor8 > -1 / block.number - lastRewardBlock:
                        revert with 0, 17
                    if (block.number * stor8) - (lastRewardBlock * stor8) and 10^18 > -1 / (block.number * stor8) - (lastRewardBlock * stor8):
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if rewardPerShare > !((10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked):
                        revert with 0, 17
                    rewardPerShare += (10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked
                else:
                    if stor6 < lastRewardBlock:
                        revert with 0, 17
                    if stor6 - lastRewardBlock and stor8 > -1 / stor6 - lastRewardBlock:
                        revert with 0, 17
                    if (stor6 * stor8) - (lastRewardBlock * stor8) and 10^18 > -1 / (stor6 * stor8) - (lastRewardBlock * stor8):
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if rewardPerShare > !((10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked):
                        revert with 0, 17
                    rewardPerShare += (10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked
        lastRewardBlock = block.number
    stor8 = arg1
    emit NewRewardPerBlock(arg1);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if rewardDebt[address(arg1)].field_0 and rewardPerShare > -1 / rewardDebt[address(arg1)].field_0:
            revert with 0, 17
        if rewardDebt[address(arg1)].field_0 * rewardPerShare / 10^18 < rewardDebt[address(arg1)].field_256:
            revert with 0, 17
        return ((rewardDebt[address(arg1)].field_0 * rewardPerShare / 10^18) - rewardDebt[address(arg1)].field_256)
    if not totalStaked:
        if rewardDebt[address(arg1)].field_0 and rewardPerShare > -1 / rewardDebt[address(arg1)].field_0:
            revert with 0, 17
        if rewardDebt[address(arg1)].field_0 * rewardPerShare / 10^18 < rewardDebt[address(arg1)].field_256:
            revert with 0, 17
        return ((rewardDebt[address(arg1)].field_0 * rewardPerShare / 10^18) - rewardDebt[address(arg1)].field_256)
    if lastRewardBlock < stor5:
        revert with 0, 'VeWTF Staking: _from should be >= startRewardBlock'
    if lastRewardBlock >= stor6:
        if False and stor8 > 0:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if rewardPerShare > !(0 / totalStaked):
            revert with 0, 17
        if rewardDebt[address(arg1)].field_0 and rewardPerShare + (0 / totalStaked) > -1 / rewardDebt[address(arg1)].field_0:
            revert with 0, 17
        if (rewardPerShare * rewardDebt[address(arg1)].field_0) + (0 / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18 < rewardDebt[address(arg1)].field_256:
            revert with 0, 17
        return (((rewardPerShare * rewardDebt[address(arg1)].field_0) + (0 / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18) - rewardDebt[address(arg1)].field_256)
    if block.number < stor6:
        if block.number < lastRewardBlock:
            revert with 0, 17
        if block.number - lastRewardBlock and stor8 > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if (block.number * stor8) - (lastRewardBlock * stor8) and 10^18 > -1 / (block.number * stor8) - (lastRewardBlock * stor8):
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if rewardPerShare > !((10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked):
            revert with 0, 17
        if rewardDebt[address(arg1)].field_0 and rewardPerShare + ((10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked) > -1 / rewardDebt[address(arg1)].field_0:
            revert with 0, 17
        if (rewardPerShare * rewardDebt[address(arg1)].field_0) + ((10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18 < rewardDebt[address(arg1)].field_256:
            revert with 0, 17
        return (((rewardPerShare * rewardDebt[address(arg1)].field_0) + ((10^18 * block.number * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18) - rewardDebt[address(arg1)].field_256)
    if stor6 < lastRewardBlock:
        revert with 0, 17
    if stor6 - lastRewardBlock and stor8 > -1 / stor6 - lastRewardBlock:
        revert with 0, 17
    if (stor6 * stor8) - (lastRewardBlock * stor8) and 10^18 > -1 / (stor6 * stor8) - (lastRewardBlock * stor8):
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if rewardPerShare > !((10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked):
        revert with 0, 17
    if rewardDebt[address(arg1)].field_0 and rewardPerShare + ((10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked) > -1 / rewardDebt[address(arg1)].field_0:
        revert with 0, 17
    if (rewardPerShare * rewardDebt[address(arg1)].field_0) + ((10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18 < rewardDebt[address(arg1)].field_256:
        revert with 0, 17
    return (((rewardPerShare * rewardDebt[address(arg1)].field_0) + ((10^18 * stor6 * stor8) - (10^18 * lastRewardBlock * stor8) / totalStaked * rewardDebt[address(arg1)].field_0) / 10^18) - rewardDebt[address(arg1)].field_256)
}



}
