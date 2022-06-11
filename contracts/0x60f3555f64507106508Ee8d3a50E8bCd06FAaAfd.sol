contract main {




// =====================  Runtime code  =====================


#
#  - getGeneratedReward(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - emergencyWithdraw(uint256 arg1)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - sub_b213f4a1(?)
#  - deposit(uint256 arg1, uint256 arg2)
#
address operatorAddress;
address creamAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
array of uint256 epochTotalRewards;
array of uint256 sub_b89e73c1;
array of uint256 sub_bd11de22;

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

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function epochTotalRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < epochTotalRewards.length
    return epochTotalRewards[arg1]
}

function cream() payable {
    return creamAddress
}

function sub_b89e73c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_b89e73c1[arg1]
}

function sub_bd11de22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_bd11de22[arg1]
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CreamRewardPool: caller is not the operator'
    operatorAddress = arg1
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
                    s = 2
                    while uint8(s) >= 1:
                        if uint8(uint8(s) - 1) >= 3:
                            revert with 'NH{q', 50
                        if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                            if not uint8(s):
                                revert with 'NH{q', 17
                            s = uint8(s) - 1
                            continue 
                        if uint8(s) < 1:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) - 1) >= 3:
                            revert with 'NH{q', 50
                        if uint8(s) >= 3:
                            revert with 'NH{q', 50
                        if poolInfo[idx].field_512 >= sub_b89e73c1[uint8(uint8(s) - 1)]:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22[uint8(s)] > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not mem[_9]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                        else:
                            if uint8(s) < 1:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) - 1) >= 3:
                                revert with 'NH{q', 50
                            if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)] and sub_bd11de22[uint8(s)] > -1 / block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)]:
                                revert with 'NH{q', 17
                            if uint8(s) == 1:
                                if sub_b89e73c1.length < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_9]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                            else:
                                if uint8(s) < 1:
                                    revert with 'NH{q', 17
                                u = (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)])
                                t = uint8(s) - 1
                                while uint8(t) >= 1:
                                    if uint8(uint8(t) - 1) >= 3:
                                        revert with 'NH{q', 50
                                    if uint8(t) >= 3:
                                        revert with 'NH{q', 50
                                    if poolInfo[idx].field_512 < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                        if uint8(t) < 1:
                                            revert with 'NH{q', 17
                                        if uint8(uint8(t) - 1) >= 3:
                                            revert with 'NH{q', 50
                                        if uint8(t) >= 3:
                                            revert with 'NH{q', 50
                                        if sub_b89e73c1[uint8(t)] < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                            revert with 'NH{q', 17
                                        if sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)] and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)]:
                                            revert with 'NH{q', 17
                                        if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)]) - 1:
                                            revert with 'NH{q', 17
                                        if not uint8(t):
                                            revert with 'NH{q', 17
                                        u = u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)])
                                        t = uint8(t) - 1
                                        continue 
                                    if sub_b89e73c1[uint8(t)] < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512 and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) - 1:
                                        revert with 'NH{q', 17
                                    if u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_9]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                                    poolInfo[idx].field_512 = block.timestamp
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                if sub_b89e73c1.length < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if u > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                    revert with 'NH{q', 17
                                if u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_9]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_9]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CreamRewardPool: caller is not the operator'
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
                    s = 2
                    while uint8(s) >= 1:
                        if uint8(uint8(s) - 1) >= 3:
                            revert with 'NH{q', 50
                        if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                            if not uint8(s):
                                revert with 'NH{q', 17
                            s = uint8(s) - 1
                            continue 
                        if uint8(s) < 1:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) - 1) >= 3:
                            revert with 'NH{q', 50
                        if uint8(s) >= 3:
                            revert with 'NH{q', 50
                        if poolInfo[idx].field_512 >= sub_b89e73c1[uint8(uint8(s) - 1)]:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22[uint8(s)] > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not mem[_13]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                        else:
                            if uint8(s) < 1:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) - 1) >= 3:
                                revert with 'NH{q', 50
                            if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)] and sub_bd11de22[uint8(s)] > -1 / block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)]:
                                revert with 'NH{q', 17
                            if uint8(s) == 1:
                                if sub_b89e73c1.length < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_13]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                            else:
                                if uint8(s) < 1:
                                    revert with 'NH{q', 17
                                u = (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)])
                                t = uint8(s) - 1
                                while uint8(t) >= 1:
                                    if uint8(uint8(t) - 1) >= 3:
                                        revert with 'NH{q', 50
                                    if uint8(t) >= 3:
                                        revert with 'NH{q', 50
                                    if poolInfo[idx].field_512 < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                        if uint8(t) < 1:
                                            revert with 'NH{q', 17
                                        if uint8(uint8(t) - 1) >= 3:
                                            revert with 'NH{q', 50
                                        if uint8(t) >= 3:
                                            revert with 'NH{q', 50
                                        if sub_b89e73c1[uint8(t)] < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                            revert with 'NH{q', 17
                                        if sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)] and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)]:
                                            revert with 'NH{q', 17
                                        if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)]) - 1:
                                            revert with 'NH{q', 17
                                        if not uint8(t):
                                            revert with 'NH{q', 17
                                        u = u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)])
                                        t = uint8(t) - 1
                                        continue 
                                    if sub_b89e73c1[uint8(t)] < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512 and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) - 1:
                                        revert with 'NH{q', 17
                                    if u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_13]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                                    poolInfo[idx].field_512 = block.timestamp
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                if sub_b89e73c1.length < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if u > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                    revert with 'NH{q', 17
                                if u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_13]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not mem[_13]:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
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

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CreamRewardPool: caller is not the operator'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 2
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'CreamRewardPool: existing pool?'
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
                        s = 2
                        while uint8(s) >= 1:
                            if uint8(uint8(s) - 1) >= 3:
                                revert with 'NH{q', 50
                            if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                                if not uint8(s):
                                    revert with 'NH{q', 17
                                s = uint8(s) - 1
                                continue 
                            if uint8(s) < 1:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) - 1) >= 3:
                                revert with 'NH{q', 50
                            if uint8(s) >= 3:
                                revert with 'NH{q', 50
                            if poolInfo[idx].field_512 >= sub_b89e73c1[uint8(uint8(s) - 1)]:
                                if block.timestamp < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22[uint8(s)] > -1 / block.timestamp - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)]):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not mem[_442]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                            else:
                                if uint8(s) < 1:
                                    revert with 'NH{q', 17
                                if uint8(uint8(s) - 1) >= 3:
                                    revert with 'NH{q', 50
                                if block.timestamp < sub_b89e73c1[uint8(uint8(s) - 1)]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)] and sub_bd11de22[uint8(s)] > -1 / block.timestamp - sub_b89e73c1[uint8(uint8(s) - 1)]:
                                    revert with 'NH{q', 17
                                if uint8(s) == 1:
                                    if sub_b89e73c1.length < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)]) + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_442]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)] * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                                else:
                                    if uint8(s) < 1:
                                        revert with 'NH{q', 17
                                    u = (block.timestamp * sub_bd11de22[uint8(s)]) - (sub_b89e73c1[uint8(uint8(s) - 1)] * sub_bd11de22[uint8(s)])
                                    t = uint8(s) - 1
                                    while uint8(t) >= 1:
                                        if uint8(uint8(t) - 1) >= 3:
                                            revert with 'NH{q', 50
                                        if uint8(t) >= 3:
                                            revert with 'NH{q', 50
                                        if poolInfo[idx].field_512 < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                            if uint8(t) < 1:
                                                revert with 'NH{q', 17
                                            if uint8(uint8(t) - 1) >= 3:
                                                revert with 'NH{q', 50
                                            if uint8(t) >= 3:
                                                revert with 'NH{q', 50
                                            if sub_b89e73c1[uint8(t)] < sub_b89e73c1[uint8(uint8(t) - 1)]:
                                                revert with 'NH{q', 17
                                            if sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)] and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - sub_b89e73c1[uint8(uint8(t) - 1)]:
                                                revert with 'NH{q', 17
                                            if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)]) - 1:
                                                revert with 'NH{q', 17
                                            if not uint8(t):
                                                revert with 'NH{q', 17
                                            u = u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (sub_b89e73c1[uint8(uint8(t) - 1)] * sub_bd11de22[uint8(t)])
                                            t = uint8(t) - 1
                                            continue 
                                        if sub_b89e73c1[uint8(t)] < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512 and sub_bd11de22[uint8(t)] > -1 / sub_b89e73c1[uint8(t)] - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if u > (-1 * sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) + (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) - 1:
                                            revert with 'NH{q', 17
                                        if u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)]) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)]):
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not mem[_442]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1[uint8(t)] * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                                        poolInfo[idx].field_512 = block.timestamp
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                    if sub_b89e73c1.length < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if sub_b89e73c1.length - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / sub_b89e73c1.length - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if u > (-1 * sub_b89e73c1.length * sub_bd11de22.length) + (poolInfo[idx].field_512 * sub_bd11de22.length) - 1:
                                        revert with 'NH{q', 17
                                    if u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / u + (sub_b89e73c1.length * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not mem[_442]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^18 * (u * poolInfo[idx].field_256) + (sub_b89e73c1.length * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
                            poolInfo[idx].field_512 = block.timestamp
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - poolInfo[idx].field_512 and sub_bd11de22.length > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_bd11de22.length) - (poolInfo[idx].field_512 * sub_bd11de22.length):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not mem[_442]:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_bd11de22.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bd11de22.length * poolInfo[idx].field_256) / totalAllocPoint / mem[_442]
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
