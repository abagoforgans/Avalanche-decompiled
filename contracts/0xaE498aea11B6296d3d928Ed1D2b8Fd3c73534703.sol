contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#
const masterChefJoeV3 = 0xd6a4f121ca35509af06a0be99093d08462f53052


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
address sub_d7f04437Address;
uint256 totalShares;
uint256 sub_f922412d;
uint32 stor15;
uint256 stor15; offset 32
uint256 joePid;
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

function joePid() payable {
    return joePid
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

function sub_d7f04437(?) payable {
    return sub_d7f04437Address
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

function sub_10066214(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_edc79bac:
        return 0
    require ext_code.size(rewarderAddress)
    staticcall rewarderAddress.pendingTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function checkReward() payable {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = joePid
    mem[132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args joePid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
    require uint32(this.address), mem[164 len 28] <= test266151307()
    require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
    if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    require uint32(this.address), mem[164 len 28] + mem[uint32(this.address), mem[164 len 28] + 96] + 32 <= return_data.size
    return mem[96 len 4], Mask(224, 0, stor15.field_32)
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

function checkRewards() payable {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = joePid
    mem[132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args joePid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require uint32(stor15.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[0, mem[164 len 28] + 96]
    if mem[0, mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[0, mem[164 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _23 = mem[192]
        mem[mem[64]] = _4
        mem[mem[64] + 32] = address(this.address) << 64
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _7
        mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) > _7:
            mem[_7 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _23
        return _4, address(this.address), Array(len=_7, data=mem[mem[64] + 160 len ceil32(_7)]), _23
    mem[_7 + ceil32(return_data.size) + 128] = 0
    _24 = mem[192]
    mem[mem[64]] = _4
    mem[mem[64] + 32] = address(this.address) << 64
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = _7
    mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[_7 + mem[64] + 160] = 0
    mem[mem[64] + 96] = _24
    return _4, address(this.address), Array(len=_7, data=mem[mem[64] + 160 len ceil32(_7)]), _24
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

function sub_6a627d57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = joePid
    mem[132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args joePid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
    require uint32(this.address), mem[164 len 28] <= test266151307()
    require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
    if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    require uint32(this.address), mem[164 len 28] + mem[uint32(this.address), mem[164 len 28] + 96] + 32 <= return_data.size
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
    if mem[96 len 4], Mask(224, 0, stor15.field_32) and 10^18 > -1 / mem[96 len 4], Mask(224, 0, stor15.field_32):
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        else:
            return 0
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    return ((10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * mem[96 len 4], Mask(224, 0, stor15.field_32) / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000)
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = joePid
        mem[132] = this.address
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args joePid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _8 = mem[96 len 4], Mask(224, 0, stor15.field_32)
        require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
        _10 = uint32(this.address), mem[164 len 28]
        require uint32(this.address), mem[164 len 28] <= test266151307()
        require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
        _11 = mem[uint32(this.address), mem[164 len 28] + 96]
        if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _11
        require _10 + _11 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_11)] = mem[_10 + 128 len ceil32(_11)]
        if ceil32(_11) <= _11:
            mem[0] = sub_d7f04437Address
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    if not sub_edc79bac:
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               0
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           mem[_317]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       mem[_340]
            if _8 and 10^18 > -1 / _8:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * _8 / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _8 / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       mem[_413]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   mem[_436]
        mem[_11 + ceil32(return_data.size) + 128] = 0
        mem[0] = sub_d7f04437Address
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       mem[_320]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   mem[_343]
        if _8 and 10^18 > -1 / _8:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * _8 / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _8 / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   mem[_416]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if not sub_edc79bac:
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   0
        mem[mem[64] + 4] = arg1
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _8 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               mem[_439]
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
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = joePid
        mem[132] = this.address
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args joePid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _32 = mem[96 len 4], Mask(224, 0, stor15.field_32)
        require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
        _36 = uint32(this.address), mem[164 len 28]
        require uint32(this.address), mem[164 len 28] <= test266151307()
        require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
        _38 = mem[uint32(this.address), mem[164 len 28] + 96]
        if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _38
        require _36 + _38 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_38)] = mem[_36 + 128 len ceil32(_38)]
        if ceil32(_38) <= _38:
            mem[0] = sub_d7f04437Address
            mem[32] = 22
            if not totalShares:
                if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                    revert with 0, 17
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                    if 10000 < performanceFeeBips:
                        revert with 0, 17
                    if False and -performanceFeeBips + 10000 > 0:
                        revert with 0, 17
                    if not sub_edc79bac:
                        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                               0,
                               0
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(rewarderAddress)
                    staticcall rewarderAddress.pendingTokens(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           mem[_305]
                if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       mem[_328]
            if _32 and 10^18 > -1 / _32:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if sub_201e417c[stor12] > !(10^18 * _32 / totalShares):
                revert with 0, 17
            if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _32 / totalShares) > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       mem[_401]
            if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   mem[_424]
        mem[_38 + ceil32(return_data.size) + 128] = 0
        mem[0] = sub_d7f04437Address
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       mem[_308]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   mem[_331]
        if _32 and 10^18 > -1 / _32:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * _32 / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _32 / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   mem[_404]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if not sub_edc79bac:
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   0
        mem[mem[64] + 4] = arg1
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _32 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               mem[_427]
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
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = joePid
    mem[132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args joePid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _34 = mem[96 len 4], Mask(224, 0, stor15.field_32)
    require uint32(stor15.field_0), Mask(224, 32, this.address) >> 32 == Mask(160, 32, this.address) >> 32
    _37 = uint32(this.address), mem[164 len 28]
    require uint32(this.address), mem[164 len 28] <= test266151307()
    require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
    _40 = mem[uint32(this.address), mem[164 len 28] + 96]
    if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(this.address), mem[164 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _40
    require _37 + _40 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_40)] = mem[_37 + 128 len ceil32(_40)]
    if ceil32(_40) <= _40:
        mem[0] = sub_d7f04437Address
        mem[32] = 22
        if not totalShares:
            if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
                revert with 0, 17
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
                if 10000 < performanceFeeBips:
                    revert with 0, 17
                if False and -performanceFeeBips + 10000 > 0:
                    revert with 0, 17
                if not sub_edc79bac:
                    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                           0,
                           0
                mem[mem[64] + 4] = arg1
                require ext_code.size(rewarderAddress)
                staticcall rewarderAddress.pendingTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       mem[_311]
            if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   mem[_334]
        if _34 and 10^18 > -1 / _34:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if sub_201e417c[stor12] > !(10^18 * _34 / totalShares):
            revert with 0, 17
        if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _34 / totalShares) > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   mem[_407]
        if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if not sub_edc79bac:
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   0
        mem[mem[64] + 4] = arg1
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _430 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               mem[_430]
    mem[_40 + ceil32(return_data.size) + 128] = 0
    mem[0] = sub_d7f04437Address
    mem[32] = 22
    if not totalShares:
        if userAmount[address(arg1)] and sub_201e417c[stor12] > -1 / userAmount[address(arg1)]:
            revert with 0, 17
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
            if 10000 < performanceFeeBips:
                revert with 0, 17
            if False and -performanceFeeBips + 10000 > 0:
                revert with 0, 17
            if not sub_edc79bac:
                return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                       0,
                       0
            mem[mem[64] + 4] = arg1
            require ext_code.size(rewarderAddress)
            staticcall rewarderAddress.pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   mem[_314]
        if userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / (userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
            revert with 0, 17
        if not sub_edc79bac:
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
                   0
        mem[mem[64] + 4] = arg1
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (performanceFeeBips * userAmount[address(arg1)] * sub_201e417c[stor12] / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               mem[_337]
    if _34 and 10^18 > -1 / _34:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if sub_201e417c[stor12] > !(10^18 * _34 / totalShares):
        revert with 0, 17
    if userAmount[address(arg1)] and sub_201e417c[stor12] + (10^18 * _34 / totalShares) > -1 / userAmount[address(arg1)]:
        revert with 0, 17
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18 <= sub_7b4717a4[address(arg1)][stor12]:
        if 10000 < performanceFeeBips:
            revert with 0, 17
        if False and -performanceFeeBips + 10000 > 0:
            revert with 0, 17
        if not sub_edc79bac:
            return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
                   0,
                   0
        mem[mem[64] + 4] = arg1
        require ext_code.size(rewarderAddress)
        staticcall rewarderAddress.pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _410 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               0,
               mem[_410]
    if (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18 < sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if 10000 < performanceFeeBips:
        revert with 0, 17
    if ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12] and -performanceFeeBips + 10000 > -1 / ((sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - sub_7b4717a4[address(arg1)][stor12]:
        revert with 0, 17
    if not sub_edc79bac:
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
               0
    mem[mem[64] + 4] = arg1
    require ext_code.size(rewarderAddress)
    staticcall rewarderAddress.pendingTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _433 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
           (10000 * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (performanceFeeBips * (sub_201e417c[stor12] * userAmount[address(arg1)]) + (10^18 * _34 / totalShares * userAmount[address(arg1)]) / 10^18) - (10000 * sub_7b4717a4[address(arg1)][stor12]) + (performanceFeeBips * sub_7b4717a4[address(arg1)][stor12]) / 10000,
           mem[_433]
}



}
