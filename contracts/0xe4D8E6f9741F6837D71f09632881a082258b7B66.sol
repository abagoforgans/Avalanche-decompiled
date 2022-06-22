contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - emergencyWithdraw(uint256 arg1)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 50000 * 10^18


address operatorAddress;
address sub_ee6822a7Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
address sub_ad9bd68fAddress;
uint256 sub_9e63d261;
uint256 sub_943f013d;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_1024)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function operator() payable {
    return operatorAddress
}

function poolStartTime() payable {
    return poolStartTime
}

function sub_6e271dd5(?) payable {
    return sub_6e271dd5
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_943f013d(?) payable {
    return sub_943f013d
}

function sub_9e63d261(?) payable {
    return sub_9e63d261
}

function sub_ad9bd68f(?) payable {
    return sub_ad9bd68fAddress
}

function sub_ee6822a7(?) payable {
    return sub_ee6822a7Address
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TShareRewardPool: caller is not the operator'
    operatorAddress = arg1
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        return 0
    if arg2 < sub_6e271dd5:
        if arg2 <= poolStartTime:
            return 0
        if arg1 > poolStartTime:
            if arg2 < arg1:
                revert with 'NH{q', 17
            if arg2 - arg1 and sub_9e63d261 > -1 / arg2 - arg1:
                revert with 'NH{q', 17
            return ((arg2 * sub_9e63d261) - (arg1 * sub_9e63d261))
        if arg2 < poolStartTime:
            revert with 'NH{q', 17
        if arg2 - poolStartTime and sub_9e63d261 > -1 / arg2 - poolStartTime:
            revert with 'NH{q', 17
        return ((arg2 * sub_9e63d261) - (poolStartTime * sub_9e63d261))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if sub_6e271dd5 < arg1:
            revert with 'NH{q', 17
        if sub_6e271dd5 - arg1 and sub_9e63d261 > -1 / sub_6e271dd5 - arg1:
            revert with 'NH{q', 17
        return ((sub_6e271dd5 * sub_9e63d261) - (arg1 * sub_9e63d261))
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if sub_6e271dd5 - poolStartTime and sub_9e63d261 > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    return ((sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261))
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9] == mem[_9]
            if mem[_9]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not mem[_9]:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_9]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_9]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if False and poolInfo[idx].field_256 > 0:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_9]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_9]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_9]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if block.timestamp < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if block.timestamp - poolInfo[idx].field_512 and sub_9e63d261 > -1 / block.timestamp - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_9]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                                else:
                                    if block.timestamp < poolStartTime:
                                        revert with 'NH{q', 17
                                    if block.timestamp - poolStartTime and sub_9e63d261 > -1 / block.timestamp - poolStartTime:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_9]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if False and poolInfo[idx].field_256 > 0:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_9]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_9]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_9]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if sub_6e271dd5 < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_6e271dd5 - poolInfo[idx].field_512 and sub_9e63d261 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_9]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                                else:
                                    if sub_6e271dd5 < poolStartTime:
                                        revert with 'NH{q', 17
                                    if sub_6e271dd5 - poolStartTime and sub_9e63d261 > -1 / sub_6e271dd5 - poolStartTime:
                                        revert with 'NH{q', 17
                                    if (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_9]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TShareRewardPool: caller is not the operator'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_13] == mem[_13]
            if mem[_13]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not mem[_13]:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_13]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_13]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if False and poolInfo[idx].field_256 > 0:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_13]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_13]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_13]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if block.timestamp < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if block.timestamp - poolInfo[idx].field_512 and sub_9e63d261 > -1 / block.timestamp - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_13]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                                else:
                                    if block.timestamp < poolStartTime:
                                        revert with 'NH{q', 17
                                    if block.timestamp - poolStartTime and sub_9e63d261 > -1 / block.timestamp - poolStartTime:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_13]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if False and poolInfo[idx].field_256 > 0:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_13]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_13]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_13]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if sub_6e271dd5 < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_6e271dd5 - poolInfo[idx].field_512 and sub_9e63d261 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_13]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                                else:
                                    if sub_6e271dd5 < poolStartTime:
                                        revert with 'NH{q', 17
                                    if sub_6e271dd5 - poolStartTime and sub_9e63d261 > -1 / sub_6e271dd5 - poolStartTime:
                                        revert with 'NH{q', 17
                                    if (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_13]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_1024:
        if totalAllocPoint < poolInfo[arg1].field_256:
            revert with 'NH{q', 17
        if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
            revert with 'NH{q', 17
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
}

