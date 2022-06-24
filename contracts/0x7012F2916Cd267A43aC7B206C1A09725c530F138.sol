contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - pendingRewards(address arg1)
#  - harvest()
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#
const sub_c97d02f0(?) = 0x1f806f7c8ded893fd3cae279191ad7aa3798e928


uint8 onlyApprovedContractOrEOAStatus; offset 160
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
    return bool(onlyApprovedContractOrEOAStatus)
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

function setOnlyApprovedContractOrEOAStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = Mask(96, 0, arg1)
}

function sub_3c331537(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1)
    sub_8471692aAddress = address(arg1)
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
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x98969e82 with:
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
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x98969e82 with:
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
    staticcall 0x1f806f7c8ded893fd3cae279191ad7aa3798e928.0x98969e82 with:
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
            mem[_82] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
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
        mem[_81] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
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
        mem[_84] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
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
    mem[_83] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    require _73 + (32 * _79) + 32 <= return_data.size
    mem[_83 + 32 len ceil32(32 * _79)] = mem[ceil32(return_data.size) + _73 + 128 len ceil32(32 * _79)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _79
    mem[mem[64] + 64 len 32 * _79] = mem[_83 + 32 len 32 * _79]
    return Array(len=_79, data=mem[mem[64] + 64 len 32 * _79])
}



}
