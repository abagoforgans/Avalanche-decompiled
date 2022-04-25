contract main {




// =====================  Runtime code  =====================


#
#  - stopEmission()
#  - getBoosterReward()
#  - withdraw(uint256 arg1)
#  - getReward()
#  - emergencyWithdraw(uint256 arg1)
#  - getCoverage()
#  - sendRewardsAndStartEmission(uint256 arg1, uint256 arg2, uint256 arg3)
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#  - recoverFees()
#  - exit()
#  - stakeWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#
uint8 paused; offset 160
uint32 stor1;
address owner;
uint256 stor1;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
address boosterTokenAddress;
uint256 sub_be0bf751;
uint256 sub_66a03c7f;
mapping of uint256 sub_5d129544;
mapping of uint256 sub_f22797d8;
mapping of uint256 coverageOf;
uint256 totalCoverage;
array of uint256 sub_35ceec0f;
array of uint256 sub_8f0bb79c;
mapping of uint256 sub_c57a202c;
uint256 totalFees;
uint256 totalSupply;
mapping of uint256 balanceOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function coverageOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return coverageOf[address(arg1)]
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function sub_35ceec0f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_35ceec0f.length
    return sub_35ceec0f[arg1]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function boosterToken() payable {
    return boosterTokenAddress
}

function paused() payable {
    return bool(paused)
}

function sub_5d129544(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5d129544[arg1]
}

function sub_66a03c7f(?) payable {
    return sub_66a03c7f
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

function sub_8f0bb79c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8f0bb79c.length
    return sub_8f0bb79c[arg1]
}

function sub_be0bf751(?) payable {
    return sub_be0bf751
}

function sub_c57a202c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c57a202c[arg1]
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function totalCoverage() payable {
    return totalCoverage
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function sub_f22797d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f22797d8[arg1]
}

function sub_ffb13208(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return coverageOf[arg1]
}

function _fallback() payable {
    revert
}

function pause() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function getBoosterRewardForDuration() payable {
    if sub_be0bf751 and rewardsDuration > -1 / sub_be0bf751:
        revert with 0, 17
    return (sub_be0bf751 * rewardsDuration)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateLastTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    lastUpdateTime = arg1
}

function setReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    rewards[address(arg1)] = arg2
}

function setBoosterReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_f22797d8[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setCoverageAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalCoverage < coverageOf[address(arg1)]:
        revert with 0, 17
    totalCoverage -= coverageOf[address(arg1)]
    coverageOf[address(arg1)] = arg2
    if totalCoverage > !arg2:
        revert with 0, 17
    totalCoverage += arg2
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function fee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    idx = 0
    while idx < sub_35ceec0f.length:
        mem[0] = arg1
        mem[32] = 20
        if block.timestamp < sub_c57a202c[address(arg1)]:
            revert with 0, 17
        if block.timestamp - sub_c57a202c[address(arg1)] >= sub_35ceec0f[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_8f0bb79c.length:
            revert with 0, 50
        if arg2 and sub_8f0bb79c[idx] > -1 / arg2:
            revert with 0, 17
        return (arg2 * sub_8f0bb79c[idx] / 1000)
    return 0
}

function setBoosterToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if rewardsTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The booster token must be different from the reward token'
    if stakingTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The booster token must be different from the staking token'
    boosterTokenAddress = arg1
    emit BoosterRewardSet(arg1);
}

function exitFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_35ceec0f.length:
        mem[0] = arg1
        mem[32] = 20
        if block.timestamp < sub_c57a202c[address(arg1)]:
            revert with 0, 17
        if block.timestamp - sub_c57a202c[address(arg1)] >= sub_35ceec0f[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_8f0bb79c.length:
            revert with 0, 50
        if balanceOf[address(arg1)] and sub_8f0bb79c[idx] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        return (balanceOf[address(arg1)] * sub_8f0bb79c[idx] / 1000)
    return 0
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

function boosterRewardPerToken() payable {
    if 0 == totalSupply:
        return sub_66a03c7f
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and sub_be0bf751 > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if sub_66a03c7f > !((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
            revert with 0, 17
        return (sub_66a03c7f + ((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and sub_be0bf751 > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if sub_66a03c7f > !((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
        revert with 0, 17
    return (sub_66a03c7f + ((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply))
}

function setRewards(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
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
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1.length != arg2.length:
        revert with 0, 'The same number of addresses and amounts must be provided'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        rewards[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f86e55ca(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'The same number of addresses and amounts must be provided'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        sub_f22797d8[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_905b7d3c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'The same number of addresses and amounts must be provided'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
        if totalCoverage < coverageOf[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 17
        totalCoverage -= coverageOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        coverageOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if totalCoverage > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        totalCoverage += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_77075130(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Fee schedule and withdrawal fees arrays must be the same length!'
    sub_35ceec0f.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_35ceec0f.length > idx:
            sub_35ceec0f[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_35ceec0f[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_35ceec0f.length > idx:
            sub_35ceec0f[idx] = 0
            idx = idx + 1
            continue 
    sub_8f0bb79c.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_8f0bb79c.length > idx:
            sub_8f0bb79c[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + 129
        while ceil32(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            sub_8f0bb79c[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_8f0bb79c.length > idx:
            sub_8f0bb79c[idx] = 0
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 64
    emit WithdrawalFeesSet(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96);
}

function recoverLeftoverBooster() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not boosterTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot recover leftover booster if there was no booster token set'
    if totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot recover leftover booster if there are still staked tokens'
    mem[100] = this.address
    require ext_code.size(boosterTokenAddress)
    staticcall boosterTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = owner
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(boosterTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call boosterTokenAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LeftoverBoosterRecovered(ext_call.return_data[0]);
}

function recoverLeftoverReward() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot recover leftover reward if it is not the staking token or there are still staked tokens'
    if stakingTokenAddress != rewardsTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot recover leftover reward if it is not the staking token or there are still staked tokens'
    mem[100] = this.address
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = owner
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call rewardsTokenAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LeftoverRewardRecovered(ext_call.return_data[0]);
}

function boosterEarned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalSupply:
        if sub_66a03c7f < sub_5d129544[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_66a03c7f - sub_5d129544[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_66a03c7f * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !sub_f22797d8[address(arg1)]:
            revert with 0, 17
        return (((sub_66a03c7f * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + sub_f22797d8[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and sub_be0bf751 > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if sub_66a03c7f > !((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
            revert with 0, 17
        if sub_66a03c7f + ((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply) < sub_5d129544[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and sub_66a03c7f + ((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply) - sub_5d129544[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (sub_66a03c7f * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !sub_f22797d8[address(arg1)]:
            revert with 0, 17
        return (((sub_66a03c7f * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + sub_f22797d8[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and sub_be0bf751 > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if sub_66a03c7f > !((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
        revert with 0, 17
    if sub_66a03c7f + ((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply) < sub_5d129544[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and sub_66a03c7f + ((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply) - sub_5d129544[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (sub_66a03c7f * balanceOf[address(arg1)]) + ((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !sub_f22797d8[address(arg1)]:
        revert with 0, 17
    return (((sub_66a03c7f * balanceOf[address(arg1)]) + ((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply * balanceOf[address(arg1)]) - (sub_5d129544[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + sub_f22797d8[address(arg1)])
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

function startEmission(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
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
        if totalSupply != 0:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and sub_be0bf751 > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (block.timestamp * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_66a03c7f > !((10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
                    revert with 0, 17
                sub_66a03c7f += (10^18 * block.timestamp * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and sub_be0bf751 > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751) and 10^18 > -1 / (periodFinish * sub_be0bf751) - (lastUpdateTime * sub_be0bf751):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if sub_66a03c7f > !((10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply):
                    revert with 0, 17
                sub_66a03c7f += (10^18 * periodFinish * sub_be0bf751) - (10^18 * lastUpdateTime * sub_be0bf751) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if arg3:
        rewardsDuration = arg3
        emit RewardsDurationUpdated(arg3);
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 18
        rewardRate = arg1 / rewardsDuration
        sub_be0bf751 = arg2 / rewardsDuration
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
        if periodFinish - block.timestamp and sub_be0bf751 > -1 / periodFinish - block.timestamp:
            revert with 0, 17
        if arg2 > !((periodFinish * sub_be0bf751) - (block.timestamp * sub_be0bf751)):
            revert with 0, 17
        if not rewardsDuration:
            revert with 0, 18
        sub_be0bf751 = arg2 + (periodFinish * sub_be0bf751) - (block.timestamp * sub_be0bf751) / rewardsDuration
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
        if stakingTokenAddress != rewardsTokenAddress:
            revert with 0, 'Provided reward too high'
        if not rewardsDuration:
            revert with 0, 18
        if ext_call.return_data[0] / rewardsDuration < totalSupply:
            revert with 0, 17
        if rewardRate > (ext_call.return_data[0] / rewardsDuration) - totalSupply:
            revert with 0, 'Provided reward too high'
    if boosterTokenAddress:
        require ext_code.size(boosterTokenAddress)
        staticcall boosterTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not rewardsDuration:
            revert with 0, 18
        if sub_be0bf751 > ext_call.return_data[0] / rewardsDuration:
            revert with 0, 'Provided booster reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp > !rewardsDuration:
        revert with 0, 17
    periodFinish = block.timestamp + rewardsDuration
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    emit RewardsEmissionStarted(arg1, arg2, arg3);
}



}
