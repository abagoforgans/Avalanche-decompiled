contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - exit(uint256 arg1)
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address rewardsDistributionAddress;
uint256 stor2;
uint8 stor3;
address rewardsTokenAddress; offset 8
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 sub_f4c3f7cd;
address devAccount;
mapping of uint256 sub_83d4cebb;
mapping of uint256 rewards;
uint256 totalScore;
mapping of uint256 balanceOf;
mapping of address stor15;
mapping of uint256 sub_a151b936;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor18;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= sub_a151b936[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Enumarable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function rewardsDistribution() payable {
    return rewardsDistributionAddress
}

function paused() payable {
    return bool(stor3)
}

function devAccount() payable {
    return devAccount
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function sub_83d4cebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_83d4cebb[arg1]
}

function owner() payable {
    return owner
}

function sub_a151b936(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a151b936[arg1]
}

function totalScore() payable {
    return totalScore
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function periodFinish() payable {
    return periodFinish
}

function sub_f4c3f7cd(?) payable {
    return sub_f4c3f7cd
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function getRewardForDuration() payable {
    if rewardRate and rewardsDuration > -1 / rewardRate:
        revert with 0, 17
    return (rewardRate * rewardsDuration)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardsDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsDistributionAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function walletOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_a151b936[address(arg1)] > test266151307():
        revert with 0, 65
    if sub_a151b936[address(arg1)]:
        mem[128 len 32 * sub_a151b936[address(arg1)]] = call.data[calldata.size len 32 * sub_a151b936[address(arg1)]]
    idx = 0
    while idx < sub_a151b936[address(arg1)]:
        if idx >= sub_a151b936[address(arg1)]:
            revert with 0, 'Enumarable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 17)
        if idx >= sub_a151b936[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=sub_a151b936[address(arg1)], data=mem[128 len 32 * sub_a151b936[address(arg1)]])
}

function sub_3f0aac19(?) payable {
    if 0 == totalScore:
        return sub_f4c3f7cd
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalScore:
            revert with 0, 18
        if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
            revert with 0, 17
        return (sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalScore:
        revert with 0, 18
    if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
        revert with 0, 17
    return (sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not RewardsDistribution contract'
    if totalScore != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 18
        rewardRate = arg1 / rewardsDuration
    else:
        if periodFinish < block.timestamp:
            revert with 0, 17
        if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
            revert with 0, 17
        if arg1 > !((periodFinish * rewardRate) - (block.timestamp * rewardRate)):
            revert with 0, 17
        if not rewardsDuration:
            revert with 0, 18
        rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 18
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp > !rewardsDuration:
        revert with 0, 17
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalScore:
        if sub_f4c3f7cd < sub_83d4cebb[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_f4c3f7cd - sub_83d4cebb[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_f4c3f7cd * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((sub_f4c3f7cd * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalScore:
            revert with 0, 18
        if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
            revert with 0, 17
        if sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_f4c3f7cd * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((sub_f4c3f7cd * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalScore:
        revert with 0, 18
    if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
        revert with 0, 17
    if sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (sub_f4c3f7cd * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((sub_f4c3f7cd * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(arg1)]) - (sub_83d4cebb[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if stor3:
        revert with 0, 'Pausable: paused'
    if totalScore != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalScore:
            if sub_f4c3f7cd < sub_83d4cebb[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and sub_f4c3f7cd - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalScore:
                    revert with 0, 18
                if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                    revert with 0, 17
                if sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalScore:
                    revert with 0, 18
                if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                    revert with 0, 17
                if sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        sub_83d4cebb[address(msg.sender)] = sub_f4c3f7cd
    staticcall stakingTokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'MeerkatStaking: Sender doesn't own this token'
    staticcall stakingTokenAddress.0x58ca1759 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalScore > !ext_call.return_data[0]:
        revert with 0, 17
    totalScore += ext_call.return_data[0]
    if balanceOf[msg.sender] > !ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[msg.sender] += ext_call.return_data[0]
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor15[arg1]) = msg.sender or Mask(96, 160, uint256(stor15[arg1]))
    tokenOfOwnerByIndex[msg.sender][stor16[msg.sender]] = arg1
    stor18[arg1] = sub_a151b936[msg.sender]
    if sub_a151b936[msg.sender] > -2:
        revert with 0, 17
    sub_a151b936[msg.sender]++
    emit Staked(msg.sender, arg1);
    stor2 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if totalScore != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalScore:
                revert with 0, 18
            if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                revert with 0, 17
            sub_f4c3f7cd += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalScore:
            if sub_f4c3f7cd < sub_83d4cebb[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and sub_f4c3f7cd - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalScore:
                    revert with 0, 18
                if sub_f4c3f7cd > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                    revert with 0, 17
                if sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_f4c3f7cd + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalScore:
                    revert with 0, 18
                if sub_f4c3f7cd > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore):
                    revert with 0, 17
                if sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) < sub_83d4cebb[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and sub_f4c3f7cd + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore) - sub_83d4cebb[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (sub_f4c3f7cd * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalScore * balanceOf[address(msg.sender)]) - (sub_83d4cebb[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        sub_83d4cebb[address(msg.sender)] = sub_f4c3f7cd
    staticcall stakingTokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'MeerkatStaking: Contract doesn't own this token'
    if address(stor15[arg1]) != msg.sender:
        revert with 0, 'MeerkatStaking: Original depositor is not matching'
    address(stor15[arg1]) = 0
    if sub_a151b936[address(msg.sender)] < 1:
        revert with 0, 17
    if sub_a151b936[address(msg.sender)] - 1 != stor18[arg1]:
        tokenOfOwnerByIndex[address(msg.sender)][stor18[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor16[address(msg.sender)] - 1]
        stor18[stor17[address(msg.sender)][stor16[address(msg.sender)] - 1]] = stor18[arg1]
    stor18[arg1] = 0
    tokenOfOwnerByIndex[address(msg.sender)][stor16[address(msg.sender)] - 1] = 0
    if sub_a151b936[msg.sender] < 1:
        revert with 0, 17
    sub_a151b936[msg.sender]--
    staticcall stakingTokenAddress.0x58ca1759 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalScore < ext_call.return_data[0]:
        revert with 0, 17
    totalScore -= ext_call.return_data[0]
    if balanceOf[msg.sender] < ext_call.return_data[0]:
        revert with 0, 17
    balanceOf[msg.sender] -= ext_call.return_data[0]
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(msg.sender, arg1);
    stor2 = 1
}



}
