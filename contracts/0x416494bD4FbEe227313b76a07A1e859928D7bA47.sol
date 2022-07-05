contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - exit(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
uint256 stor0;
address rewardAddress;
address governanceAddress;
address pendingGovernanceAddress;
mapping of uint256 tokenPoolIds;
uint256 rewardRate;
uint256 totalRewardWeight;
array of struct poolRewardWeight;
mapping of struct stakeTotalDeposited;

function reward() payable {
    return rewardAddress
}

function tokenPoolIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenPoolIds[arg1]
}

function governance() payable {
    return governanceAddress
}

function getPoolRewardWeight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    return poolRewardWeight[arg1].field_512
}

function getPoolTotalDeposited(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    return poolRewardWeight[arg1].field_256
}

function rewardRate() payable {
    return rewardRate
}

function getStakeTotalDeposited(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return stakeTotalDeposited[address(arg1)][arg2].field_0
}

function totalRewardWeight() payable {
    return totalRewardWeight
}

function getPoolToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    return poolRewardWeight[arg1].field_0
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function poolCount() payable {
    return poolRewardWeight.length
}

function _fallback() payable {
    revert
}

function acceptGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: only pending governance'
    governanceAddress = pendingGovernanceAddress
    emit GovernanceUpdated(pendingGovernanceAddress);
}

function getPoolRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    if rewardRate and poolRewardWeight[arg1].field_512 > -1 / rewardRate:
        revert with 'NH{q', 17
    if not totalRewardWeight:
        revert with 'NH{q', 18
    return (rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight)
}

function setPendingGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingPools: pending governance address cannot be 0x0'
    pendingGovernanceAddress = arg1
    emit PendingGovernanceUpdated(arg1);
}

function createPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if tokenPoolIds[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: token already has a pool'
    poolRewardWeight.length++
    poolRewardWeight[poolRewardWeight.length].field_0 = arg1
    poolRewardWeight[poolRewardWeight.length].field_256 = 0
    poolRewardWeight[poolRewardWeight.length].field_512 = 0
    poolRewardWeight[poolRewardWeight.length].field_768 = 0
    poolRewardWeight[poolRewardWeight.length].field_1024 = block.timestamp
    if 1 > !poolRewardWeight.length:
        revert with 'NH{q', 17
    tokenPoolIds[address(arg1)] = poolRewardWeight.length + 1
    emit PoolCreated(poolRewardWeight.length, arg1);
    return poolRewardWeight.length
}

function setRewardRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'StakingPools: only governance'
    idx = 0
    while idx < poolRewardWeight.length:
        mem[0] = 7
        _27 = mem[64]
        mem[64] = mem[64] + 32
        mem[_27] = 0
        if not poolRewardWeight[idx].field_256:
            _28 = mem[64]
            mem[64] = mem[64] + 32
            mem[_28] = poolRewardWeight[idx].field_768
        else:
            if block.timestamp < poolRewardWeight[idx].field_1024:
                revert with 'NH{q', 17
            if not block.timestamp - poolRewardWeight[idx].field_1024:
                _30 = mem[64]
                mem[64] = mem[64] + 32
                mem[_30] = poolRewardWeight[idx].field_768
            else:
                if rewardRate and poolRewardWeight[idx].field_512 > -1 / rewardRate:
                    revert with 'NH{q', 17
                if not totalRewardWeight:
                    revert with 'NH{q', 18
                if rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[idx].field_1024 > -1 / rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight:
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight):
                    _32 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_32] = poolRewardWeight[idx].field_768
                else:
                    _33 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_33] = 0
                    if (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight):
                        revert with 'NH{q', 17
                    require (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight)
                    _35 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_35] = (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight)
                    _36 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_36] = 0
                    require poolRewardWeight[idx].field_256
                    _37 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_37] = (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256
                    _39 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_39] = poolRewardWeight[idx].field_768
                    _40 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_40] = 0
                    if poolRewardWeight[idx].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256):
                        revert with 'NH{q', 17
                    require poolRewardWeight[idx].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256) >= poolRewardWeight[idx].field_768
                    _43 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_43] = poolRewardWeight[idx].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256)
                    poolRewardWeight[idx].field_768 += (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256
        poolRewardWeight[idx].field_1024 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    rewardRate = arg1
    emit RewardRateUpdated(arg1);
}