function pendingShare(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.timestamp:
        if False and poolInfo[arg1].field_256 > 0:
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if False and poolInfo[arg1].field_256 > 0:
                revert with 'NH{q', 17
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > poolStartTime:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_9e63d261 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if (block.timestamp * sub_9e63d261) - (poolInfo[arg1].field_512 * sub_9e63d261) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolInfo[arg1].field_512 * sub_9e63d261):
                revert with 'NH{q', 17
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.timestamp < poolStartTime:
            revert with 'NH{q', 17
        if block.timestamp - poolStartTime and sub_9e63d261 > -1 / block.timestamp - poolStartTime:
            revert with 'NH{q', 17
        if (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if False and poolInfo[arg1].field_256 > 0:
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > poolStartTime:
        if sub_6e271dd5 < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if sub_6e271dd5 - poolInfo[arg1].field_512 and sub_9e63d261 > -1 / sub_6e271dd5 - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if (sub_6e271dd5 * sub_9e63d261) - (poolInfo[arg1].field_512 * sub_9e63d261) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolInfo[arg1].field_512 * sub_9e63d261):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if sub_6e271dd5 - poolStartTime and sub_9e63d261 > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    if (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[arg1].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TShareRewardPool: caller is not the operator'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'TShareRewardPool: existing pool?'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 2
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_442] == mem[_442]
                if mem[_442]:
                    if not poolInfo[idx].field_1024:
                        poolInfo[idx].field_1024 = 1
                        if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                            revert with 'NH{q', 17
                        totalAllocPoint += poolInfo[idx].field_256
                    if totalAllocPoint > 0:
                        if poolInfo[idx].field_512 >= block.timestamp:
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not mem[_442]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_442]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_442]
                        else:
                            if block.timestamp < sub_6e271dd5:
                                if block.timestamp <= poolStartTime:
                                    if False and poolInfo[idx].field_256 > 0:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_442]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_442]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_442]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if block.timestamp < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if block.timestamp - poolInfo[idx].field_512 and sub_9e63d261 > -1 / block.timestamp - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not mem[_442]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                                    else:
                                        if block.timestamp < poolStartTime:
                                            revert with 'NH{q', 17
                                        if block.timestamp - poolStartTime and sub_9e63d261 > -1 / block.timestamp - poolStartTime:
                                            revert with 'NH{q', 17
                                        if (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not mem[_442]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                            else:
                                if poolInfo[idx].field_512 >= sub_6e271dd5:
                                    if False and poolInfo[idx].field_256 > 0:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_442]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_442]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_442]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if sub_6e271dd5 < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if sub_6e271dd5 - poolInfo[idx].field_512 and sub_9e63d261 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolInfo[idx].field_512 * sub_9e63d261):
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not mem[_442]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                                    else:
                                        if sub_6e271dd5 < poolStartTime:
                                            revert with 'NH{q', 17
                                        if sub_6e271dd5 - poolStartTime and sub_9e63d261 > -1 / sub_6e271dd5 - poolStartTime:
                                            revert with 'NH{q', 17
                                        if (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_9e63d261) - (poolStartTime * sub_9e63d261):
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not mem[_442]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_9e63d261 * poolInfo[idx].field_256) - (poolStartTime * sub_9e63d261 * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp >= poolStartTime:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = block.timestamp
            poolInfo[poolInfo.length].field_768 = 0
            if block.timestamp <= poolStartTime:
                poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= poolStartTime)
                if totalAllocPoint > -arg1 - 1:
                    revert with 'NH{q', 17
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= block.timestamp)
                if block.timestamp <= block.timestamp:
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.timestamp:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = block.timestamp
                poolInfo[poolInfo.length].field_768 = 0
                if block.timestamp <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= block.timestamp)
                    if block.timestamp <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        totalAllocPoint += arg1
    else:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = poolStartTime
            poolInfo[poolInfo.length].field_768 = 0
            if poolStartTime <= poolStartTime:
                poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= poolStartTime)
                if totalAllocPoint > -arg1 - 1:
                    revert with 'NH{q', 17
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= block.timestamp)
                if poolStartTime <= block.timestamp:
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
        else:
            if arg4 >= poolStartTime:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = poolStartTime
                poolInfo[poolInfo.length].field_768 = 0
                if poolStartTime <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= block.timestamp)
                    if poolStartTime <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        totalAllocPoint += arg1
}



}
