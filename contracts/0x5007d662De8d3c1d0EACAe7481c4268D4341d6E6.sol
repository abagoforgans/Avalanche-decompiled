contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#  - exit(address arg1, uint256 arg2)
#
const name = 'NFT Staking Rewards', 0


uint256 stor0;
uint8 stor1;
address owner; offset 8
address rewardsTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 stor10;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address stor13;
address stor14;
address stor15;
address stor16;
uint256 stor17;
array of struct stor18;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() {
    return totalSupply
}

function rewardsDuration() {
    return rewardsDuration
}

function paused() {
    return bool(stor1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function rewardRate() {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() {
    return owner
}

function lastUpdateTime() {
    return lastUpdateTime
}

function rewardsToken() {
    return rewardsTokenAddress
}

function rewardPerTokenStored() {
    return rewardPerTokenStored
}

function periodFinish() {
    return periodFinish
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function sub_988d0b18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor15 = address(arg1)
}

function sub_bae5d9c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor14 = address(arg1)
}

function getRewardForDuration() {
    if rewardRate and rewardsDuration > -1 / rewardRate:
        revert with 'NH{q', 17
    return (rewardRate * rewardsDuration)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function closeGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor14)
    call stor14.0x2d6ef310 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor14)
    call stor14.0xe5ed1d59 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e611ee44(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(stor14)
    call stor14.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg1)]:
        revert with 0, 'Token already added'
    stor10[address(arg1)] = arg2
    emit TokenAdded(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setRewardsDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(rewardsDuration);
}

function sub_8cf53d78(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 101] = 32
    mem[floor32(('cd', 4).length) + 133] = ('cd', 4).length
    mem[floor32(('cd', 4).length) + 165 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    require ext_code.size(stor14)
    call stor14.deposit(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 165 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_182b34e4(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + 97] = 0x8293744b00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = address(cd[4])
    mem[floor32(('cd', 36).length) + 133] = 64
    mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    require ext_code.size(stor14)
    call stor14.withdraw(address arg1, uint256[] arg2) with:
         gas gas_remaining wei
        args address(cd[4]), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rewardPerToken() {
    if not totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
            revert with 'NH{q', 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
        revert with 'NH{q', 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function updatePeriodFinish(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    periodFinish = arg1
}

function notifyRewardAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 'NH{q', 18
        rewardRate = arg1 / rewardsDuration
    else:
        if periodFinish < block.timestamp:
            revert with 'NH{q', 17
        if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
            revert with 'NH{q', 17
        if arg1 > (-1 * periodFinish * rewardRate) + (block.timestamp * rewardRate) - 1:
            revert with 'NH{q', 17
        if not rewardsDuration:
            revert with 'NH{q', 18
        rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not rewardsDuration:
        revert with 'NH{q', 18
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp > -rewardsDuration - 1:
        revert with 'NH{q', 17
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function earned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 'NH{q', 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
            revert with 'NH{q', 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 'NH{q', 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
        revert with 'NH{q', 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 'NH{q', 17
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
        revert with 'NH{q', 17
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if not totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 'NH{q', 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 'NH{q', 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if stor13[address(arg1)][arg2] != msg.sender:
        revert with 0, 'Permission denied'
    if totalSupply < stor10[address(arg1)]:
        revert with 'NH{q', 17
    totalSupply -= stor10[address(arg1)]
    if balanceOf[address(msg.sender)] < stor10[address(arg1)]:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= stor10[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(address(arg1), arg2, msg.sender);
    stor0 = 1
}

function stake(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if not totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 'NH{q', 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 'NH{q', 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if stor10[address(arg1)] <= 0:
        revert with 0, 'Token not added'
    if totalSupply > -stor10[address(arg1)] - 1:
        revert with 'NH{q', 17
    totalSupply += stor10[address(arg1)]
    if balanceOf[address(msg.sender)] > -stor10[address(arg1)] - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += stor10[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13[address(arg1)][arg2] = msg.sender
    emit Staked(address(arg1), arg2, msg.sender);
    stor0 = 1
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[arg3.length + 128] = 0
    stor16 = arg1
    stor17 = arg2
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor18[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor18[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                call stor16 with:
                   value stor17 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
            else:
                if 31 >= stor18.length.field_1:
                    mem[ceil32(ceil32(arg3.length)) + 129] = 256 * stor18.length.field_8
                    call stor16 with:
                       funct stor18.length.field_224
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
                else:
                    mem[ceil32(ceil32(arg3.length)) + 129] = uint256(stor18.field_0)
                    idx = ceil32(ceil32(arg3.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg3.length)) + stor18.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call stor16.mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                call stor16 with:
                   value stor17 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
            else:
                if 31 >= stor18.length.field_1:
                    mem[ceil32(ceil32(arg3.length)) + 129] = 256 * stor18.length.field_8
                    call stor16 with:
                       funct stor18.length.field_224
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
                else:
                    mem[ceil32(ceil32(arg3.length)) + 129] = uint256(stor18.field_0)
                    idx = ceil32(ceil32(arg3.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg3.length)) + stor18.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call stor16.mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                call stor16 with:
                   value stor17 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
            else:
                if 31 >= stor18.length.field_1:
                    mem[ceil32(ceil32(arg3.length)) + 129] = 256 * stor18.length.field_8
                    call stor16 with:
                       funct stor18.length.field_224
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
                else:
                    mem[ceil32(ceil32(arg3.length)) + 129] = uint256(stor18.field_0)
                    idx = ceil32(ceil32(arg3.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg3.length)) + stor18.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call stor16.mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor18.length.field_1:
                call stor16 with:
                   value stor17 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
            else:
                if 31 >= stor18.length.field_1:
                    mem[ceil32(ceil32(arg3.length)) + 129] = 256 * stor18.length.field_8
                    call stor16 with:
                       funct stor18.length.field_224
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
                else:
                    mem[ceil32(ceil32(arg3.length)) + 129] = uint256(stor18.field_0)
                    idx = ceil32(ceil32(arg3.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg3.length)) + stor18.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call stor16.mem[ceil32(ceil32(arg3.length)) + 129 len 4] with:
                       value stor17 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(ceil32(arg3.length)) + 133 len stor18.length.field_1 - 4]
}



}