function setRewardWeights(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if governanceAddress != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if arg1.length != poolRewardWeight.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: weights length mismatch'
    idx = 0
    while idx < poolRewardWeight.length:
        mem[0] = 7
        _25 = mem[64]
        mem[64] = mem[64] + 32
        mem[_25] = 0
        if not poolRewardWeight[idx].field_256:
            _27 = mem[64]
            mem[64] = mem[64] + 32
            mem[_27] = poolRewardWeight[idx].field_768
        else:
            if block.timestamp < poolRewardWeight[idx].field_1024:
                revert with 'NH{q', 17
            if not block.timestamp - poolRewardWeight[idx].field_1024:
                _29 = mem[64]
                mem[64] = mem[64] + 32
                mem[_29] = poolRewardWeight[idx].field_768
            else:
                if rewardRate and poolRewardWeight[idx].field_512 > -1 / rewardRate:
                    revert with 'NH{q', 17
                if not totalRewardWeight:
                    revert with 'NH{q', 18
                if rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[idx].field_1024 > -1 / rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight:
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight):
                    _33 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_33] = poolRewardWeight[idx].field_768
                else:
                    _34 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_34] = 0
                    if (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight):
                        revert with 'NH{q', 17
                    require (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight)
                    _36 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_36] = (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight)
                    _37 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_37] = 0
                    require poolRewardWeight[idx].field_256
                    _38 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_38] = (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256
                    _40 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_40] = poolRewardWeight[idx].field_768
                    _41 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_41] = 0
                    if poolRewardWeight[idx].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256):
                        revert with 'NH{q', 17
                    require poolRewardWeight[idx].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256) >= poolRewardWeight[idx].field_768
                    _44 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_44] = poolRewardWeight[idx].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256)
                    poolRewardWeight[idx].field_768 += (10^18 * block.timestamp * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[idx].field_1024 * rewardRate * poolRewardWeight[idx].field_512 / totalRewardWeight) / poolRewardWeight[idx].field_256
        poolRewardWeight[idx].field_1024 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < poolRewardWeight.length:
        mem[0] = 7
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if poolRewardWeight[idx].field_512 != cd[((32 * idx) + arg1 + 36)]:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if totalRewardWeight < poolRewardWeight[idx].field_512:
                revert with 'NH{q', 17
            if totalRewardWeight - poolRewardWeight[idx].field_512 > !cd[((32 * idx) + arg1 + 36)]:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            poolRewardWeight[idx].field_512 = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            emit PoolRewardWeightUpdated(cd[((32 * idx) + arg1 + 36)], idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getStakeTotalUnclaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    if not poolRewardWeight[arg2].field_256:
        if stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768:
            if poolRewardWeight[arg2].field_768 <= stakeTotalDeposited[address(arg1)][arg2].field_512:
                return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 < stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        require poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            if stakeTotalDeposited[address(arg1)][arg2].field_256 > !(0 / 10^18):
                revert with 'NH{q', 17
            return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 and stakeTotalDeposited[address(arg1)][arg2].field_0 > -1 / poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        require (poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / stakeTotalDeposited[address(arg1)][arg2].field_0 == poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512
        if stakeTotalDeposited[address(arg1)][arg2].field_256 > !((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18):
            revert with 'NH{q', 17
        return (stakeTotalDeposited[address(arg1)][arg2].field_256 + ((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18))
    if block.timestamp < poolRewardWeight[arg2].field_1024:
        revert with 'NH{q', 17
    if not block.timestamp - poolRewardWeight[arg2].field_1024:
        if stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768:
            if poolRewardWeight[arg2].field_768 <= stakeTotalDeposited[address(arg1)][arg2].field_512:
                return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 < stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        require poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            if stakeTotalDeposited[address(arg1)][arg2].field_256 > !(0 / 10^18):
                revert with 'NH{q', 17
            return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 and stakeTotalDeposited[address(arg1)][arg2].field_0 > -1 / poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        require (poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / stakeTotalDeposited[address(arg1)][arg2].field_0 == poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512
        if stakeTotalDeposited[address(arg1)][arg2].field_256 > !((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18):
            revert with 'NH{q', 17
        return (stakeTotalDeposited[address(arg1)][arg2].field_256 + ((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18))
    if rewardRate and poolRewardWeight[arg2].field_512 > -1 / rewardRate:
        revert with 'NH{q', 17
    if not totalRewardWeight:
        revert with 'NH{q', 18
    if rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[arg2].field_1024 > -1 / rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight:
        revert with 'NH{q', 17
    if not (block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight):
        if stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768:
            if poolRewardWeight[arg2].field_768 <= stakeTotalDeposited[address(arg1)][arg2].field_512:
                return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 < stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        require poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            if stakeTotalDeposited[address(arg1)][arg2].field_256 > !(0 / 10^18):
                revert with 'NH{q', 17
            return stakeTotalDeposited[address(arg1)][arg2].field_256
        if poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512 and stakeTotalDeposited[address(arg1)][arg2].field_0 > -1 / poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512:
            revert with 'NH{q', 17
        if not stakeTotalDeposited[address(arg1)][arg2].field_0:
            revert with 'NH{q', 18
        require (poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / stakeTotalDeposited[address(arg1)][arg2].field_0 == poolRewardWeight[arg2].field_768 - stakeTotalDeposited[address(arg1)][arg2].field_512
        if stakeTotalDeposited[address(arg1)][arg2].field_256 > !((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18):
            revert with 'NH{q', 17
        return (stakeTotalDeposited[address(arg1)][arg2].field_256 + ((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18))
    if (block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight):
        revert with 'NH{q', 17
    require (10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight)
    require poolRewardWeight[arg2].field_256
    if poolRewardWeight[arg2].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256):
        revert with 'NH{q', 17
    require poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) >= poolRewardWeight[arg2].field_768
    if stakeTotalDeposited[address(arg1)][arg2].field_512 <= poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256):
        if poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) <= stakeTotalDeposited[address(arg1)][arg2].field_512:
            return stakeTotalDeposited[address(arg1)][arg2].field_256
    if poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) < stakeTotalDeposited[address(arg1)][arg2].field_512:
        revert with 'NH{q', 17
    require -stakeTotalDeposited[address(arg1)][arg2].field_512 <= 0
    if not stakeTotalDeposited[address(arg1)][arg2].field_0:
        if stakeTotalDeposited[address(arg1)][arg2].field_256 > !(0 / 10^18):
            revert with 'NH{q', 17
        return stakeTotalDeposited[address(arg1)][arg2].field_256
    if poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) - stakeTotalDeposited[address(arg1)][arg2].field_512 and stakeTotalDeposited[address(arg1)][arg2].field_0 > -1 / poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) - stakeTotalDeposited[address(arg1)][arg2].field_512:
        revert with 'NH{q', 17
    if not stakeTotalDeposited[address(arg1)][arg2].field_0:
        revert with 'NH{q', 18
    require (poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / stakeTotalDeposited[address(arg1)][arg2].field_0 == poolRewardWeight[arg2].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256) - stakeTotalDeposited[address(arg1)][arg2].field_512
    if stakeTotalDeposited[address(arg1)][arg2].field_256 > !((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18):
        revert with 'NH{q', 17
    return (stakeTotalDeposited[address(arg1)][arg2].field_256 + ((poolRewardWeight[arg2].field_768 * stakeTotalDeposited[address(arg1)][arg2].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg2].field_1024 * rewardRate * poolRewardWeight[arg2].field_512 / totalRewardWeight) / poolRewardWeight[arg2].field_256 * stakeTotalDeposited[address(arg1)][arg2].field_0) - (stakeTotalDeposited[address(arg1)][arg2].field_512 * stakeTotalDeposited[address(arg1)][arg2].field_0) / 10^18))
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 >= poolRewardWeight.length:
        revert with 'NH{q', 50
    if not poolRewardWeight[arg1].field_256:
        poolRewardWeight[arg1].field_1024 = block.timestamp
        if stakeTotalDeposited[msg.sender][arg1].field_512 > poolRewardWeight[arg1].field_768:
            if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                revert with 'NH{q', 17
            require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                    revert with 'NH{q', 17
                stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
            else:
                if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                    revert with 'NH{q', 17
                if not stakeTotalDeposited[msg.sender][arg1].field_0:
                    revert with 'NH{q', 18
                require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                    revert with 'NH{q', 17
                stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
        else:
            if poolRewardWeight[arg1].field_768 > stakeTotalDeposited[msg.sender][arg1].field_512:
                if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                    revert with 'NH{q', 17
                require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                if not stakeTotalDeposited[msg.sender][arg1].field_0:
                    if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                        revert with 'NH{q', 17
                    stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                else:
                    if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                        revert with 'NH{q', 17
                    if not stakeTotalDeposited[msg.sender][arg1].field_0:
                        revert with 'NH{q', 18
                    require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                    if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                        revert with 'NH{q', 17
                    stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
    else:
        if block.timestamp < poolRewardWeight[arg1].field_1024:
            revert with 'NH{q', 17
        if block.timestamp - poolRewardWeight[arg1].field_1024:
            if rewardRate and poolRewardWeight[arg1].field_512 > -1 / rewardRate:
                revert with 'NH{q', 17
            if not totalRewardWeight:
                revert with 'NH{q', 18
            if rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[arg1].field_1024 > -1 / rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                if (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                    revert with 'NH{q', 17
                require (10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight)
                require poolRewardWeight[arg1].field_256
                if poolRewardWeight[arg1].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256):
                    revert with 'NH{q', 17
                require poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) >= poolRewardWeight[arg1].field_768
                poolRewardWeight[arg1].field_768 += (10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256
        poolRewardWeight[arg1].field_1024 = block.timestamp
        if not poolRewardWeight[arg1].field_256:
            if stakeTotalDeposited[msg.sender][arg1].field_512 > poolRewardWeight[arg1].field_768:
                if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                    revert with 'NH{q', 17
                require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                if not stakeTotalDeposited[msg.sender][arg1].field_0:
                    if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                        revert with 'NH{q', 17
                    stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                else:
                    if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                        revert with 'NH{q', 17
                    if not stakeTotalDeposited[msg.sender][arg1].field_0:
                        revert with 'NH{q', 18
                    require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                    if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                        revert with 'NH{q', 17
                    stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
            else:
                if poolRewardWeight[arg1].field_768 > stakeTotalDeposited[msg.sender][arg1].field_512:
                    if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                        revert with 'NH{q', 17
                    require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                    if not stakeTotalDeposited[msg.sender][arg1].field_0:
                        if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                            revert with 'NH{q', 17
                        stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                    else:
                        if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                            revert with 'NH{q', 17
                        if not stakeTotalDeposited[msg.sender][arg1].field_0:
                            revert with 'NH{q', 18
                        require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                        if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                            revert with 'NH{q', 17
                        stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
        else:
            if block.timestamp < poolRewardWeight[arg1].field_1024:
                revert with 'NH{q', 17
            if not block.timestamp - poolRewardWeight[arg1].field_1024:
                if stakeTotalDeposited[msg.sender][arg1].field_512 > poolRewardWeight[arg1].field_768:
                    if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                        revert with 'NH{q', 17
                    require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                    if not stakeTotalDeposited[msg.sender][arg1].field_0:
                        if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                            revert with 'NH{q', 17
                        stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                    else:
                        if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                            revert with 'NH{q', 17
                        if not stakeTotalDeposited[msg.sender][arg1].field_0:
                            revert with 'NH{q', 18
                        require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                        if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                            revert with 'NH{q', 17
                        stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
                else:
                    if poolRewardWeight[arg1].field_768 > stakeTotalDeposited[msg.sender][arg1].field_512:
                        if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                            revert with 'NH{q', 17
                        require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                        if not stakeTotalDeposited[msg.sender][arg1].field_0:
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                        else:
                            if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                                revert with 'NH{q', 17
                            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                revert with 'NH{q', 18
                            require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
            else:
                if rewardRate and poolRewardWeight[arg1].field_512 > -1 / rewardRate:
                    revert with 'NH{q', 17
                if not totalRewardWeight:
                    revert with 'NH{q', 18
                if rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[arg1].field_1024 > -1 / rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight:
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                    if stakeTotalDeposited[msg.sender][arg1].field_512 > poolRewardWeight[arg1].field_768:
                        if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                            revert with 'NH{q', 17
                        require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                        if not stakeTotalDeposited[msg.sender][arg1].field_0:
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                        else:
                            if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                                revert with 'NH{q', 17
                            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                revert with 'NH{q', 18
                            require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
                    else:
                        if poolRewardWeight[arg1].field_768 > stakeTotalDeposited[msg.sender][arg1].field_512:
                            if poolRewardWeight[arg1].field_768 < stakeTotalDeposited[msg.sender][arg1].field_512:
                                revert with 'NH{q', 17
                            require poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 <= poolRewardWeight[arg1].field_768
                            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                                    revert with 'NH{q', 17
                                stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                            else:
                                if poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512:
                                    revert with 'NH{q', 17
                                if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                    revert with 'NH{q', 18
                                require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 - stakeTotalDeposited[msg.sender][arg1].field_512
                                if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                                    revert with 'NH{q', 17
                                stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
                else:
                    if (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                        revert with 'NH{q', 17
                    require (10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight)
                    require poolRewardWeight[arg1].field_256
                    if poolRewardWeight[arg1].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256):
                        revert with 'NH{q', 17
                    require poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) >= poolRewardWeight[arg1].field_768
                    if stakeTotalDeposited[msg.sender][arg1].field_512 > poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256):
                        if poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) < stakeTotalDeposited[msg.sender][arg1].field_512:
                            revert with 'NH{q', 17
                        require -stakeTotalDeposited[msg.sender][arg1].field_512 <= 0
                        if not stakeTotalDeposited[msg.sender][arg1].field_0:
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                        else:
                            if poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512:
                                revert with 'NH{q', 17
                            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                revert with 'NH{q', 18
                            require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512
                            if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                                revert with 'NH{q', 17
                            stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
                    else:
                        if poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) > stakeTotalDeposited[msg.sender][arg1].field_512:
                            if poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) < stakeTotalDeposited[msg.sender][arg1].field_512:
                                revert with 'NH{q', 17
                            require -stakeTotalDeposited[msg.sender][arg1].field_512 <= 0
                            if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                if stakeTotalDeposited[msg.sender][arg1].field_256 > !(0 / 10^18):
                                    revert with 'NH{q', 17
                                stakeTotalDeposited[msg.sender][arg1].field_256 += 0 / 10^18
                            else:
                                if poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512 and stakeTotalDeposited[msg.sender][arg1].field_0 > -1 / poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512:
                                    revert with 'NH{q', 17
                                if not stakeTotalDeposited[msg.sender][arg1].field_0:
                                    revert with 'NH{q', 18
                                require (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / stakeTotalDeposited[msg.sender][arg1].field_0 == poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) - stakeTotalDeposited[msg.sender][arg1].field_512
                                if stakeTotalDeposited[msg.sender][arg1].field_256 > !((poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18):
                                    revert with 'NH{q', 17
                                stakeTotalDeposited[msg.sender][arg1].field_256 += (poolRewardWeight[arg1].field_768 * stakeTotalDeposited[msg.sender][arg1].field_0) + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256 * stakeTotalDeposited[msg.sender][arg1].field_0) - (stakeTotalDeposited[msg.sender][arg1].field_512 * stakeTotalDeposited[msg.sender][arg1].field_0) / 10^18
    if not poolRewardWeight[arg1].field_256:
        stakeTotalDeposited[msg.sender][arg1].field_512 = poolRewardWeight[arg1].field_768
    else:
        if block.timestamp < poolRewardWeight[arg1].field_1024:
            revert with 'NH{q', 17
        if not block.timestamp - poolRewardWeight[arg1].field_1024:
            stakeTotalDeposited[msg.sender][arg1].field_512 = poolRewardWeight[arg1].field_768
        else:
            if rewardRate and poolRewardWeight[arg1].field_512 > -1 / rewardRate:
                revert with 'NH{q', 17
            if not totalRewardWeight:
                revert with 'NH{q', 18
            if rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight and block.timestamp - poolRewardWeight[arg1].field_1024 > -1 / rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight:
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                stakeTotalDeposited[msg.sender][arg1].field_512 = poolRewardWeight[arg1].field_768
            else:
                if (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) and 10^18 > -1 / (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight):
                    revert with 'NH{q', 17
                require (10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / 10^18 == (block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight)
                require poolRewardWeight[arg1].field_256
                if poolRewardWeight[arg1].field_768 > !((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256):
                    revert with 'NH{q', 17
                require poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256) >= poolRewardWeight[arg1].field_768
                stakeTotalDeposited[msg.sender][arg1].field_512 = poolRewardWeight[arg1].field_768 + ((10^18 * block.timestamp * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) - (10^18 * poolRewardWeight[arg1].field_1024 * rewardRate * poolRewardWeight[arg1].field_512 / totalRewardWeight) / poolRewardWeight[arg1].field_256)
    stakeTotalDeposited[msg.sender][arg1].field_256 = 0
    require ext_code.size(rewardAddress)
    call rewardAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, stakeTotalDeposited[msg.sender][arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensClaimed(stakeTotalDeposited[msg.sender][arg1].field_256, msg.sender, arg1);
    stor0 = 1
}



}
