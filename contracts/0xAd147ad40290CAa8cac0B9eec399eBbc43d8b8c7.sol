contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#
uint256 stor0;
address owner;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 totalSupply;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 balanceOf;
mapping of address ownerOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function rewardsDuration() payable {
    return rewardsDuration
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
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

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
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
    if arg1 <= 0:
        revert with 0, 'Reward duration can't be zero'
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

function rewardPerToken() payable {
    if 0 == totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function setPeriodFinish(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    periodFinish = arg1
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
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
    require ext_code.size(rewardsTokenAddress)
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
    if 0 == totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if not arg1.length:
        revert with 0, 'Cannot stake 0'
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 13
        ownerOf[cd[((32 * idx) + arg1 + 36)]] = msg.sender
        emit Staked(msg.sender, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if totalSupply > !arg1.length:
        revert with 0, 17
    totalSupply += arg1.length
    if balanceOf[msg.sender] > !arg1.length:
        revert with 0, 17
    balanceOf[msg.sender] += arg1.length
    stor0 = 1
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if arg1.length <= 0:
                    revert with 0, 'Cannot withdraw 0'
                idx = 0
                while arg1.length > idx:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 13
                    if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'Only owner of the token can withdraw'
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1378 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg1.length) + 101] = this.address
                    mem[ceil32(32 * arg1.length) + 133] = msg.sender
                    mem[ceil32(32 * arg1.length) + 165] = _1378
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1378
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if 0 == totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1390 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1390
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1390
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1382 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1382
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1382
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1386 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1386
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1386
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if arg1.length <= 0:
                    revert with 0, 'Cannot withdraw 0'
                idx = 0
                while arg1.length > idx:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 13
                    if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'Only owner of the token can withdraw'
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1394 = mem[(32 * idx) + 128]
                    mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * arg1.length) + 101] = this.address
                    mem[ceil32(32 * arg1.length) + 133] = msg.sender
                    mem[ceil32(32 * arg1.length) + 165] = _1394
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1394
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if 0 == totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1406 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1406
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1406
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1398 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1398
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1398
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 0, 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 0, 17
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                            revert with 0, 17
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1402 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1402
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1402
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
    else:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1314 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1314
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1314
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 0 == totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1326 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1326
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1326
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1318 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1318
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1318
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1322 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1322
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1322
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1330 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1330
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1330
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 0 == totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1342 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1342
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1342
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1334 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1334
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1334
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1338 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1338
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1338
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1346 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1346
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1346
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 0 == totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1358 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1358
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1358
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1350 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1350
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1350
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1354 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1354
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1354
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    if arg1.length <= 0:
                        revert with 0, 'Cannot withdraw 0'
                    idx = 0
                    while arg1.length > idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 13
                        if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Only owner of the token can withdraw'
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1362 = mem[(32 * idx) + 128]
                        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * arg1.length) + 101] = this.address
                        mem[ceil32(32 * arg1.length) + 133] = msg.sender
                        mem[ceil32(32 * arg1.length) + 165] = _1362
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1362
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 0 == totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                            revert with 0, 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1.length <= 0:
                            revert with 0, 'Cannot withdraw 0'
                        idx = 0
                        while arg1.length > idx:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 13
                            if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Only owner of the token can withdraw'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1374 = mem[(32 * idx) + 128]
                            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * arg1.length) + 101] = this.address
                            mem[ceil32(32 * arg1.length) + 133] = msg.sender
                            mem[ceil32(32 * arg1.length) + 165] = _1374
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x42842e0e with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1374
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 0, 50
                            emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 0, 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1366 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1366
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1366
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 0, 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 0, 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                                revert with 0, 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                                revert with 0, 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1.length <= 0:
                                revert with 0, 'Cannot withdraw 0'
                            idx = 0
                            while arg1.length > idx:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 13
                                if ownerOf[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Only owner of the token can withdraw'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1370 = mem[(32 * idx) + 128]
                                mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * arg1.length) + 101] = this.address
                                mem[ceil32(32 * arg1.length) + 133] = msg.sender
                                mem[ceil32(32 * arg1.length) + 165] = _1370
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x42842e0e with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1370
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 0, 50
                                emit Withdrawn(msg.sender, mem[(32 * idx) + 128]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
    if totalSupply < mem[96]:
        revert with 0, 17
    totalSupply -= mem[96]
    if balanceOf[msg.sender] < mem[96]:
        revert with 0, 17
    balanceOf[msg.sender] -= mem[96]
    stor0 = 1
}



}
