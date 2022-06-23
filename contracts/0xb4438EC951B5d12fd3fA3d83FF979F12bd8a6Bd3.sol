contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#
const sub_c97d02f0(?) = 0x1f806f7c8ded893fd3cae279191ad7aa3798e928


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
address liqPoolManagerAddress;
address rewarderAddress;
address sub_8471692aAddress;
address sub_2232c6daAddress;
uint256 totalShares;
uint256 sub_f922412d;
uint256 sub_6119e591;
uint256 performanceFeeBips;
uint8 sub_edc79bac;
array of struct sub_2bfea4f9;
mapping of uint256 userAmount;
mapping of uint256 sub_4bf6f9e7;
mapping of uint256 deposits;
mapping of uint256 sub_201e417c;
mapping of uint256 sub_7b4717a4;
mapping of uint256 sub_691c6d83;
mapping of uint256 sub_b80a51f9;
mapping of uint256 totalHarvested;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
mapping of uint256 balanceOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_201e417c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_201e417c[arg1]
}

function sub_2232c6da(?) payable {
    return sub_2232c6daAddress
}

function approvedContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_2bfea4f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2bfea4f9.length
    return sub_2bfea4f9[arg1].field_0
}

function rewardsDuration() payable {
    return rewardsDuration
}

function totalShares() payable {
    return totalShares
}

function sub_3ec80f8d(?) payable {
    return sub_2bfea4f9.length
}

function sub_4bf6f9e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4bf6f9e7[arg1]
}

function onlyApprovedContractOrEOAStatus() payable {
    return bool(uint8(stor0.field_160))
}

function sub_6119e591(?) payable {
    return sub_6119e591
}

function sub_691c6d83(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_691c6d83[arg1][arg2]
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

function sub_7b4717a4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_7b4717a4[arg1][arg2]
}

function sub_8471692a(?) payable {
    return sub_8471692aAddress
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function totalHarvested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalHarvested[arg1]
}

function sub_b80a51f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_b80a51f9[arg1][arg2]
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewarder() payable {
    return rewarderAddress
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function performanceFeeBips() payable {
    return performanceFeeBips
}

function userAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userAmount[arg1]
}

function liqPoolManager() payable {
    return liqPoolManagerAddress
}

function periodFinish() payable {
    return periodFinish
}

function sub_edc79bac(?) payable {
    return bool(sub_edc79bac)
}

function sub_f922412d(?) payable {
    return sub_f922412d
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
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

function setPerformanceFeeBips(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    performanceFeeBips = arg1
}

function sub_3c331537(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1)
    sub_8471692aAddress = address(arg1)
}

function setOnlyApprovedContractOrEOAStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function checkReward() payable {
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6119e591, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setLiqPoolManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the liqPoolManager for the new period'
    liqPoolManagerAddress = arg1
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

function sub_dd30d5c6(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    call 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function modifyApprovedContracts(address[] arg1, bool[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'input length mismatch'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == bool(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = uint8(bool(cd[((32 * idx) + arg2 + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ada64f38(?) payable {
    mem[64] = (32 * sub_2bfea4f9.length) + 128
    mem[96] = sub_2bfea4f9.length
    if not sub_2bfea4f9.length:
        mem[(32 * sub_2bfea4f9.length) + 128] = 32
        mem[(32 * sub_2bfea4f9.length) + 160] = sub_2bfea4f9.length
        idx = 0
        s = (32 * sub_2bfea4f9.length) + 192
        t = 128
        while idx < sub_2bfea4f9.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_2bfea4f9.length) + 128
           len (96 * sub_2bfea4f9.length) + 64
    mem[128] = address(sub_2bfea4f9.field_0)
    idx = 128
    s = 0
    while (32 * sub_2bfea4f9.length) + 96 > idx:
        mem[idx + 32] = sub_2bfea4f9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_2bfea4f9.length) + 128] = 32
    mem[(32 * sub_2bfea4f9.length) + 160] = sub_2bfea4f9.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_2bfea4f9.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_2bfea4f9.length) + -mem[64] + 192
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

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if owner != msg.sender:
        if liqPoolManagerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liqpoll Manager or Owner can call this.'
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

function sub_a9fdc981(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6119e591, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalShares:
        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            else:
                return 0
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        return ((10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000)
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        else:
            return 0
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    return ((10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000)
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

function sub_10066214(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = sub_6119e591
    mem[132] = this.address
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6119e591, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = sub_2232c6daAddress
    mem[32] = 22
    if not totalShares:
        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = 0
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _15 = mem[ceil32(return_data.size) + 96 len 4], 0
            require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
            _17 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
            require _15 + (32 * _17) + 32 <= return_data.size
            s = (2 * ceil32(return_data.size)) + 128
            idx = ceil32(return_data.size) + _15 + 128
            while idx < ceil32(return_data.size) + _15 + (32 * _17) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _71 = mem[ceil32(return_data.size) + 128]
            require mem[ceil32(return_data.size) + 128] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
            _78 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] > test266151307():
                revert with 0, 65
            _82 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1
            mem[_82] = _78
            require _71 + (32 * _78) + 32 <= return_data.size
            mem[_82 + 32 len ceil32(32 * _78)] = mem[ceil32(return_data.size) + _71 + 128 len ceil32(32 * _78)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _78
            mem[mem[64] + 64 len 32 * _78] = mem[_82 + 32 len 32 * _78]
            return Array(len=_78, data=mem[mem[64] + 64 len 32 * _78])
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _16 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require _16 + (32 * _18) + 32 <= return_data.size
        s = (2 * ceil32(return_data.size)) + 128
        idx = ceil32(return_data.size) + _16 + 128
        while idx < ceil32(return_data.size) + _16 + (32 * _18) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _69 = mem[ceil32(return_data.size) + 128]
        require mem[ceil32(return_data.size) + 128] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _77 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] > test266151307():
            revert with 0, 65
        _81 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1
        mem[_81] = _77
        require _69 + (32 * _77) + 32 <= return_data.size
        mem[_81 + 32 len ceil32(32 * _77)] = mem[ceil32(return_data.size) + _69 + 128 len ceil32(32 * _77)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _77
        mem[mem[64] + 64 len 32 * _77] = mem[_81 + 32 len 32 * _77]
        return Array(len=_77, data=mem[mem[64] + 64 len 32 * _77])
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = 0
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _27 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require _27 + (32 * _31) + 32 <= return_data.size
        s = (2 * ceil32(return_data.size)) + 128
        idx = ceil32(return_data.size) + _27 + 128
        while idx < ceil32(return_data.size) + _27 + (32 * _31) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _75 = mem[ceil32(return_data.size) + 128]
        require mem[ceil32(return_data.size) + 128] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] > test266151307():
            revert with 0, 65
        _84 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1
        mem[_84] = _80
        require _75 + (32 * _80) + 32 <= return_data.size
        mem[_84 + 32 len ceil32(32 * _80)] = mem[ceil32(return_data.size) + _75 + 128 len ceil32(32 * _80)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _80
        mem[mem[64] + 64 len 32 * _80] = mem[_84 + 32 len 32 * _80]
        return Array(len=_80, data=mem[mem[64] + 64 len 32 * _80])
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = 0
    mem[ceil32(return_data.size) + 132] = address(arg1)
    mem[ceil32(return_data.size) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
    require ext_code.size(rewarderAddress)
    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _30 = mem[ceil32(return_data.size) + 96 len 4], 0
    require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
    _35 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
    require _30 + (32 * _35) + 32 <= return_data.size
    s = (2 * ceil32(return_data.size)) + 128
    idx = ceil32(return_data.size) + _30 + 128
    while idx < ceil32(return_data.size) + _30 + (32 * _35) + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _73 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _79 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] > test266151307():
        revert with 0, 65
    _83 = mem[64]
    if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1
    mem[_83] = _79
    require _73 + (32 * _79) + 32 <= return_data.size
    mem[_83 + 32 len ceil32(32 * _79)] = mem[ceil32(return_data.size) + _73 + 128 len ceil32(32 * _79)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _79
    mem[mem[64] + 64 len 32 * _79] = mem[_83 + 32 len 32 * _79]
    return Array(len=_79, data=mem[mem[64] + 64 len 32 * _79])
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_edc79bac:
        if 0 == totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                revert with 0, 17
            mem[100] = sub_6119e591
            mem[132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 100] = sub_6119e591
                    mem[ceil32(return_data.size) + 132] = this.address
                    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args sub_6119e591, this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_2232c6daAddress
                    mem[32] = 22
                    if not totalShares:
                        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                            revert with 0, 17
                        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                            if 10000 < performanceFeeBips:
                                revert with 0, 17
                            if False and -performanceFeeBips + 10000 > 0:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 0
                            mem[(2 * ceil32(return_data.size)) + 132] = arg1
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(rewarderAddress)
                            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 64
                            _145 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _165 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(4 * ceil32(return_data.size)) + 96] = _165
                            require _145 + (32 * _165) + 32 <= return_data.size
                            s = (4 * ceil32(return_data.size)) + 128
                            idx = (2 * ceil32(return_data.size)) + _145 + 128
                            while idx < (2 * ceil32(return_data.size)) + _145 + (32 * _165) + 128:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            _1765 = mem[(2 * ceil32(return_data.size)) + 128]
                            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _1920 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                                revert with 0, 65
                            _2016 = mem[64]
                            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                            mem[_2016] = _1920
                            require _1765 + (32 * _1920) + 32 <= return_data.size
                            mem[_2016 + 32 len ceil32(32 * _1920)] = mem[(2 * ceil32(return_data.size)) + _1765 + 128 len ceil32(32 * _1920)]
                            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = _1920
                            mem[mem[64] + 128 len 32 * _1920] = mem[_2016 + 32 len 32 * _1920]
                            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                                   0,
                                   96,
                                   _1920,
                                   mem[mem[64] + 128 len 32 * _1920]
                        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                            revert with 0, 17
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _164 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _183 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _183
                        require _164 + (32 * _183) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _164 + 128
                        while idx < (2 * ceil32(return_data.size)) + _164 + (32 * _183) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1763 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1919 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2015 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2015] = _1919
                        require _1763 + (32 * _1919) + 32 <= return_data.size
                        mem[_2015 + 32 len ceil32(32 * _1919)] = mem[(2 * ceil32(return_data.size)) + _1763 + 128 len ceil32(32 * _1919)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1919
                        mem[mem[64] + 128 len 32 * _1919] = mem[_2015 + 32 len 32 * _1919]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1919,
                               mem[mem[64] + 128 len 32 * _1919]
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                        revert with 0, 17
                    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _267 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _305 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _305
                        require _267 + (32 * _305) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _267 + 128
                        while idx < (2 * ceil32(return_data.size)) + _267 + (32 * _305) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1769 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1922 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2018 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2018] = _1922
                        require _1769 + (32 * _1922) + 32 <= return_data.size
                        mem[_2018 + 32 len ceil32(32 * _1922)] = mem[(2 * ceil32(return_data.size)) + _1769 + 128 len ceil32(32 * _1922)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1922
                        mem[mem[64] + 128 len 32 * _1922] = mem[_2018 + 32 len 32 * _1922]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1922,
                               mem[mem[64] + 128 len 32 * _1922]
                    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _304 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _340 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _340
                    require _304 + (32 * _340) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _304 + 128
                    while idx < (2 * ceil32(return_data.size)) + _304 + (32 * _340) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1767 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1921 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2017 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2017] = _1921
                    require _1767 + (32 * _1921) + 32 <= return_data.size
                    mem[_2017 + 32 len ceil32(32 * _1921)] = mem[(2 * ceil32(return_data.size)) + _1767 + 128 len ceil32(32 * _1921)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1921
                    mem[mem[64] + 128 len 32 * _1921] = mem[_2017 + 32 len 32 * _1921]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1921,
                           mem[mem[64] + 128 len 32 * _1921]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _163 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _182 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _182
                        require _163 + (32 * _182) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _163 + 128
                        while idx < (2 * ceil32(return_data.size)) + _163 + (32 * _182) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1757 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1916 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2012 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2012] = _1916
                        require _1757 + (32 * _1916) + 32 <= return_data.size
                        mem[_2012 + 32 len ceil32(32 * _1916)] = mem[(2 * ceil32(return_data.size)) + _1757 + 128 len ceil32(32 * _1916)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1916
                        mem[mem[64] + 128 len 32 * _1916] = mem[_2012 + 32 len 32 * _1916]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                               Array(len=_1916, data=mem[mem[64] + 128 len 32 * _1916])
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _181 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _195 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _195
                    require _181 + (32 * _195) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _181 + 128
                    while idx < (2 * ceil32(return_data.size)) + _181 + (32 * _195) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1755 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1915 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2011 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2011] = _1915
                    require _1755 + (32 * _1915) + 32 <= return_data.size
                    mem[_2011 + 32 len ceil32(32 * _1915)] = mem[(2 * ceil32(return_data.size)) + _1755 + 128 len ceil32(32 * _1915)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1915
                    mem[mem[64] + 128 len 32 * _1915] = mem[_2011 + 32 len 32 * _1915]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1915, data=mem[mem[64] + 128 len 32 * _1915])
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _303 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _338 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _338
                    require _303 + (32 * _338) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _303 + 128
                    while idx < (2 * ceil32(return_data.size)) + _303 + (32 * _338) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1761 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1918 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2014 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2014] = _1918
                    require _1761 + (32 * _1918) + 32 <= return_data.size
                    mem[_2014 + 32 len ceil32(32 * _1918)] = mem[(2 * ceil32(return_data.size)) + _1761 + 128 len ceil32(32 * _1918)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1918
                    mem[mem[64] + 128 len 32 * _1918] = mem[_2014 + 32 len 32 * _1918]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1918, data=mem[mem[64] + 128 len 32 * _1918])
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _337 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _364 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _364
                require _337 + (32 * _364) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _337 + 128
                while idx < (2 * ceil32(return_data.size)) + _337 + (32 * _364) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1759 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1917 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2013 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2013] = _1917
                require _1759 + (32 * _1917) + 32 <= return_data.size
                mem[_2013 + 32 len ceil32(32 * _1917)] = mem[(2 * ceil32(return_data.size)) + _1759 + 128 len ceil32(32 * _1917)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1917
                mem[mem[64] + 128 len 32 * _1917] = mem[_2013 + 32 len 32 * _1917]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1917, data=mem[mem[64] + 128 len 32 * _1917])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _272 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _309 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _309
                        require _272 + (32 * _309) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _272 + 128
                        while idx < (2 * ceil32(return_data.size)) + _272 + (32 * _309) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1781 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1928 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2024 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2024] = _1928
                        require _1781 + (32 * _1928) + 32 <= return_data.size
                        mem[_2024 + 32 len ceil32(32 * _1928)] = mem[(2 * ceil32(return_data.size)) + _1781 + 128 len ceil32(32 * _1928)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1928
                        mem[mem[64] + 128 len 32 * _1928] = mem[_2024 + 32 len 32 * _1928]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1928,
                               mem[mem[64] + 128 len 32 * _1928]
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _308 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _343 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _343
                    require _308 + (32 * _343) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _308 + 128
                    while idx < (2 * ceil32(return_data.size)) + _308 + (32 * _343) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1779 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1927 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2023 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2023] = _1927
                    require _1779 + (32 * _1927) + 32 <= return_data.size
                    mem[_2023 + 32 len ceil32(32 * _1927)] = mem[(2 * ceil32(return_data.size)) + _1779 + 128 len ceil32(32 * _1927)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1927
                    mem[mem[64] + 128 len 32 * _1927] = mem[_2023 + 32 len 32 * _1927]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1927,
                           mem[mem[64] + 128 len 32 * _1927]
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _436 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _461 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _461
                    require _436 + (32 * _461) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _436 + 128
                    while idx < (2 * ceil32(return_data.size)) + _436 + (32 * _461) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1785 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1930 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2026 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2026] = _1930
                    require _1785 + (32 * _1930) + 32 <= return_data.size
                    mem[_2026 + 32 len ceil32(32 * _1930)] = mem[(2 * ceil32(return_data.size)) + _1785 + 128 len ceil32(32 * _1930)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1930
                    mem[mem[64] + 128 len 32 * _1930] = mem[_2026 + 32 len 32 * _1930]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1930,
                           mem[mem[64] + 128 len 32 * _1930]
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _460 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _489 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _489
                require _460 + (32 * _489) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _460 + 128
                while idx < (2 * ceil32(return_data.size)) + _460 + (32 * _489) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1783 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1929 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2025 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2025] = _1929
                require _1783 + (32 * _1929) + 32 <= return_data.size
                mem[_2025 + 32 len ceil32(32 * _1929)] = mem[(2 * ceil32(return_data.size)) + _1783 + 128 len ceil32(32 * _1929)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1929
                mem[mem[64] + 128 len 32 * _1929] = mem[_2025 + 32 len 32 * _1929]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1929,
                       mem[mem[64] + 128 len 32 * _1929]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _307 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _342 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _342
                    require _307 + (32 * _342) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _307 + 128
                    while idx < (2 * ceil32(return_data.size)) + _307 + (32 * _342) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1773 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1924 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2020 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2020] = _1924
                    require _1773 + (32 * _1924) + 32 <= return_data.size
                    mem[_2020 + 32 len ceil32(32 * _1924)] = mem[(2 * ceil32(return_data.size)) + _1773 + 128 len ceil32(32 * _1924)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1924
                    mem[mem[64] + 128 len 32 * _1924] = mem[_2020 + 32 len 32 * _1924]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1924, data=mem[mem[64] + 128 len 32 * _1924])
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _341 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _367 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _367
                require _341 + (32 * _367) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _341 + 128
                while idx < (2 * ceil32(return_data.size)) + _341 + (32 * _367) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1771 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1923 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2019 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2019] = _1923
                require _1771 + (32 * _1923) + 32 <= return_data.size
                mem[_2019 + 32 len ceil32(32 * _1923)] = mem[(2 * ceil32(return_data.size)) + _1771 + 128 len ceil32(32 * _1923)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1923
                mem[mem[64] + 128 len 32 * _1923] = mem[_2019 + 32 len 32 * _1923]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1923, data=mem[mem[64] + 128 len 32 * _1923])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _459 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _487 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _487
                require _459 + (32 * _487) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _459 + 128
                while idx < (2 * ceil32(return_data.size)) + _459 + (32 * _487) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1777 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1926 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2022 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2022] = _1926
                require _1777 + (32 * _1926) + 32 <= return_data.size
                mem[_2022 + 32 len ceil32(32 * _1926)] = mem[(2 * ceil32(return_data.size)) + _1777 + 128 len ceil32(32 * _1926)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1926
                mem[mem[64] + 128 len 32 * _1926] = mem[_2022 + 32 len 32 * _1926]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1926, data=mem[mem[64] + 128 len 32 * _1926])
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _486 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _512 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _512
            require _486 + (32 * _512) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _486 + 128
            while idx < (2 * ceil32(return_data.size)) + _486 + (32 * _512) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1775 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1925 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2021 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2021] = _1925
            require _1775 + (32 * _1925) + 32 <= return_data.size
            mem[_2021 + 32 len ceil32(32 * _1925)] = mem[(2 * ceil32(return_data.size)) + _1775 + 128 len ceil32(32 * _1925)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1925
            mem[mem[64] + 128 len 32 * _1925] = mem[_2021 + 32 len 32 * _1925]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1925, data=mem[mem[64] + 128 len 32 * _1925])
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
            mem[100] = sub_6119e591
            mem[132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 100] = sub_6119e591
                    mem[ceil32(return_data.size) + 132] = this.address
                    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args sub_6119e591, this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = sub_2232c6daAddress
                    mem[32] = 22
                    if not totalShares:
                        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                            revert with 0, 17
                        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                            if 10000 < performanceFeeBips:
                                revert with 0, 17
                            if False and -performanceFeeBips + 10000 > 0:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = 0
                            mem[(2 * ceil32(return_data.size)) + 132] = arg1
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            require ext_code.size(rewarderAddress)
                            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args 0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 64
                            _567 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _606 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                            mem[(4 * ceil32(return_data.size)) + 96] = _606
                            require _567 + (32 * _606) + 32 <= return_data.size
                            s = (4 * ceil32(return_data.size)) + 128
                            idx = (2 * ceil32(return_data.size)) + _567 + 128
                            while idx < (2 * ceil32(return_data.size)) + _567 + (32 * _606) + 128:
                                require mem[idx] == mem[idx + 12 len 20]
                                mem[s] = mem[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            _1701 = mem[(2 * ceil32(return_data.size)) + 128]
                            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _1888 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                                revert with 0, 65
                            _1984 = mem[64]
                            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                            mem[_1984] = _1888
                            require _1701 + (32 * _1888) + 32 <= return_data.size
                            mem[_1984 + 32 len ceil32(32 * _1888)] = mem[(2 * ceil32(return_data.size)) + _1701 + 128 len ceil32(32 * _1888)]
                            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = _1888
                            mem[mem[64] + 128 len 32 * _1888] = mem[_1984 + 32 len 32 * _1888]
                            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                                   0,
                                   96,
                                   _1888,
                                   mem[mem[64] + 128 len 32 * _1888]
                        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                            revert with 0, 17
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _605 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _645 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _645
                        require _605 + (32 * _645) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _605 + 128
                        while idx < (2 * ceil32(return_data.size)) + _605 + (32 * _645) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1699 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1887 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _1983 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_1983] = _1887
                        require _1699 + (32 * _1887) + 32 <= return_data.size
                        mem[_1983 + 32 len ceil32(32 * _1887)] = mem[(2 * ceil32(return_data.size)) + _1699 + 128 len ceil32(32 * _1887)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1887
                        mem[mem[64] + 128 len 32 * _1887] = mem[_1983 + 32 len 32 * _1887]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1887,
                               mem[mem[64] + 128 len 32 * _1887]
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                        revert with 0, 17
                    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _778 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _840 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _840
                        require _778 + (32 * _840) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _778 + 128
                        while idx < (2 * ceil32(return_data.size)) + _778 + (32 * _840) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1705 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1890 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _1986 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_1986] = _1890
                        require _1705 + (32 * _1890) + 32 <= return_data.size
                        mem[_1986 + 32 len ceil32(32 * _1890)] = mem[(2 * ceil32(return_data.size)) + _1705 + 128 len ceil32(32 * _1890)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1890
                        mem[mem[64] + 128 len 32 * _1890] = mem[_1986 + 32 len 32 * _1890]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1890,
                               mem[mem[64] + 128 len 32 * _1890]
                    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _839 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _904 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _904
                    require _839 + (32 * _904) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _839 + 128
                    while idx < (2 * ceil32(return_data.size)) + _839 + (32 * _904) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1703 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1889 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1985 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1985] = _1889
                    require _1703 + (32 * _1889) + 32 <= return_data.size
                    mem[_1985 + 32 len ceil32(32 * _1889)] = mem[(2 * ceil32(return_data.size)) + _1703 + 128 len ceil32(32 * _1889)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1889
                    mem[mem[64] + 128 len 32 * _1889] = mem[_1985 + 32 len 32 * _1889]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1889,
                           mem[mem[64] + 128 len 32 * _1889]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _604 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _644 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _644
                        require _604 + (32 * _644) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _604 + 128
                        while idx < (2 * ceil32(return_data.size)) + _604 + (32 * _644) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1693 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1884 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _1980 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_1980] = _1884
                        require _1693 + (32 * _1884) + 32 <= return_data.size
                        mem[_1980 + 32 len ceil32(32 * _1884)] = mem[(2 * ceil32(return_data.size)) + _1693 + 128 len ceil32(32 * _1884)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1884
                        mem[mem[64] + 128 len 32 * _1884] = mem[_1980 + 32 len 32 * _1884]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                               Array(len=_1884, data=mem[mem[64] + 128 len 32 * _1884])
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _643 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _677 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _677
                    require _643 + (32 * _677) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _643 + 128
                    while idx < (2 * ceil32(return_data.size)) + _643 + (32 * _677) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1691 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1883 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1979 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1979] = _1883
                    require _1691 + (32 * _1883) + 32 <= return_data.size
                    mem[_1979 + 32 len ceil32(32 * _1883)] = mem[(2 * ceil32(return_data.size)) + _1691 + 128 len ceil32(32 * _1883)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1883
                    mem[mem[64] + 128 len 32 * _1883] = mem[_1979 + 32 len 32 * _1883]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1883, data=mem[mem[64] + 128 len 32 * _1883])
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _838 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _902 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _902
                    require _838 + (32 * _902) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _838 + 128
                    while idx < (2 * ceil32(return_data.size)) + _838 + (32 * _902) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1697 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1886 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1982 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1982] = _1886
                    require _1697 + (32 * _1886) + 32 <= return_data.size
                    mem[_1982 + 32 len ceil32(32 * _1886)] = mem[(2 * ceil32(return_data.size)) + _1697 + 128 len ceil32(32 * _1886)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1886
                    mem[mem[64] + 128 len 32 * _1886] = mem[_1982 + 32 len 32 * _1886]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1886, data=mem[mem[64] + 128 len 32 * _1886])
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _901 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _962 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _962
                require _901 + (32 * _962) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _901 + 128
                while idx < (2 * ceil32(return_data.size)) + _901 + (32 * _962) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1695 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1885 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1981 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1981] = _1885
                require _1695 + (32 * _1885) + 32 <= return_data.size
                mem[_1981 + 32 len ceil32(32 * _1885)] = mem[(2 * ceil32(return_data.size)) + _1695 + 128 len ceil32(32 * _1885)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1885
                mem[mem[64] + 128 len 32 * _1885] = mem[_1981 + 32 len 32 * _1885]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1885, data=mem[mem[64] + 128 len 32 * _1885])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _783 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _844 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _844
                        require _783 + (32 * _844) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _783 + 128
                        while idx < (2 * ceil32(return_data.size)) + _783 + (32 * _844) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1717 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1896 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _1992 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_1992] = _1896
                        require _1717 + (32 * _1896) + 32 <= return_data.size
                        mem[_1992 + 32 len ceil32(32 * _1896)] = mem[(2 * ceil32(return_data.size)) + _1717 + 128 len ceil32(32 * _1896)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1896
                        mem[mem[64] + 128 len 32 * _1896] = mem[_1992 + 32 len 32 * _1896]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1896,
                               mem[mem[64] + 128 len 32 * _1896]
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _843 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _907 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _907
                    require _843 + (32 * _907) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _843 + 128
                    while idx < (2 * ceil32(return_data.size)) + _843 + (32 * _907) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1715 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1895 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1991 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1991] = _1895
                    require _1715 + (32 * _1895) + 32 <= return_data.size
                    mem[_1991 + 32 len ceil32(32 * _1895)] = mem[(2 * ceil32(return_data.size)) + _1715 + 128 len ceil32(32 * _1895)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1895
                    mem[mem[64] + 128 len 32 * _1895] = mem[_1991 + 32 len 32 * _1895]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1895,
                           mem[mem[64] + 128 len 32 * _1895]
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _1069 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1115 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _1115
                    require _1069 + (32 * _1115) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _1069 + 128
                    while idx < (2 * ceil32(return_data.size)) + _1069 + (32 * _1115) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1721 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1898 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1994 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1994] = _1898
                    require _1721 + (32 * _1898) + 32 <= return_data.size
                    mem[_1994 + 32 len ceil32(32 * _1898)] = mem[(2 * ceil32(return_data.size)) + _1721 + 128 len ceil32(32 * _1898)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1898
                    mem[mem[64] + 128 len 32 * _1898] = mem[_1994 + 32 len 32 * _1898]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1898,
                           mem[mem[64] + 128 len 32 * _1898]
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _1114 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1169 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _1169
                require _1114 + (32 * _1169) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _1114 + 128
                while idx < (2 * ceil32(return_data.size)) + _1114 + (32 * _1169) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1719 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1897 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1993 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1993] = _1897
                require _1719 + (32 * _1897) + 32 <= return_data.size
                mem[_1993 + 32 len ceil32(32 * _1897)] = mem[(2 * ceil32(return_data.size)) + _1719 + 128 len ceil32(32 * _1897)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1897
                mem[mem[64] + 128 len 32 * _1897] = mem[_1993 + 32 len 32 * _1897]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1897,
                       mem[mem[64] + 128 len 32 * _1897]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _842 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _906 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _906
                    require _842 + (32 * _906) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _842 + 128
                    while idx < (2 * ceil32(return_data.size)) + _842 + (32 * _906) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1709 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1892 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1988 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1988] = _1892
                    require _1709 + (32 * _1892) + 32 <= return_data.size
                    mem[_1988 + 32 len ceil32(32 * _1892)] = mem[(2 * ceil32(return_data.size)) + _1709 + 128 len ceil32(32 * _1892)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1892
                    mem[mem[64] + 128 len 32 * _1892] = mem[_1988 + 32 len 32 * _1892]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1892, data=mem[mem[64] + 128 len 32 * _1892])
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _905 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _965 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _965
                require _905 + (32 * _965) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _905 + 128
                while idx < (2 * ceil32(return_data.size)) + _905 + (32 * _965) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1707 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1891 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1987 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1987] = _1891
                require _1707 + (32 * _1891) + 32 <= return_data.size
                mem[_1987 + 32 len ceil32(32 * _1891)] = mem[(2 * ceil32(return_data.size)) + _1707 + 128 len ceil32(32 * _1891)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1891
                mem[mem[64] + 128 len 32 * _1891] = mem[_1987 + 32 len 32 * _1891]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1891, data=mem[mem[64] + 128 len 32 * _1891])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _1113 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1167 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _1167
                require _1113 + (32 * _1167) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _1113 + 128
                while idx < (2 * ceil32(return_data.size)) + _1113 + (32 * _1167) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1713 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1894 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1990 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1990] = _1894
                require _1713 + (32 * _1894) + 32 <= return_data.size
                mem[_1990 + 32 len ceil32(32 * _1894)] = mem[(2 * ceil32(return_data.size)) + _1713 + 128 len ceil32(32 * _1894)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1894
                mem[mem[64] + 128 len 32 * _1894] = mem[_1990 + 32 len 32 * _1894]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1894, data=mem[mem[64] + 128 len 32 * _1894])
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1166 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1226 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1226
            require _1166 + (32 * _1226) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1166 + 128
            while idx < (2 * ceil32(return_data.size)) + _1166 + (32 * _1226) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1711 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1893 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _1989 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_1989] = _1893
            require _1711 + (32 * _1893) + 32 <= return_data.size
            mem[_1989 + 32 len ceil32(32 * _1893)] = mem[(2 * ceil32(return_data.size)) + _1711 + 128 len ceil32(32 * _1893)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1893
            mem[mem[64] + 128 len 32 * _1893] = mem[_1989 + 32 len 32 * _1893]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1893, data=mem[mem[64] + 128 len 32 * _1893])
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
        mem[100] = sub_6119e591
        mem[132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _593 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _626 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _626
                        require _593 + (32 * _626) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _593 + 128
                        while idx < (2 * ceil32(return_data.size)) + _593 + (32 * _626) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1733 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1904 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2000 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2000] = _1904
                        require _1733 + (32 * _1904) + 32 <= return_data.size
                        mem[_2000 + 32 len ceil32(32 * _1904)] = mem[(2 * ceil32(return_data.size)) + _1733 + 128 len ceil32(32 * _1904)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1904
                        mem[mem[64] + 128 len 32 * _1904] = mem[_2000 + 32 len 32 * _1904]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1904,
                               mem[mem[64] + 128 len 32 * _1904]
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _625 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _661 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _661
                    require _625 + (32 * _661) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _625 + 128
                    while idx < (2 * ceil32(return_data.size)) + _625 + (32 * _661) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1731 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1903 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1999 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1999] = _1903
                    require _1731 + (32 * _1903) + 32 <= return_data.size
                    mem[_1999 + 32 len ceil32(32 * _1903)] = mem[(2 * ceil32(return_data.size)) + _1731 + 128 len ceil32(32 * _1903)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1903
                    mem[mem[64] + 128 len 32 * _1903] = mem[_1999 + 32 len 32 * _1903]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1903,
                           mem[mem[64] + 128 len 32 * _1903]
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _818 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _882 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _882
                    require _818 + (32 * _882) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _818 + 128
                    while idx < (2 * ceil32(return_data.size)) + _818 + (32 * _882) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1737 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1906 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2002 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2002] = _1906
                    require _1737 + (32 * _1906) + 32 <= return_data.size
                    mem[_2002 + 32 len ceil32(32 * _1906)] = mem[(2 * ceil32(return_data.size)) + _1737 + 128 len ceil32(32 * _1906)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1906
                    mem[mem[64] + 128 len 32 * _1906] = mem[_2002 + 32 len 32 * _1906]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1906,
                           mem[mem[64] + 128 len 32 * _1906]
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _881 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _944 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _944
                require _881 + (32 * _944) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _881 + 128
                while idx < (2 * ceil32(return_data.size)) + _881 + (32 * _944) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1735 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1905 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2001 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2001] = _1905
                require _1735 + (32 * _1905) + 32 <= return_data.size
                mem[_2001 + 32 len ceil32(32 * _1905)] = mem[(2 * ceil32(return_data.size)) + _1735 + 128 len ceil32(32 * _1905)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1905
                mem[mem[64] + 128 len 32 * _1905] = mem[_2001 + 32 len 32 * _1905]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1905,
                       mem[mem[64] + 128 len 32 * _1905]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _624 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _660 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _660
                    require _624 + (32 * _660) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _624 + 128
                    while idx < (2 * ceil32(return_data.size)) + _624 + (32 * _660) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1725 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1900 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _1996 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_1996] = _1900
                    require _1725 + (32 * _1900) + 32 <= return_data.size
                    mem[_1996 + 32 len ceil32(32 * _1900)] = mem[(2 * ceil32(return_data.size)) + _1725 + 128 len ceil32(32 * _1900)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1900
                    mem[mem[64] + 128 len 32 * _1900] = mem[_1996 + 32 len 32 * _1900]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1900, data=mem[mem[64] + 128 len 32 * _1900])
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _659 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _699 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _699
                require _659 + (32 * _699) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _659 + 128
                while idx < (2 * ceil32(return_data.size)) + _659 + (32 * _699) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1723 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1899 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1995 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1995] = _1899
                require _1723 + (32 * _1899) + 32 <= return_data.size
                mem[_1995 + 32 len ceil32(32 * _1899)] = mem[(2 * ceil32(return_data.size)) + _1723 + 128 len ceil32(32 * _1899)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1899
                mem[mem[64] + 128 len 32 * _1899] = mem[_1995 + 32 len 32 * _1899]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1899, data=mem[mem[64] + 128 len 32 * _1899])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _880 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _942 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _942
                require _880 + (32 * _942) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _880 + 128
                while idx < (2 * ceil32(return_data.size)) + _880 + (32 * _942) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1729 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1902 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _1998 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_1998] = _1902
                require _1729 + (32 * _1902) + 32 <= return_data.size
                mem[_1998 + 32 len ceil32(32 * _1902)] = mem[(2 * ceil32(return_data.size)) + _1729 + 128 len ceil32(32 * _1902)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1902
                mem[mem[64] + 128 len 32 * _1902] = mem[_1998 + 32 len 32 * _1902]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1902, data=mem[mem[64] + 128 len 32 * _1902])
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _941 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _994 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _994
            require _941 + (32 * _994) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _941 + 128
            while idx < (2 * ceil32(return_data.size)) + _941 + (32 * _994) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1727 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1901 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _1997 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_1997] = _1901
            require _1727 + (32 * _1901) + 32 <= return_data.size
            mem[_1997 + 32 len ceil32(32 * _1901)] = mem[(2 * ceil32(return_data.size)) + _1727 + 128 len ceil32(32 * _1901)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1901
            mem[mem[64] + 128 len 32 * _1901] = mem[_1997 + 32 len 32 * _1901]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1901, data=mem[mem[64] + 128 len 32 * _1901])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _823 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _886 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _886
                    require _823 + (32 * _886) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _823 + 128
                    while idx < (2 * ceil32(return_data.size)) + _823 + (32 * _886) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1749 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1912 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2008 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2008] = _1912
                    require _1749 + (32 * _1912) + 32 <= return_data.size
                    mem[_2008 + 32 len ceil32(32 * _1912)] = mem[(2 * ceil32(return_data.size)) + _1749 + 128 len ceil32(32 * _1912)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1912
                    mem[mem[64] + 128 len 32 * _1912] = mem[_2008 + 32 len 32 * _1912]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1912,
                           mem[mem[64] + 128 len 32 * _1912]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _885 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _947 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _947
                require _885 + (32 * _947) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _885 + 128
                while idx < (2 * ceil32(return_data.size)) + _885 + (32 * _947) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1747 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1911 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2007 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2007] = _1911
                require _1747 + (32 * _1911) + 32 <= return_data.size
                mem[_2007 + 32 len ceil32(32 * _1911)] = mem[(2 * ceil32(return_data.size)) + _1747 + 128 len ceil32(32 * _1911)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1911
                mem[mem[64] + 128 len 32 * _1911] = mem[_2007 + 32 len 32 * _1911]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1911,
                       mem[mem[64] + 128 len 32 * _1911]
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _1097 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1150 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _1150
                require _1097 + (32 * _1150) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _1097 + 128
                while idx < (2 * ceil32(return_data.size)) + _1097 + (32 * _1150) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1753 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1914 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2010 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2010] = _1914
                require _1753 + (32 * _1914) + 32 <= return_data.size
                mem[_2010 + 32 len ceil32(32 * _1914)] = mem[(2 * ceil32(return_data.size)) + _1753 + 128 len ceil32(32 * _1914)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1914
                mem[mem[64] + 128 len 32 * _1914] = mem[_2010 + 32 len 32 * _1914]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1914,
                       mem[mem[64] + 128 len 32 * _1914]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1149 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1211 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1211
            require _1149 + (32 * _1211) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1149 + 128
            while idx < (2 * ceil32(return_data.size)) + _1149 + (32 * _1211) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1751 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1913 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2009 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2009] = _1913
            require _1751 + (32 * _1913) + 32 <= return_data.size
            mem[_2009 + 32 len ceil32(32 * _1913)] = mem[(2 * ceil32(return_data.size)) + _1751 + 128 len ceil32(32 * _1913)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1913
            mem[mem[64] + 128 len 32 * _1913] = mem[_2009 + 32 len 32 * _1913]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1913,
                   mem[mem[64] + 128 len 32 * _1913]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_6119e591
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_2232c6daAddress
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _884 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _946 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _946
                require _884 + (32 * _946) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _884 + 128
                while idx < (2 * ceil32(return_data.size)) + _884 + (32 * _946) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1741 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1908 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2004 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2004] = _1908
                require _1741 + (32 * _1908) + 32 <= return_data.size
                mem[_2004 + 32 len ceil32(32 * _1908)] = mem[(2 * ceil32(return_data.size)) + _1741 + 128 len ceil32(32 * _1908)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1908
                mem[mem[64] + 128 len 32 * _1908] = mem[_2004 + 32 len 32 * _1908]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1908, data=mem[mem[64] + 128 len 32 * _1908])
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _945 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _997 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _997
            require _945 + (32 * _997) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _945 + 128
            while idx < (2 * ceil32(return_data.size)) + _945 + (32 * _997) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1739 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1907 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2003 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2003] = _1907
            require _1739 + (32 * _1907) + 32 <= return_data.size
            mem[_2003 + 32 len ceil32(32 * _1907)] = mem[(2 * ceil32(return_data.size)) + _1739 + 128 len ceil32(32 * _1907)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1907
            mem[mem[64] + 128 len 32 * _1907] = mem[_2003 + 32 len 32 * _1907]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1907, data=mem[mem[64] + 128 len 32 * _1907])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1148 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1209 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1209
            require _1148 + (32 * _1209) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1148 + 128
            while idx < (2 * ceil32(return_data.size)) + _1148 + (32 * _1209) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1745 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1910 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2006 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2006] = _1910
            require _1745 + (32 * _1910) + 32 <= return_data.size
            mem[_2006 + 32 len ceil32(32 * _1910)] = mem[(2 * ceil32(return_data.size)) + _1745 + 128 len ceil32(32 * _1910)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1910
            mem[mem[64] + 128 len 32 * _1910] = mem[_2006 + 32 len 32 * _1910]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1910, data=mem[mem[64] + 128 len 32 * _1910])
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _1208 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1257 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1257
        require _1208 + (32 * _1257) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _1208 + 128
        while idx < (2 * ceil32(return_data.size)) + _1208 + (32 * _1257) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1743 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1909 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2005 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2005] = _1909
        require _1743 + (32 * _1909) + 32 <= return_data.size
        mem[_2005 + 32 len ceil32(32 * _1909)] = mem[(2 * ceil32(return_data.size)) + _1743 + 128 len ceil32(32 * _1909)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1909
        mem[mem[64] + 128 len 32 * _1909] = mem[_2005 + 32 len 32 * _1909]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1909, data=mem[mem[64] + 128 len 32 * _1909])
    if 0 == totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        mem[100] = sub_6119e591
        mem[132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _152 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _172 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _172
                        require _152 + (32 * _172) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _152 + 128
                        while idx < (2 * ceil32(return_data.size)) + _152 + (32 * _172) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1861 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1968 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2064 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2064] = _1968
                        require _1861 + (32 * _1968) + 32 <= return_data.size
                        mem[_2064 + 32 len ceil32(32 * _1968)] = mem[(2 * ceil32(return_data.size)) + _1861 + 128 len ceil32(32 * _1968)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1968
                        mem[mem[64] + 128 len 32 * _1968] = mem[_2064 + 32 len 32 * _1968]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1968,
                               mem[mem[64] + 128 len 32 * _1968]
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _171 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _188 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _188
                    require _171 + (32 * _188) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _171 + 128
                    while idx < (2 * ceil32(return_data.size)) + _171 + (32 * _188) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1859 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1967 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2063 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2063] = _1967
                    require _1859 + (32 * _1967) + 32 <= return_data.size
                    mem[_2063 + 32 len ceil32(32 * _1967)] = mem[(2 * ceil32(return_data.size)) + _1859 + 128 len ceil32(32 * _1967)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1967
                    mem[mem[64] + 128 len 32 * _1967] = mem[_2063 + 32 len 32 * _1967]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1967,
                           mem[mem[64] + 128 len 32 * _1967]
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _283 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _316 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _316
                    require _283 + (32 * _316) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _283 + 128
                    while idx < (2 * ceil32(return_data.size)) + _283 + (32 * _316) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1865 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1970 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2066 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2066] = _1970
                    require _1865 + (32 * _1970) + 32 <= return_data.size
                    mem[_2066 + 32 len ceil32(32 * _1970)] = mem[(2 * ceil32(return_data.size)) + _1865 + 128 len ceil32(32 * _1970)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1970
                    mem[mem[64] + 128 len 32 * _1970] = mem[_2066 + 32 len 32 * _1970]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1970,
                           mem[mem[64] + 128 len 32 * _1970]
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _315 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _349 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _349
                require _315 + (32 * _349) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _315 + 128
                while idx < (2 * ceil32(return_data.size)) + _315 + (32 * _349) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1863 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1969 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2065 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2065] = _1969
                require _1863 + (32 * _1969) + 32 <= return_data.size
                mem[_2065 + 32 len ceil32(32 * _1969)] = mem[(2 * ceil32(return_data.size)) + _1863 + 128 len ceil32(32 * _1969)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1969
                mem[mem[64] + 128 len 32 * _1969] = mem[_2065 + 32 len 32 * _1969]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1969,
                       mem[mem[64] + 128 len 32 * _1969]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _170 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _187 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _187
                    require _170 + (32 * _187) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _170 + 128
                    while idx < (2 * ceil32(return_data.size)) + _170 + (32 * _187) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1853 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1964 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2060 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2060] = _1964
                    require _1853 + (32 * _1964) + 32 <= return_data.size
                    mem[_2060 + 32 len ceil32(32 * _1964)] = mem[(2 * ceil32(return_data.size)) + _1853 + 128 len ceil32(32 * _1964)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1964
                    mem[mem[64] + 128 len 32 * _1964] = mem[_2060 + 32 len 32 * _1964]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1964, data=mem[mem[64] + 128 len 32 * _1964])
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _186 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _203 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _203
                require _186 + (32 * _203) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _186 + 128
                while idx < (2 * ceil32(return_data.size)) + _186 + (32 * _203) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1851 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1963 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2059 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2059] = _1963
                require _1851 + (32 * _1963) + 32 <= return_data.size
                mem[_2059 + 32 len ceil32(32 * _1963)] = mem[(2 * ceil32(return_data.size)) + _1851 + 128 len ceil32(32 * _1963)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1963
                mem[mem[64] + 128 len 32 * _1963] = mem[_2059 + 32 len 32 * _1963]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1963, data=mem[mem[64] + 128 len 32 * _1963])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _314 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _347 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _347
                require _314 + (32 * _347) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _314 + 128
                while idx < (2 * ceil32(return_data.size)) + _314 + (32 * _347) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1857 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1966 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2062 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2062] = _1966
                require _1857 + (32 * _1966) + 32 <= return_data.size
                mem[_2062 + 32 len ceil32(32 * _1966)] = mem[(2 * ceil32(return_data.size)) + _1857 + 128 len ceil32(32 * _1966)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1966
                mem[mem[64] + 128 len 32 * _1966] = mem[_2062 + 32 len 32 * _1966]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1966, data=mem[mem[64] + 128 len 32 * _1966])
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _346 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _374 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _374
            require _346 + (32 * _374) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _346 + 128
            while idx < (2 * ceil32(return_data.size)) + _346 + (32 * _374) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1855 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1965 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2061 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2061] = _1965
            require _1855 + (32 * _1965) + 32 <= return_data.size
            mem[_2061 + 32 len ceil32(32 * _1965)] = mem[(2 * ceil32(return_data.size)) + _1855 + 128 len ceil32(32 * _1965)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1965
            mem[mem[64] + 128 len 32 * _1965] = mem[_2061 + 32 len 32 * _1965]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1965, data=mem[mem[64] + 128 len 32 * _1965])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _288 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _320 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _320
                    require _288 + (32 * _320) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _288 + 128
                    while idx < (2 * ceil32(return_data.size)) + _288 + (32 * _320) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1877 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1976 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2072 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2072] = _1976
                    require _1877 + (32 * _1976) + 32 <= return_data.size
                    mem[_2072 + 32 len ceil32(32 * _1976)] = mem[(2 * ceil32(return_data.size)) + _1877 + 128 len ceil32(32 * _1976)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1976
                    mem[mem[64] + 128 len 32 * _1976] = mem[_2072 + 32 len 32 * _1976]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1976,
                           mem[mem[64] + 128 len 32 * _1976]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _319 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _352 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _352
                require _319 + (32 * _352) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _319 + 128
                while idx < (2 * ceil32(return_data.size)) + _319 + (32 * _352) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1875 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1975 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2071 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2071] = _1975
                require _1875 + (32 * _1975) + 32 <= return_data.size
                mem[_2071 + 32 len ceil32(32 * _1975)] = mem[(2 * ceil32(return_data.size)) + _1875 + 128 len ceil32(32 * _1975)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1975
                mem[mem[64] + 128 len 32 * _1975] = mem[_2071 + 32 len 32 * _1975]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1975,
                       mem[mem[64] + 128 len 32 * _1975]
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _448 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _466 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _466
                require _448 + (32 * _466) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _448 + 128
                while idx < (2 * ceil32(return_data.size)) + _448 + (32 * _466) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1881 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1978 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2074 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2074] = _1978
                require _1881 + (32 * _1978) + 32 <= return_data.size
                mem[_2074 + 32 len ceil32(32 * _1978)] = mem[(2 * ceil32(return_data.size)) + _1881 + 128 len ceil32(32 * _1978)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1978
                mem[mem[64] + 128 len 32 * _1978] = mem[_2074 + 32 len 32 * _1978]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1978,
                       mem[mem[64] + 128 len 32 * _1978]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _465 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _494 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _494
            require _465 + (32 * _494) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _465 + 128
            while idx < (2 * ceil32(return_data.size)) + _465 + (32 * _494) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1879 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1977 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2073 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2073] = _1977
            require _1879 + (32 * _1977) + 32 <= return_data.size
            mem[_2073 + 32 len ceil32(32 * _1977)] = mem[(2 * ceil32(return_data.size)) + _1879 + 128 len ceil32(32 * _1977)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1977
            mem[mem[64] + 128 len 32 * _1977] = mem[_2073 + 32 len 32 * _1977]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1977,
                   mem[mem[64] + 128 len 32 * _1977]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_6119e591
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_2232c6daAddress
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _318 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _351 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _351
                require _318 + (32 * _351) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _318 + 128
                while idx < (2 * ceil32(return_data.size)) + _318 + (32 * _351) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1869 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1972 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2068 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2068] = _1972
                require _1869 + (32 * _1972) + 32 <= return_data.size
                mem[_2068 + 32 len ceil32(32 * _1972)] = mem[(2 * ceil32(return_data.size)) + _1869 + 128 len ceil32(32 * _1972)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1972
                mem[mem[64] + 128 len 32 * _1972] = mem[_2068 + 32 len 32 * _1972]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1972, data=mem[mem[64] + 128 len 32 * _1972])
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _350 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _377 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _377
            require _350 + (32 * _377) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _350 + 128
            while idx < (2 * ceil32(return_data.size)) + _350 + (32 * _377) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1867 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1971 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2067 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2067] = _1971
            require _1867 + (32 * _1971) + 32 <= return_data.size
            mem[_2067 + 32 len ceil32(32 * _1971)] = mem[(2 * ceil32(return_data.size)) + _1867 + 128 len ceil32(32 * _1971)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1971
            mem[mem[64] + 128 len 32 * _1971] = mem[_2067 + 32 len 32 * _1971]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1971, data=mem[mem[64] + 128 len 32 * _1971])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _464 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _492 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _492
            require _464 + (32 * _492) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _464 + 128
            while idx < (2 * ceil32(return_data.size)) + _464 + (32 * _492) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1873 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1974 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2070 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2070] = _1974
            require _1873 + (32 * _1974) + 32 <= return_data.size
            mem[_2070 + 32 len ceil32(32 * _1974)] = mem[(2 * ceil32(return_data.size)) + _1873 + 128 len ceil32(32 * _1974)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1974
            mem[mem[64] + 128 len 32 * _1974] = mem[_2070 + 32 len 32 * _1974]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1974, data=mem[mem[64] + 128 len 32 * _1974])
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _491 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _520 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _520
        require _491 + (32 * _520) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _491 + 128
        while idx < (2 * ceil32(return_data.size)) + _491 + (32 * _520) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1871 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1973 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2069 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2069] = _1973
        require _1871 + (32 * _1973) + 32 <= return_data.size
        mem[_2069 + 32 len ceil32(32 * _1973)] = mem[(2 * ceil32(return_data.size)) + _1871 + 128 len ceil32(32 * _1973)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1973
        mem[mem[64] + 128 len 32 * _1973] = mem[_2069 + 32 len 32 * _1973]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1973, data=mem[mem[64] + 128 len 32 * _1973])
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
        mem[100] = sub_6119e591
        mem[132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = sub_6119e591
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
                staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args sub_6119e591, this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = sub_2232c6daAddress
                mem[32] = 22
                if not totalShares:
                    if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                        revert with 0, 17
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                        if 10000 < performanceFeeBips:
                            revert with 0, 17
                        if False and -performanceFeeBips + 10000 > 0:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 100] = 0
                        mem[(2 * ceil32(return_data.size)) + 132] = arg1
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 64
                        _580 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _616 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                        mem[(4 * ceil32(return_data.size)) + 96] = _616
                        require _580 + (32 * _616) + 32 <= return_data.size
                        s = (4 * ceil32(return_data.size)) + 128
                        idx = (2 * ceil32(return_data.size)) + _580 + 128
                        while idx < (2 * ceil32(return_data.size)) + _580 + (32 * _616) + 128:
                            require mem[idx] == mem[idx + 12 len 20]
                            mem[s] = mem[idx]
                            s = s + 32
                            idx = idx + 32
                            continue 
                        _1797 = mem[(2 * ceil32(return_data.size)) + 128]
                        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                        _1936 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                            revert with 0, 65
                        _2032 = mem[64]
                        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                        mem[_2032] = _1936
                        require _1797 + (32 * _1936) + 32 <= return_data.size
                        mem[_2032 + 32 len ceil32(32 * _1936)] = mem[(2 * ceil32(return_data.size)) + _1797 + 128 len ceil32(32 * _1936)]
                        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        mem[mem[64] + 96] = _1936
                        mem[mem[64] + 128 len 32 * _1936] = mem[_2032 + 32 len 32 * _1936]
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               96,
                               _1936,
                               mem[mem[64] + 128 len 32 * _1936]
                    if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _615 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _653 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _653
                    require _615 + (32 * _653) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _615 + 128
                    while idx < (2 * ceil32(return_data.size)) + _615 + (32 * _653) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1795 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1935 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2031 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2031] = _1935
                    require _1795 + (32 * _1935) + 32 <= return_data.size
                    mem[_2031 + 32 len ceil32(32 * _1935)] = mem[(2 * ceil32(return_data.size)) + _1795 + 128 len ceil32(32 * _1935)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1935
                    mem[mem[64] + 128 len 32 * _1935] = mem[_2031 + 32 len 32 * _1935]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1935,
                           mem[mem[64] + 128 len 32 * _1935]
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                    revert with 0, 17
                if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _797 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _859 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _859
                    require _797 + (32 * _859) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _797 + 128
                    while idx < (2 * ceil32(return_data.size)) + _797 + (32 * _859) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1801 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1938 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2034 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2034] = _1938
                    require _1801 + (32 * _1938) + 32 <= return_data.size
                    mem[_2034 + 32 len ceil32(32 * _1938)] = mem[(2 * ceil32(return_data.size)) + _1801 + 128 len ceil32(32 * _1938)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1938
                    mem[mem[64] + 128 len 32 * _1938] = mem[_2034 + 32 len 32 * _1938]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1938,
                           mem[mem[64] + 128 len 32 * _1938]
                if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _858 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _923 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _923
                require _858 + (32 * _923) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _858 + 128
                while idx < (2 * ceil32(return_data.size)) + _858 + (32 * _923) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1799 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1937 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2033 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2033] = _1937
                require _1799 + (32 * _1937) + 32 <= return_data.size
                mem[_2033 + 32 len ceil32(32 * _1937)] = mem[(2 * ceil32(return_data.size)) + _1799 + 128 len ceil32(32 * _1937)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1937
                mem[mem[64] + 128 len 32 * _1937] = mem[_2033 + 32 len 32 * _1937]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1937,
                       mem[mem[64] + 128 len 32 * _1937]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _614 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _652 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _652
                    require _614 + (32 * _652) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _614 + 128
                    while idx < (2 * ceil32(return_data.size)) + _614 + (32 * _652) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1789 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1932 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2028 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2028] = _1932
                    require _1789 + (32 * _1932) + 32 <= return_data.size
                    mem[_2028 + 32 len ceil32(32 * _1932)] = mem[(2 * ceil32(return_data.size)) + _1789 + 128 len ceil32(32 * _1932)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1932
                    mem[mem[64] + 128 len 32 * _1932] = mem[_2028 + 32 len 32 * _1932]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           Array(len=_1932, data=mem[mem[64] + 128 len 32 * _1932])
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _651 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _688 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _688
                require _651 + (32 * _688) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _651 + 128
                while idx < (2 * ceil32(return_data.size)) + _651 + (32 * _688) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1787 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1931 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2027 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2027] = _1931
                require _1787 + (32 * _1931) + 32 <= return_data.size
                mem[_2027 + 32 len ceil32(32 * _1931)] = mem[(2 * ceil32(return_data.size)) + _1787 + 128 len ceil32(32 * _1931)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1931
                mem[mem[64] + 128 len 32 * _1931] = mem[_2027 + 32 len 32 * _1931]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1931, data=mem[mem[64] + 128 len 32 * _1931])
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _857 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _921 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _921
                require _857 + (32 * _921) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _857 + 128
                while idx < (2 * ceil32(return_data.size)) + _857 + (32 * _921) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1793 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1934 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2030 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2030] = _1934
                require _1793 + (32 * _1934) + 32 <= return_data.size
                mem[_2030 + 32 len ceil32(32 * _1934)] = mem[(2 * ceil32(return_data.size)) + _1793 + 128 len ceil32(32 * _1934)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1934
                mem[mem[64] + 128 len 32 * _1934] = mem[_2030 + 32 len 32 * _1934]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1934, data=mem[mem[64] + 128 len 32 * _1934])
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _920 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _978 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _978
            require _920 + (32 * _978) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _920 + 128
            while idx < (2 * ceil32(return_data.size)) + _920 + (32 * _978) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1791 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1933 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2029 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2029] = _1933
            require _1791 + (32 * _1933) + 32 <= return_data.size
            mem[_2029 + 32 len ceil32(32 * _1933)] = mem[(2 * ceil32(return_data.size)) + _1791 + 128 len ceil32(32 * _1933)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1933
            mem[mem[64] + 128 len 32 * _1933] = mem[_2029 + 32 len 32 * _1933]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1933, data=mem[mem[64] + 128 len 32 * _1933])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _802 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _863 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _863
                    require _802 + (32 * _863) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _802 + 128
                    while idx < (2 * ceil32(return_data.size)) + _802 + (32 * _863) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1813 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1944 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2040 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2040] = _1944
                    require _1813 + (32 * _1944) + 32 <= return_data.size
                    mem[_2040 + 32 len ceil32(32 * _1944)] = mem[(2 * ceil32(return_data.size)) + _1813 + 128 len ceil32(32 * _1944)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1944
                    mem[mem[64] + 128 len 32 * _1944] = mem[_2040 + 32 len 32 * _1944]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1944,
                           mem[mem[64] + 128 len 32 * _1944]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _862 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _926 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _926
                require _862 + (32 * _926) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _862 + 128
                while idx < (2 * ceil32(return_data.size)) + _862 + (32 * _926) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1811 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1943 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2039 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2039] = _1943
                require _1811 + (32 * _1943) + 32 <= return_data.size
                mem[_2039 + 32 len ceil32(32 * _1943)] = mem[(2 * ceil32(return_data.size)) + _1811 + 128 len ceil32(32 * _1943)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1943
                mem[mem[64] + 128 len 32 * _1943] = mem[_2039 + 32 len 32 * _1943]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1943,
                       mem[mem[64] + 128 len 32 * _1943]
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _1081 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1128 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _1128
                require _1081 + (32 * _1128) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _1081 + 128
                while idx < (2 * ceil32(return_data.size)) + _1081 + (32 * _1128) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1817 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1946 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2042 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2042] = _1946
                require _1817 + (32 * _1946) + 32 <= return_data.size
                mem[_2042 + 32 len ceil32(32 * _1946)] = mem[(2 * ceil32(return_data.size)) + _1817 + 128 len ceil32(32 * _1946)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1946
                mem[mem[64] + 128 len 32 * _1946] = mem[_2042 + 32 len 32 * _1946]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1946,
                       mem[mem[64] + 128 len 32 * _1946]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1127 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1187 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1187
            require _1127 + (32 * _1187) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1127 + 128
            while idx < (2 * ceil32(return_data.size)) + _1127 + (32 * _1187) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1815 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1945 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2041 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2041] = _1945
            require _1815 + (32 * _1945) + 32 <= return_data.size
            mem[_2041 + 32 len ceil32(32 * _1945)] = mem[(2 * ceil32(return_data.size)) + _1815 + 128 len ceil32(32 * _1945)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1945
            mem[mem[64] + 128 len 32 * _1945] = mem[_2041 + 32 len 32 * _1945]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1945,
                   mem[mem[64] + 128 len 32 * _1945]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_6119e591
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_2232c6daAddress
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _861 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _925 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _925
                require _861 + (32 * _925) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _861 + 128
                while idx < (2 * ceil32(return_data.size)) + _861 + (32 * _925) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1805 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1940 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2036 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2036] = _1940
                require _1805 + (32 * _1940) + 32 <= return_data.size
                mem[_2036 + 32 len ceil32(32 * _1940)] = mem[(2 * ceil32(return_data.size)) + _1805 + 128 len ceil32(32 * _1940)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1940
                mem[mem[64] + 128 len 32 * _1940] = mem[_2036 + 32 len 32 * _1940]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1940, data=mem[mem[64] + 128 len 32 * _1940])
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _924 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _981 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _981
            require _924 + (32 * _981) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _924 + 128
            while idx < (2 * ceil32(return_data.size)) + _924 + (32 * _981) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1803 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1939 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2035 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2035] = _1939
            require _1803 + (32 * _1939) + 32 <= return_data.size
            mem[_2035 + 32 len ceil32(32 * _1939)] = mem[(2 * ceil32(return_data.size)) + _1803 + 128 len ceil32(32 * _1939)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1939
            mem[mem[64] + 128 len 32 * _1939] = mem[_2035 + 32 len 32 * _1939]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1939, data=mem[mem[64] + 128 len 32 * _1939])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1126 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1185 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1185
            require _1126 + (32 * _1185) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1126 + 128
            while idx < (2 * ceil32(return_data.size)) + _1126 + (32 * _1185) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1809 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1942 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2038 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2038] = _1942
            require _1809 + (32 * _1942) + 32 <= return_data.size
            mem[_2038 + 32 len ceil32(32 * _1942)] = mem[(2 * ceil32(return_data.size)) + _1809 + 128 len ceil32(32 * _1942)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1942
            mem[mem[64] + 128 len 32 * _1942] = mem[_2038 + 32 len 32 * _1942]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1942, data=mem[mem[64] + 128 len 32 * _1942])
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _1184 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1241 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1241
        require _1184 + (32 * _1241) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _1184 + 128
        while idx < (2 * ceil32(return_data.size)) + _1184 + (32 * _1241) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1807 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1941 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2037 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2037] = _1941
        require _1807 + (32 * _1941) + 32 <= return_data.size
        mem[_2037 + 32 len ceil32(32 * _1941)] = mem[(2 * ceil32(return_data.size)) + _1807 + 128 len ceil32(32 * _1941)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1941
        mem[mem[64] + 128 len 32 * _1941] = mem[_2037 + 32 len 32 * _1941]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1941, data=mem[mem[64] + 128 len 32 * _1941])
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
    mem[100] = sub_6119e591
    mem[132] = this.address
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6119e591, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalShares:
        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = sub_6119e591
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
            staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args sub_6119e591, this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = sub_2232c6daAddress
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = 0
                    mem[(2 * ceil32(return_data.size)) + 132] = arg1
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    _600 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _636 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                    mem[(4 * ceil32(return_data.size)) + 96] = _636
                    require _600 + (32 * _636) + 32 <= return_data.size
                    s = (4 * ceil32(return_data.size)) + 128
                    idx = (2 * ceil32(return_data.size)) + _600 + 128
                    while idx < (2 * ceil32(return_data.size)) + _600 + (32 * _636) + 128:
                        require mem[idx] == mem[idx + 12 len 20]
                        mem[s] = mem[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    _1829 = mem[(2 * ceil32(return_data.size)) + 128]
                    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                    _1952 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                        revert with 0, 65
                    _2048 = mem[64]
                    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                    mem[_2048] = _1952
                    require _1829 + (32 * _1952) + 32 <= return_data.size
                    mem[_2048 + 32 len ceil32(32 * _1952)] = mem[(2 * ceil32(return_data.size)) + _1829 + 128 len ceil32(32 * _1952)]
                    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    mem[mem[64] + 96] = _1952
                    mem[mem[64] + 128 len 32 * _1952] = mem[_2048 + 32 len 32 * _1952]
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           96,
                           _1952,
                           mem[mem[64] + 128 len 32 * _1952]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _635 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _670 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _670
                require _635 + (32 * _670) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _635 + 128
                while idx < (2 * ceil32(return_data.size)) + _635 + (32 * _670) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1827 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1951 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2047 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2047] = _1951
                require _1827 + (32 * _1951) + 32 <= return_data.size
                mem[_2047 + 32 len ceil32(32 * _1951)] = mem[(2 * ceil32(return_data.size)) + _1827 + 128 len ceil32(32 * _1951)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1951
                mem[mem[64] + 128 len 32 * _1951] = mem[_2047 + 32 len 32 * _1951]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1951,
                       mem[mem[64] + 128 len 32 * _1951]
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _831 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _895 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _895
                require _831 + (32 * _895) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _831 + 128
                while idx < (2 * ceil32(return_data.size)) + _831 + (32 * _895) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1833 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1954 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2050 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2050] = _1954
                require _1833 + (32 * _1954) + 32 <= return_data.size
                mem[_2050 + 32 len ceil32(32 * _1954)] = mem[(2 * ceil32(return_data.size)) + _1833 + 128 len ceil32(32 * _1954)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1954
                mem[mem[64] + 128 len 32 * _1954] = mem[_2050 + 32 len 32 * _1954]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1954,
                       mem[mem[64] + 128 len 32 * _1954]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _894 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _955 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _955
            require _894 + (32 * _955) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _894 + 128
            while idx < (2 * ceil32(return_data.size)) + _894 + (32 * _955) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1831 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1953 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2049 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2049] = _1953
            require _1831 + (32 * _1953) + 32 <= return_data.size
            mem[_2049 + 32 len ceil32(32 * _1953)] = mem[(2 * ceil32(return_data.size)) + _1831 + 128 len ceil32(32 * _1953)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1953
            mem[mem[64] + 128 len 32 * _1953] = mem[_2049 + 32 len 32 * _1953]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1953,
                   mem[mem[64] + 128 len 32 * _1953]
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_6119e591
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_2232c6daAddress
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _634 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _669 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _669
                require _634 + (32 * _669) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _634 + 128
                while idx < (2 * ceil32(return_data.size)) + _634 + (32 * _669) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1821 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1948 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2044 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2044] = _1948
                require _1821 + (32 * _1948) + 32 <= return_data.size
                mem[_2044 + 32 len ceil32(32 * _1948)] = mem[(2 * ceil32(return_data.size)) + _1821 + 128 len ceil32(32 * _1948)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1948
                mem[mem[64] + 128 len 32 * _1948] = mem[_2044 + 32 len 32 * _1948]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       Array(len=_1948, data=mem[mem[64] + 128 len 32 * _1948])
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _668 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _707 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _707
            require _668 + (32 * _707) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _668 + 128
            while idx < (2 * ceil32(return_data.size)) + _668 + (32 * _707) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1819 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1947 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2043 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2043] = _1947
            require _1819 + (32 * _1947) + 32 <= return_data.size
            mem[_2043 + 32 len ceil32(32 * _1947)] = mem[(2 * ceil32(return_data.size)) + _1819 + 128 len ceil32(32 * _1947)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1947
            mem[mem[64] + 128 len 32 * _1947] = mem[_2043 + 32 len 32 * _1947]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1947, data=mem[mem[64] + 128 len 32 * _1947])
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _893 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _953 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _953
            require _893 + (32 * _953) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _893 + 128
            while idx < (2 * ceil32(return_data.size)) + _893 + (32 * _953) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1825 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1950 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2046 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2046] = _1950
            require _1825 + (32 * _1950) + 32 <= return_data.size
            mem[_2046 + 32 len ceil32(32 * _1950)] = mem[(2 * ceil32(return_data.size)) + _1825 + 128 len ceil32(32 * _1950)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1950
            mem[mem[64] + 128 len 32 * _1950] = mem[_2046 + 32 len 32 * _1950]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1950, data=mem[mem[64] + 128 len 32 * _1950])
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _952 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1003 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1003
        require _952 + (32 * _1003) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _952 + 128
        while idx < (2 * ceil32(return_data.size)) + _952 + (32 * _1003) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1823 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1949 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2045 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2045] = _1949
        require _1823 + (32 * _1949) + 32 <= return_data.size
        mem[_2045 + 32 len ceil32(32 * _1949)] = mem[(2 * ceil32(return_data.size)) + _1823 + 128 len ceil32(32 * _1949)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1949
        mem[mem[64] + 128 len 32 * _1949] = mem[_2045 + 32 len 32 * _1949]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1949, data=mem[mem[64] + 128 len 32 * _1949])
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_6119e591
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
        staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_6119e591, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = sub_2232c6daAddress
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = arg1
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args 0, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                _836 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _899 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _899
                require _836 + (32 * _899) + 32 <= return_data.size
                s = (4 * ceil32(return_data.size)) + 128
                idx = (2 * ceil32(return_data.size)) + _836 + 128
                while idx < (2 * ceil32(return_data.size)) + _836 + (32 * _899) + 128:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                _1845 = mem[(2 * ceil32(return_data.size)) + 128]
                require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _1960 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                    revert with 0, 65
                _2056 = mem[64]
                if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
                mem[_2056] = _1960
                require _1845 + (32 * _1960) + 32 <= return_data.size
                mem[_2056 + 32 len ceil32(32 * _1960)] = mem[(2 * ceil32(return_data.size)) + _1845 + 128 len ceil32(32 * _1960)]
                mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = _1960
                mem[mem[64] + 128 len 32 * _1960] = mem[_2056 + 32 len 32 * _1960]
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       96,
                       _1960,
                       mem[mem[64] + 128 len 32 * _1960]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _898 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _958 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _958
            require _898 + (32 * _958) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _898 + 128
            while idx < (2 * ceil32(return_data.size)) + _898 + (32 * _958) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1843 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1959 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2055 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2055] = _1959
            require _1843 + (32 * _1959) + 32 <= return_data.size
            mem[_2055 + 32 len ceil32(32 * _1959)] = mem[(2 * ceil32(return_data.size)) + _1843 + 128 len ceil32(32 * _1959)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1959
            mem[mem[64] + 128 len 32 * _1959] = mem[_2055 + 32 len 32 * _1959]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1959,
                   mem[mem[64] + 128 len 32 * _1959]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _1110 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1164 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _1164
            require _1110 + (32 * _1164) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _1110 + 128
            while idx < (2 * ceil32(return_data.size)) + _1110 + (32 * _1164) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1849 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1962 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2058 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2058] = _1962
            require _1849 + (32 * _1962) + 32 <= return_data.size
            mem[_2058 + 32 len ceil32(32 * _1962)] = mem[(2 * ceil32(return_data.size)) + _1849 + 128 len ceil32(32 * _1962)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1962
            mem[mem[64] + 128 len 32 * _1962] = mem[_2058 + 32 len 32 * _1962]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   96,
                   _1962,
                   mem[mem[64] + 128 len 32 * _1962]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _1163 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1222 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1222
        require _1163 + (32 * _1222) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _1163 + 128
        while idx < (2 * ceil32(return_data.size)) + _1163 + (32 * _1222) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1847 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1961 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2057 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2057] = _1961
        require _1847 + (32 * _1961) + 32 <= return_data.size
        mem[_2057 + 32 len ceil32(32 * _1961)] = mem[(2 * ceil32(return_data.size)) + _1847 + 128 len ceil32(32 * _1961)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1961
        mem[mem[64] + 128 len 32 * _1961] = mem[_2057 + 32 len 32 * _1961]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               0,
               96,
               _1961,
               mem[mem[64] + 128 len 32 * _1961]
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = sub_6119e591
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x1f806f7c8ded893fd3cae279191ad7aa3798e928)
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_6119e591, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = sub_2232c6daAddress
    mem[32] = 22
    if not totalShares:
        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = 0
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 0, address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 64
            _897 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _957 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _957
            require _897 + (32 * _957) + 32 <= return_data.size
            s = (4 * ceil32(return_data.size)) + 128
            idx = (2 * ceil32(return_data.size)) + _897 + 128
            while idx < (2 * ceil32(return_data.size)) + _897 + (32 * _957) + 128:
                require mem[idx] == mem[idx + 12 len 20]
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            _1837 = mem[(2 * ceil32(return_data.size)) + 128]
            require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _1956 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
                revert with 0, 65
            _2052 = mem[64]
            if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
            mem[_2052] = _1956
            require _1837 + (32 * _1956) + 32 <= return_data.size
            mem[_2052 + 32 len ceil32(32 * _1956)] = mem[(2 * ceil32(return_data.size)) + _1837 + 128 len ceil32(32 * _1956)]
            mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
            mem[mem[64] + 64] = 96
            mem[mem[64] + 96] = _1956
            mem[mem[64] + 128 len 32 * _1956] = mem[_2052 + 32 len 32 * _1956]
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   Array(len=_1956, data=mem[mem[64] + 128 len 32 * _1956])
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _956 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1006 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1006
        require _956 + (32 * _1006) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _956 + 128
        while idx < (2 * ceil32(return_data.size)) + _956 + (32 * _1006) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1835 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1955 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2051 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2051] = _1955
        require _1835 + (32 * _1955) + 32 <= return_data.size
        mem[_2051 + 32 len ceil32(32 * _1955)] = mem[(2 * ceil32(return_data.size)) + _1835 + 128 len ceil32(32 * _1955)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1955
        mem[mem[64] + 128 len 32 * _1955] = mem[_2051 + 32 len 32 * _1955]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1955, data=mem[mem[64] + 128 len 32 * _1955])
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * ext_call.return_data[0] / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * ext_call.return_data[0] / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = 0
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 0, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _1162 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1220 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _1220
        require _1162 + (32 * _1220) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + 128
        idx = (2 * ceil32(return_data.size)) + _1162 + 128
        while idx < (2 * ceil32(return_data.size)) + _1162 + (32 * _1220) + 128:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _1841 = mem[(2 * ceil32(return_data.size)) + 128]
        require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _1958 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        _2054 = mem[64]
        if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
        mem[_2054] = _1958
        require _1841 + (32 * _1958) + 32 <= return_data.size
        mem[_2054 + 32 len ceil32(32 * _1958)] = mem[(2 * ceil32(return_data.size)) + _1841 + 128 len ceil32(32 * _1958)]
        mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = _1958
        mem[mem[64] + 128 len 32 * _1958] = mem[_2054 + 32 len 32 * _1958]
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               Array(len=_1958, data=mem[mem[64] + 128 len 32 * _1958])
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = 0
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
    require ext_code.size(rewarderAddress)
    staticcall rewarderAddress.pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0, address(arg1), (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _1219 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _1264 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _1264
    require _1219 + (32 * _1264) + 32 <= return_data.size
    s = (4 * ceil32(return_data.size)) + 128
    idx = (2 * ceil32(return_data.size)) + _1219 + 128
    while idx < (2 * ceil32(return_data.size)) + _1219 + (32 * _1264) + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _1839 = mem[(2 * ceil32(return_data.size)) + 128]
    require mem[(2 * ceil32(return_data.size)) + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _1957 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96] > test266151307():
        revert with 0, 65
    _2053 = mem[64]
    if mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128] + 96]) + 1
    mem[_2053] = _1957
    require _1839 + (32 * _1957) + 32 <= return_data.size
    mem[_2053 + 32 len ceil32(32 * _1957)] = mem[(2 * ceil32(return_data.size)) + _1839 + 128 len ceil32(32 * _1957)]
    mem[mem[64]] = ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
    mem[mem[64] + 32] = (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _1957
    mem[mem[64] + 128 len 32 * _1957] = mem[_2053 + 32 len 32 * _1957]
    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
           (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * ext_call.return_data[0] / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
           Array(len=_1957, data=mem[mem[64] + 128 len 32 * _1957])
}



}
